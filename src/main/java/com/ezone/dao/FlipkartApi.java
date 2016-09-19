package com.ezone.dao;

import java.util.ResourceBundle;

public class FlipkartApi {
        
        String affiliateId = null;
        String affiliateToken = null;
        
        ResourceBundle bundle = ResourceBundle.getBundle("config");
        
        
        public FlipkartApi(){
                
                affiliateId =   bundle.getString("flipkartaffiliateId");
                
                affiliateToken = bundle.getString("flipkartaffiliateToken");
                

        }

}
 