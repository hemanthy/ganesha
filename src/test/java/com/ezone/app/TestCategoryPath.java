package com.ezone.app;
import java.io.IOException;

public class TestCategoryPath {

  public static void main(String[] args) throws IOException {
        TestCategoryPath obj = new TestCategoryPath();
        System.out.println(obj.getFile("categoryUrl.json"));            
  }

  private String getFile(String fileName) throws IOException {

        StringBuilder result = new StringBuilder("");
        

        //Get file from resources folder
        ClassLoader classLoader = getClass().getClassLoader();
        
        String file = (String) classLoader.getResource(fileName) .getFile();
        

//      System.out.println(EzoneHelper.getSubCategory("electronics.mobile-accessories", jsonData));
        return result.toString();

  }


}