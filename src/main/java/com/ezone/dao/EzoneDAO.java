package com.ezone.dao;


import java.util.ArrayList;
import java.util.List;

import com.ezone.pojo.Product;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;

public class EzoneDAO {
        
        public DB db;
        String tableName = null;
       public DBCollection collection = null;
        
        public EzoneDAO(String dbName) {
                this.tableName = dbName;
                initializeMongodb();
        }
        
        public boolean initializeMongodb(){
                MongoClient mongo = new MongoClient("localhost", 27017);
                db = mongo.getDB("testdb");
                collection = db.getCollection(tableName); 
                return db!=null;
        }

        public Product findOne(BasicDBObject query){
                DBObject dbObject = collection.findOne(query);
                Product product = (Product) EzoneHelper.unmarshall(dbObject.toString(), Product.class);
                return product;
        }
        
        public List<Product> find(BasicDBObject query){
                DBCursor cursor = collection.find(query).limit(200);//.skip(25000);
                List<Product> productList = new ArrayList<Product>();
                while(cursor.hasNext()){
                        DBObject next = cursor.next();
                        Object unmarshall = EzoneHelper.unmarshall(next.toString(), Product.class);
                        if(unmarshall!=null){
                                Product product = (Product) unmarshall;
                                productList.add(product);
                        }
                }
                return productList;
        }
        
        public List<String> distinct(String query){
                List<String> productList = collection.distinct(query);
                return productList;
        }
}
 