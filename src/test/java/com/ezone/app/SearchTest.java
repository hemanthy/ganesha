package com.ezone.app;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ezone.dao.EzoneHelper;
import com.ezone.dao.MobilesDAOImpl;
import com.ezone.pojo.Product;
import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;

public class SearchTest {
	
	static List<String> collections = new ArrayList<String>();
	
	 public static MobilesDAOImpl mobilesDAOImpl = null;
	 
	static Map<String, Integer> map = new HashMap<String, Integer>();

     public SearchTest(){
             collections.add("mobile_accessories");
             collections.add("mobiles");
             collections.add("tablets");
             collections.add("computer_storage");
             collections.add("fragrances");
             
             
             map.put("mobile_accessories", 100);
             map.put("mobiles", 101);
             map.put("tablets", 102);
             map.put("computer_storage", 103);
             map.put("fragrances", 104);
     }
	
	public static void main(String[] args) {
		
		SearchTest obj = new SearchTest();
		
		mobilesDAOImpl = new MobilesDAOImpl("search");
		DBCollection collecton1 = mobilesDAOImpl.getEzoneDAO().collection;
		collecton1.drop();
		for (String collection : collections) {
			mobilesDAOImpl = new MobilesDAOImpl(collection);
			DBCollection collecton = mobilesDAOImpl.getEzoneDAO().collection;
			DBCursor cursor = collecton.find();
			while (cursor.hasNext()) {
				DBObject next = cursor.next();
				Object unmarshall = EzoneHelper.unmarshall(next.toString(), Product.class);
				if (unmarshall != null) {
					Product product = (Product) unmarshall;
					DBObject document = new BasicDBObject();
					document.put("_id", product.get_id());
					document.put("title", product.getProductBaseInfoV1().getTitle());
					document.put("value", product.getProductBaseInfoV1().getTitle());
					// document.put("productId",
					// product.getProductBaseInfoV1().getProductId());
					document.put("catId", map.get(collection));
					mobilesDAOImpl.saveSearchListItem(document);
				}
			}
		}
		
		System.out.println("done");
		
		
	}

}
