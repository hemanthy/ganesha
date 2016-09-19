package com.ezone.dao;


import com.ezone.constants.Constants;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;

public abstract class Mongodb {
        
        public DB db = null;
        
        public boolean initializeMongodb(){
                MongoClient mongo = new MongoClient("localhost", 27017);
                db = mongo.getDB("testdb");
                return db!=null;
        }

}
 