package com.ezone.dao;


import java.util.List;
import java.util.regex.Pattern;

import com.ezone.constants.Constants;
import com.ezone.pojo.Product;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;


public class MobilesDAOImpl implements MobilesDAO {
        
        
        private DB db;
        String dbName = null;
        DBCollection collection = null;
        EzoneDAO ezoneDAO = null;
        
        public MobilesDAOImpl(String collectionName){
                this.dbName = collectionName;
                this.ezoneDAO =  new EzoneDAO(collectionName);
        //      ezoneDAO.initializeMongodb();
                //collection =  ezoneDAO.collection;
        }

        public Product getProductById(String id) {
                        BasicDBObject query = new BasicDBObject();
                        query.put(Constants.PRODUCT_ID, id);
                        Product product = ezoneDAO.findOne(query);
                        return product;
        }

        public List<Product> getAllProductInStockItems() {
                BasicDBObject query = new BasicDBObject();
                query.put(Constants.IN_STOCK, true);
                query.put(Constants.IN_STOCK, false);
                List<Product> productList = ezoneDAO.find(query);
                return productList;
        }
        
        
        public List<Product> getProductItemsByPagination(Integer minSize,Integer maxSize){
                BasicDBObject query = new BasicDBObject();
                query.put(Constants.IN_STOCK, true);
                List<Product> productList = ezoneDAO.findByPagination(query, minSize, maxSize);
                return productList;
        }

        public List<Product>  getProductsByTitle(String title) {
                BasicDBObject query = new BasicDBObject();
                query.put(Constants.TITLE, Pattern.compile(title,Pattern.CASE_INSENSITIVE));
                List<Product> productList =  ezoneDAO.find(query);
                return productList;
        }
        
        public List<String> getProductBrandNames(){
                List<String> productList =  ezoneDAO.distinct(Constants.PRODUCT_BRAND);
                return productList;
        }
        
        public List<Product> getProductsByBrandNames(String brandName){
                BasicDBObject query = new BasicDBObject();
                query.put(Constants.IN_STOCK, true);
                query.put(Constants.PRODUCT_BRAND, Pattern.compile(brandName,Pattern.CASE_INSENSITIVE));
                List<Product> productList = ezoneDAO.find(query);
                return productList;
        }
        

        public List<Product> getProductsByCategoryName(String categoryName,Integer minSize,Integer maxSize){
                List<Product> productList = null;
                if(categoryName != null){
                        BasicDBObject query = new BasicDBObject();
                        query.put(Constants.IN_STOCK, false);
                        query.put(Constants.CATEGORY_PATH, Pattern.compile(categoryName,Pattern.CASE_INSENSITIVE));
                        productList = ezoneDAO.findByPagination(query, minSize, maxSize);
                }
                return productList;
        }
        
        public List<Product> getProductsByCategoryNameAndPaginationSize(String categoryId,Integer minSize,Integer maxSize){
            List<Product> productList = null;
            if(categoryId != null){
                    BasicDBObject query = new BasicDBObject();
                    query.put(Constants.IN_STOCK, false);
                    query.put(Constants.CATEGORY_PATH, Pattern.compile(categoryId,Pattern.CASE_INSENSITIVE));
                    productList = ezoneDAO.findByPagination(query, minSize, maxSize);
            }
            return productList;
    }
        
	public void saveSearchListItem(DBObject document) {
		EzoneDAO ezoneDAO = new EzoneDAO("search");
		ezoneDAO.collection.save(document);
		ezoneDAO = null;
	}
	
	public String searchProductByQueryString(String queryString){
		  BasicDBObject query = new BasicDBObject();
		  StringBuffer sb =  new StringBuffer();
         // query.put(Constants.IN_STOCK, true);
          query.put("title", Pattern.compile(queryString,Pattern.CASE_INSENSITIVE));
       //   query.put("_id",-1);
        DBCursor cursor = ezoneDAO.db.getCollection("search").find(query);//.skip(25000);
        while(cursor.hasNext()){
                DBObject next = cursor.next();
                String json = next.toString();
                sb.append(json);
                sb.append(",");
        }
     String s1 =   sb.substring(0, sb.length()-1);
     String s2 = "{ \""+"dataArraylist"+"\""   +":[" + s1 + "]}";
     //System.out.println("{ \""+"dataArraylist"+"\""   +":[" + s1 + "]}");
     return s2;
}

        public EzoneDAO getEzoneDAO() {
                return ezoneDAO;
        }

        public void setEzoneDAO(EzoneDAO ezoneDAO) {
                this.ezoneDAO = ezoneDAO;
        }
        
        
        
        

}