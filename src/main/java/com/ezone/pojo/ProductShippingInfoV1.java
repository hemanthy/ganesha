package com.ezone.pojo;

public class ProductShippingInfoV1
{
    private ShippingCharges shippingCharges;

    private String sellerNoOfRatings;

    private String sellerNoOfReviews;

    private String estimatedDeliveryTime;

    private String sellerName;

    private String sellerAverageRating;

    public ShippingCharges getShippingCharges ()
    {
        return shippingCharges;
    }

    public void setShippingCharges (ShippingCharges shippingCharges)
    {
        this.shippingCharges = shippingCharges;
    }

    public String getSellerNoOfRatings ()
    {
        return sellerNoOfRatings;
    }

    public void setSellerNoOfRatings (String sellerNoOfRatings)
    {
        this.sellerNoOfRatings = sellerNoOfRatings;
    }

    public String getSellerNoOfReviews ()
    {
        return sellerNoOfReviews;
    }

    public void setSellerNoOfReviews (String sellerNoOfReviews)
    {
        this.sellerNoOfReviews = sellerNoOfReviews;
    }

    public String getEstimatedDeliveryTime ()
    {
        return estimatedDeliveryTime;
    }

    public void setEstimatedDeliveryTime (String estimatedDeliveryTime)
    {
        this.estimatedDeliveryTime = estimatedDeliveryTime;
    }

    public String getSellerName ()
    {
        return sellerName;
    }

    public void setSellerName (String sellerName)
    {
        this.sellerName = sellerName;
    }

    public String getSellerAverageRating ()
    {
        return sellerAverageRating;
    }

    public void setSellerAverageRating (String sellerAverageRating)
    {
        this.sellerAverageRating = sellerAverageRating;
    }

    @Override
    public String toString()
    {
        return "ClassPojo [shippingCharges = "+shippingCharges+", sellerNoOfRatings = "+sellerNoOfRatings+", sellerNoOfReviews = "+sellerNoOfReviews+", estimatedDeliveryTime = "+estimatedDeliveryTime+", sellerName = "+sellerName+", sellerAverageRating = "+sellerAverageRating+"]";
    }
}
                        
               
