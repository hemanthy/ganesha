package com.ezone.pojo;

      
public class Attributes
{
    private String color;

    private String sizeUnit;

    private String displaySize;

    private String storage;

    private String size;

    public String getColor ()
    {
        return color;
    }

    public void setColor (String color)
    {
        this.color = color;
    }

    public String getSizeUnit ()
    {
        return sizeUnit;
    }

    public void setSizeUnit (String sizeUnit)
    {
        this.sizeUnit = sizeUnit;
    }

    public String getDisplaySize ()
    {
        return displaySize;
    }

    public void setDisplaySize (String displaySize)
    {
        this.displaySize = displaySize;
    }

    public String getStorage ()
    {
        return storage;
    }

    public void setStorage (String storage)
    {
        this.storage = storage;
    }

    public String getSize ()
    {
        return size;
    }

    public void setSize (String size)
    {
        this.size = size;
    }

    @Override
    public String toString()
    {
        return "ClassPojo [color = "+color+", sizeUnit = "+sizeUnit+", displaySize = "+displaySize+", storage = "+storage+", size = "+size+"]";
    }
}
                        
                       