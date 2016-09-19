package com.ezone.pojo;


public class BooksInfo
{
private String[] authors;

private String pages;

private String binding;

private String year;

private String language;

private String publisher;

public String[] getAuthors ()
{
return authors;
}

public void setAuthors (String[] authors)
{
this.authors = authors;
}

public String getPages ()
{
return pages;
}

public void setPages (String pages)
{
this.pages = pages;
}

public String getBinding ()
{
return binding;
}

public void setBinding (String binding)
{
this.binding = binding;
}

public String getYear ()
{
return year;
}

public void setYear (String year)
{
this.year = year;
}

public String getLanguage ()
{
return language;
}

public void setLanguage (String language)
{
this.language = language;
}

public String getPublisher ()
{
return publisher;
}

public void setPublisher (String publisher)
{
this.publisher = publisher;
}

@Override
public String toString()
{
return "ClassPojo [authors = "+authors+", pages = "+pages+", binding = "+binding+", year = "+year+", language = "+language+", publisher = "+publisher+"]";
}
}