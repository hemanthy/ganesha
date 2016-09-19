package com.ezone.pojo;


import java.util.List;

public class Item {

        
        private String category;
        
        private String title;
        
        private List<String> brandNames;
        
        private List<Category> subCategoryList;
        
        public String getTitle() {
                return title;
        }

        public void setTitle(String title) {
                this.title = title;
        }

        public String getCategory() {
                return category;
        }

        public void setCategory(String category) {
                this.category = category;
        }

        public List<String> getBrandNames() {
                return brandNames;
        }

        public void setBrandNames(List<String> brandNames) {
                this.brandNames = brandNames;
        }

        public List<Category> getSubCategoryList() {
                return subCategoryList;
        }

        public void setSubCategoryList(List<Category> subCategoryList) {
                this.subCategoryList = subCategoryList;
        }

}