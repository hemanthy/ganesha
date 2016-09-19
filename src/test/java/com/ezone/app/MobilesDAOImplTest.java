package com.ezone.app;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.ezone.dao.MobilesDAOImpl;
import com.ezone.pojo.Product;

import junit.framework.TestCase;

public class MobilesDAOImplTest /*extends TestCase*/ {
        
        public MobilesDAOImpl mobilesDAOImpl = null;

        public MobilesDAOImplTest(){
                mobilesDAOImpl =  new MobilesDAOImpl("mobile_accessories");
        }
        
        /*public void testGetAllProductInStockItems(){
                List<String> productsBrandNames = mobilesDAOImpl.getProductBrandNames();
                for (String product : productsBrandNames) {
                        System.out.println(product);
                }
        }
        
        public void testGetAllProductsByCategoryId(){
                List<Product> productList = mobilesDAOImpl.getProductsByCategoryName("20201");
                for (Product prod : productList) {
                        //System.out.println(prod.getProductBaseInfoV1().getProductId());
                        System.out.println(prod.getProductBaseInfoV1().getCategoryPath());
                }
        }
        
        public void testGetAllProductInStockItems1(){
        //      HashSet<String> hashSet = new HashSet<String>();
                Set<String> hashSet = new HashSet<String>();
                List<Product> allProductInStockItems = mobilesDAOImpl.getAllProductInStockItems();
                int count = 0;
                
                for (Product product : allProductInStockItems) {
                        if(product!=null && product.getProductBaseInfoV1()!=null){
                                hashSet.add(product.getProductBaseInfoV1().getCategoryPath());
                        }
                }
                for (String catId : hashSet) {
                        System.out.println(catId);
                }
                
        //      System.out.println(allProductInStockItems.size());
                System.out.println(hashSet);
                
                for (String set : hashSet) {
                        System.out.println(set);
                }
                
        }
        
        public void testGetProductsByTitle(){
                Product productsByTitle = mobilesDAOImpl.getProductById("MOBE8VY8ZW7DZBUG");
                System.out.println(productsByTitle.getProductBaseInfoV1().getImageUrls().get_800x800());
        }
        
        public void testGetProducts(){
                List<Product> productList = mobilesDAOImpl.getAllProductInStockItems();
                for (Product prod : productList) {
                        System.out.println(prod.getProductBaseInfoV1().getProductId());
                }
                
                //System.out.println(productList.size());
                }*/
        
        
        public static void main(String[] args) {
        	MobilesDAOImpl 	 mobilesDAOImpl =  new MobilesDAOImpl("mobile_accessories");
        	mobilesDAOImpl.searchProductByQueryString("phone");
		}
        
        /*public void testSearchProductByQueryString(){
        	mobilesDAOImpl.searchProductByQueryString("Car");
        }*/
        
        
}