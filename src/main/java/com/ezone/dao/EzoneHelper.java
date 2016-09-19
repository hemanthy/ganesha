package com.ezone.dao;


import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.json.JSONArray;
import org.json.JSONObject;

import com.ezone.pojo.Category;
import com.ezone.pojo.Item;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.JsonArray;

public class EzoneHelper {
        
        EzoneHelper(){
                
        }
        
        public static String jsonPath(String path,String jsonData){
                
                 JSONObject obj = new JSONObject(jsonData);
                 
                 String[] pathArray = path.split("\\.");
                 
                 for(int i=0;i<pathArray.length;i++){
                         if(i==(pathArray.length-1)){
                                 if(obj.get(pathArray[i])!=null){
                                        String value = obj.get(pathArray[i]).toString();
                                         return value;
                                 }
                         }else{
                                 obj = obj.getJSONObject(pathArray[i]);
                         }
                 }
                 
                return null;
        }
        
        public static Item getSubCategory(String path){
                
                Item item = new Item();
                
                path = path.replaceAll("/", ".");
                
                String jsonConfigData = readFile();
                jsonConfigData = jsonPath(path, jsonConfigData);
                 JSONObject obj = new JSONObject(jsonConfigData);
                 ArrayList<Category> categoryList = new ArrayList<Category>();
                 
                 
                 Set<String> keys = obj.keySet();
                 if(keys.contains("nodeId") || keys.contains("brandNames") || keys.contains("img") || 
                                 keys.contains("url")){
                                Category category = constructCategoryObj(obj);
                                String[] name =  path.split("\\.");
                                String categoryName = name[name.length - 1];
                                 if(obj.has("title")){
                                         String title = (String) obj.get("title");
                                         item.setTitle(title);
                                 }
                                category.setName(categoryName);
                                categoryList.add(category);
                 }else{
                         for (String key : keys) {
                                 if(!key.equals("othersinfo")){
                                         JSONObject object = (JSONObject) obj.get(key);
                                         Category category = constructCategoryObj(object);
                                         category.setName(key);
                                         categoryList.add(category);
                                         System.out.println(key);
                                 }
                        }
                 }
                 if(obj.has("othersinfo")){
                         JSONObject othersInfo = (JSONObject) obj.get("othersinfo");
                         String title = (String) othersInfo.get("title");
                         item.setTitle(title);
                 }else{
                         
                 }
                 
                 item.setSubCategoryList(categoryList);          
                /* if(obj.has("brandNames")){
                         JSONArray object = (JSONArray) obj.get("brandNames");
                         ArrayList<String> brandNamesList = convertJsonArrayToArraylist(object);
                         item.setBrandNames(brandNamesList);
                 }*/
                 /*if(obj.has("nodeId")){
                         return null;
                 }*/
                 System.out.println(obj.length());
                 return item;
        }

        private static Category constructCategoryObj(JSONObject obj) {
                Category category = new Category();
                if(obj.has("nodeId")){
                        String nodeId = (String) obj.get("nodeId");
                        category.setNodeId(nodeId);
                }
                if(obj.has("img")){
                        String img = (String) obj.get("img");
                        category.setImg(img);
                }
                if(obj.has("url")){
                        String url = (String) obj.get("url");
                        category.setUrl(url);
                }
                if(obj.has("title")){
                        String title = (String) obj.get("title");
                        category.setTitle(title);
                }
                if(obj.has("brandNames")){
                        JSONArray jsonArray = (JSONArray) obj.get("brandNames");
                        ArrayList<String> brandnameList = convertJsonArrayToArraylist(jsonArray);
                        category.setBrandNames(brandnameList);
                }
                 
                return category;
        }
        

        private static ArrayList<String> convertJsonArrayToArraylist(JSONArray jsonArray) {
                ArrayList<String> list = new ArrayList<String>();
                if (jsonArray != null) {
                    int len = jsonArray.length();
                    for (int i=0;i<len;i++){ 
                     list.add(jsonArray.get(i).toString());
                    } 
                 }
                return list;
        }
        
public static Object unmarshall(String json,Class<?> clazz){
        
                ObjectMapper mapper = new ObjectMapper();
                mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
                
                Object obj = null;

                try {

                        // Convert JSON string from file to Object
                        /*File file = new File("D:\\Hemanth\\Affiliate\\flipkart\\produt_json\\mobile.json");
                        
                        FileReader fileReader = new FileReader(file);
                        BufferedReader bufferedReader = new BufferedReader(fileReader);
                        String         line = null;
                    StringBuilder  stringBuilder = new StringBuilder();
                        while( bufferedReader.ready() && (   (line = bufferedReader.readLine() )) != null ) {
                            stringBuilder.append( line );
                        }*/

                  //      System.out.println(json.toString());
                        obj = mapper.readValue(json.toString(), clazz);
                //      System.out.println(obj);
                        
                        

                        // Convert JSON string to Object
        ///             String jsonInString = "{\"firstName\":\"mkyong\",\"id\":7500}";
        //              Employee staff1 = mapper.readValue(jsonInString, Employee.class);
        //              System.out.println(staff1);
                        //Pretty print
        //              String prettyStaff1 = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(staff1);
        //              System.out.println(prettyStaff1);
                        
                } catch (JsonGenerationException e) {
                        e.printStackTrace();
                } catch (JsonMappingException e) {
                        e.printStackTrace();
                } catch (IOException e) {
                        e.printStackTrace();
                }catch (Exception e) {
                        e.printStackTrace();
                }
        
                return obj;
        }

        public static String readFile(){
        
        //Get file from resources folder
                
                ClassLoader classLoader = new EzoneHelper().getClass().getClassLoader();
                //ClassLoader classLoader = EzoneHelper.class.getClass().getClassLoader();
                String file = classLoader.getResource("categoryUrl.json").getFile();
          
    BufferedReader br;
        try {
                br = new BufferedReader(new FileReader(file));
                try {
                StringBuilder sb = new StringBuilder();
                String line = br.readLine();

                while (line != null) {
                    sb.append(line);
                    sb.append("\n");
                    line = br.readLine();
                }
                return sb.toString();
            } finally {
                br.close();
            }
        } catch (Exception e) {
                e.printStackTrace();
        }
        return file;
    
}
        
        public static void main(String[] args) {
                Item subCategory = getSubCategory("electronics.mobile-accessories");
                System.out.println(subCategory.getBrandNames());
                System.out.println(subCategory.getSubCategoryList());
        }

}