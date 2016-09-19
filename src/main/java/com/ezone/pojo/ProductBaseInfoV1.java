package com.ezone.pojo;

               
public class ProductBaseInfoV1
{
    private String codAvailable;

    private String styleCode;

    private String productDescription;

    private FlipkartSellingPrice flipkartSellingPrice;

    private MaximumRetailPrice maximumRetailPrice;

    private String[] offers;

    private FlipkartSpecialPrice flipkartSpecialPrice;

    private ImageUrls imageUrls;

    private String productId;

    private String categoryPath;

    private String title;

    private String productBrand;

    private String discountPercentage;

    private String productUrl;

    private Attributes attributes;

    private String[] productFamily;

    private String inStock;

    public String getCodAvailable ()
    {
        return codAvailable;
    }

    public void setCodAvailable (String codAvailable)
    {
        this.codAvailable = codAvailable;
    }

    public String getStyleCode ()
    {
        return styleCode;
    }

    public void setStyleCode (String styleCode)
    {
        this.styleCode = styleCode;
    }

    public String getProductDescription ()
    {
        return productDescription;
    }

    public void setProductDescription (String productDescription)
    {
        this.productDescription = productDescription;
    }

    public FlipkartSellingPrice getFlipkartSellingPrice ()
    {
        return flipkartSellingPrice;
    }

    public void setFlipkartSellingPrice (FlipkartSellingPrice flipkartSellingPrice)
    {
        this.flipkartSellingPrice = flipkartSellingPrice;
    }

    public MaximumRetailPrice getMaximumRetailPrice ()
    {
        return maximumRetailPrice;
    }

    public void setMaximumRetailPrice (MaximumRetailPrice maximumRetailPrice)
    {
        this.maximumRetailPrice = maximumRetailPrice;
    }

    public String[] getOffers ()
    {
        return offers;
    }

    public void setOffers (String[] offers)
    {
        this.offers = offers;
    }

    public FlipkartSpecialPrice getFlipkartSpecialPrice ()
    {
        return flipkartSpecialPrice;
    }

    public void setFlipkartSpecialPrice (FlipkartSpecialPrice flipkartSpecialPrice)
    {
        this.flipkartSpecialPrice = flipkartSpecialPrice;
    }

    public ImageUrls getImageUrls ()
    {
        return imageUrls;
    }

    public void setImageUrls (ImageUrls imageUrls)
    {
        this.imageUrls = imageUrls;
    }

    public String getProductId ()
    {
        return productId;
    }

    public void setProductId (String productId)
    {
        this.productId = productId;
    }

    public String getCategoryPath ()
    {
        return categoryPath;
    }

    public void setCategoryPath (String categoryPath)
    {
        this.categoryPath = categoryPath;
    }

    public String getTitle ()
    {
        return title;
    }

    public void setTitle (String title)
    {
        this.title = title;
    }

    public String getProductBrand ()
    {
        return productBrand;
    }

    public void setProductBrand (String productBrand)
    {
        this.productBrand = productBrand;
    }

    public String getDiscountPercentage ()
    {
        return discountPercentage;
    }

    public void setDiscountPercentage (String discountPercentage)
    {
        this.discountPercentage = discountPercentage;
    }

    public String getProductUrl ()
    {
        return productUrl;
    }

    public void setProductUrl (String productUrl)
    {
        this.productUrl = productUrl;
    }

    public Attributes getAttributes ()
    {
        return attributes;
    }

    public void setAttributes (Attributes attributes)
    {
        this.attributes = attributes;
    }

    public String[] getProductFamily ()
    {
        return productFamily;
    }

    public void setProductFamily (String[] productFamily)
    {
        this.productFamily = productFamily;
    }

    public String getInStock ()
    {
        return inStock;
    }

    public void setInStock (String inStock)
    {
        this.inStock = inStock;
    }

    @Override
    public String toString()
    {
        return "ClassPojo [codAvailable = "+codAvailable+", styleCode = "+styleCode+", productDescription = "+productDescription+", flipkartSellingPrice = "+flipkartSellingPrice+", maximumRetailPrice = "+maximumRetailPrice+", offers = "+offers+", flipkartSpecialPrice = "+flipkartSpecialPrice+", imageUrls = "+imageUrls+", productId = "+productId+", categoryPath = "+categoryPath+", title = "+title+", productBrand = "+productBrand+", discountPercentage = "+discountPercentage+", productUrl = "+productUrl+", attributes = "+attributes+", productFamily = "+productFamily+", inStock = "+inStock+"]";
    }
}