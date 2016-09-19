package com.ezone.pojo;


import java.util.List;

public class Category {
        
        private String title;
        
        private String name;
        
        private String img;
        
        private String nodeId;
        
        private String url;
        
        private List<String> brandNames;
        
        public String getTitle() {
                return title;
        }

        public void setTitle(String title) {
                this.title = title;
        }

        public List<String> getBrandNames() {
                return brandNames;
        }

        public void setBrandNames(List<String> brandNames) {
                this.brandNames = brandNames;
        }

        public String getName() {
                return name;
        }

        public void setName(String name) {
                this.name = name;
        }

        public String getImg() {
                return img;
        }

        public void setImg(String img) {
                this.img = img;
        }

        public String getNodeId() {
                return nodeId;
        }

        public void setNodeId(String nodeId) {
                this.nodeId = nodeId;
        }

        public String getUrl() {
                return url;
        }

        public void setUrl(String url) {
                this.url = url;
        }
        
}