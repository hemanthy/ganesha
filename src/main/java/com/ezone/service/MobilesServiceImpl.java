package com.ezone.service;


import java.util.List;

import org.springframework.stereotype.Service;

import com.ezone.dao.MobilesDAO;
import com.ezone.dao.MobilesDAOImpl;
import com.ezone.pojo.Product;

public class MobilesServiceImpl implements MobilesService {
        
        MobilesDAOImpl mobilesDao = null;
        public String category = null;
        public MobilesServiceImpl(){
                mobilesDao = new MobilesDAOImpl("mobiles");
        }


    private MobilesDAO mobilesDAO;

        public void setMobilesDAO(MobilesDAO mobilesDAO) {
                this.mobilesDAO = mobilesDAO;
        }

        public List<Product> geMobilesProductItems() {
                return mobilesDao.geMobilesProductItems();
        }
        
        public List<String> getProductBrandNames(){
                return mobilesDao.getProductBrandNames();
        }
        
        public List<Product> getProductsByBrandNames(String brandName){
                return mobilesDao.getProductsByBrandNames(brandName);
        }

        public String getCategory() {
                return category;
        }
        
        public List<Product> getProductsByCategoryName(String categoryId){
                return  mobilesDao.getProductsByCategoryName(categoryId);
        }

        public void setCategory(String category) {
                if(category!=null){
                        if(category.equals("cases-and-covers") || category.equals("mobile-charges") ||
                           category.equals("headphones") || category.equals("memory-cards") ||
                           category.equals("screen-guards") || category.equals("cables") ||
                           category.equals("screen-protectors")){
                                category = "mobile_accessories";
                        }else if (category.equals("tablets")){
                                category = "tablets";
                        }else if (category.equals("computers-accessories")){
                                category = "computer_storage";
                        }else if (category.equals("moblies")){
                                category = "moblies";
                        }
                //      category = category.replaceAll("computers-accessories", "computer_storage").
                //                      replaceAll("-", "_").toLowerCase();
                        this.category = category;
                        mobilesDao = new MobilesDAOImpl(category);
                }
        }

		public String searchProductByQueryString(String queryString) {
			return mobilesDao.searchProductByQueryString(queryString);	
		}

        
}