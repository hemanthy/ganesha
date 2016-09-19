package com.ezone.dao;


import java.util.List;

import com.ezone.pojo.Product;
import com.mongodb.DBCursor;
import com.mongodb.WriteResult;



public interface MobilesDAO {

        
        public Product getProductById(String id);
        
        public List<Product> getAllProductInStockItems();
        
        public List<Product> getProductsByTitle(String title);
        
        public List<Product> geMobilesProductItems();
        
        
        
}
 