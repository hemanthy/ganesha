

package com.ezone.pojo;
public class LifeStyleInfo
{
    private String neck;

    private String[] idealFor;

    private String sleeve;

    public String getNeck ()
    {
        return neck;
    }

    public void setNeck (String neck)
    {
        this.neck = neck;
    }

    public String[] getIdealFor ()
    {
        return idealFor;
    }

    public void setIdealFor (String[] idealFor)
    {
        this.idealFor = idealFor;
    }

    public String getSleeve ()
    {
        return sleeve;
    }

    public void setSleeve (String sleeve)
    {
        this.sleeve = sleeve;
    }

    @Override
    public String toString()
    {
        return "ClassPojo [neck = "+neck+", idealFor = "+idealFor+", sleeve = "+sleeve+"]";
    }
}
                        
               