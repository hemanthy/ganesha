package com.ezone.pojo;


import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

public class CategorySpecificInfoV1
{
    private BooksInfo booksInfo;

    private String[] detailedSpecs;

    private LifeStyleInfo lifeStyleInfo;

    private SpecificationList[] specificationList;

    private String[] keySpecs;

    public BooksInfo getBooksInfo ()
    {
        return booksInfo;
    }

    public void setBooksInfo (BooksInfo booksInfo)
    {
        this.booksInfo = booksInfo;
    }

    public String[] getDetailedSpecs ()
    {
        return detailedSpecs;
    }

    public void setDetailedSpecs (String[] detailedSpecs)
    {
        this.detailedSpecs = detailedSpecs;
    }

    public LifeStyleInfo getLifeStyleInfo ()
    {
        return lifeStyleInfo;
    }

    public void setLifeStyleInfo (LifeStyleInfo lifeStyleInfo)
    {
        this.lifeStyleInfo = lifeStyleInfo;
    }

    public SpecificationList[] getSpecificationList ()
    {
        return specificationList;
    }

    public void setSpecificationList (SpecificationList[] specificationList)
    {
        this.specificationList = specificationList;
    }

    public String[] getKeySpecs ()
    {
        return keySpecs;
    }

    public void setKeySpecs (String[] keySpecs)
    {
        this.keySpecs = keySpecs;
    }

    @Override
    public String toString()
    {
        return "ClassPojo [booksInfo = "+booksInfo+", detailedSpecs = "+detailedSpecs+", lifeStyleInfo = "+lifeStyleInfo+", specificationList = "+specificationList+", keySpecs = "+keySpecs+"]";
    }
}
                   