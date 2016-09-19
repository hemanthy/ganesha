package com.ezone.pojo;


import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Product
{
        private Integer _id;
        
    private ProductShippingInfoV1 productShippingInfoV1;

    private ProductBaseInfoV1 productBaseInfoV1;

    private CategorySpecificInfoV1 categorySpecificInfoV1;

    private String categoryId;
    
    public String getCategoryId() {
                return categoryId;
        }

        public void setCategoryId(String categoryId) {
                this.categoryId = categoryId;
        }

        public Integer get_id() {
                return _id;
        }

        public void set_id(Integer _id) {
                this._id = _id;
        }

        public ProductShippingInfoV1 getProductShippingInfoV1 ()
    {
        return productShippingInfoV1;
    }

    public void setProductShippingInfoV1 (ProductShippingInfoV1 productShippingInfoV1)
    {
        this.productShippingInfoV1 = productShippingInfoV1;
    }

    public ProductBaseInfoV1 getProductBaseInfoV1 ()
    {
        return productBaseInfoV1;
    }

    public void setProductBaseInfoV1 (ProductBaseInfoV1 productBaseInfoV1)
    {
        this.productBaseInfoV1 = productBaseInfoV1;
    }

    public CategorySpecificInfoV1 getCategorySpecificInfoV1 ()
    {
        return categorySpecificInfoV1;
    }

    public void setCategorySpecificInfoV1 (CategorySpecificInfoV1 categorySpecificInfoV1)
    {
        this.categorySpecificInfoV1 = categorySpecificInfoV1;
    }

    @Override
    public String toString()
    {
        return "ClassPojo [productShippingInfoV1 = "+productShippingInfoV1+", productBaseInfoV1 = "+productBaseInfoV1+", categorySpecificInfoV1 = "+categorySpecificInfoV1+"]";
    }
}