<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="false" %>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="/resources/css/style.css">
        <script type="text/javascript" src="/resources/script/adv-search.js"></script>
        
         
         <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="/resources/script/jquery.min.js"></script>
    <script src="/resources/script/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="/resources/css/style.css">    
   
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
        <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        
        <script type="text/javascript" src="/resources/script/autosearch.js"></script>
        
          <!-- Auto Complete Start -->
     <link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">
      <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
      <script src="/js/bootstrap.js"></script>
     <!-- Auto Complete End -->
   
    
</head>
<style>


#advanced-search-right-sect .panel-body li {
  float: left;
  height: 206px;
  position: relative;
  text-align: center;
  width: 128px;
  list-style: none !important;
  margin: 0px 0px 10px 0px;
  padding-top: 0;
}

#advanced-search-right-sect .panel strong {
  clear: both;
  display: block;
  font: 700 14px "Arimo", Arial, sans-serif;
  margin: 0px auto 0;
  padding: 28px 5px;
  background: rgba(246, 246, 246, .4);
  text-decoration: none;
  color: #777;
  position: absolute;
  bottom: 0px;
  width: 100%;
}

#advanced-search-right-sect .panel li span {
  position: absolute;
  top: 46%;
  transform: translateY(-50%);
  -webkit-transform: translateY(-50%);
  -moz-transform: translateY(-50%);
  text-align: center;
  left: 0;
  display: block;
  padding: 0 15px;
  width: 100%;
}

#advanced-search-right-sect .panel a:hover strong {
        background-color: #b23f33;
        border-color: #337ab7;
    color: #fff;
}


</style>
<body>
        <c:set var="url" value="${url}" />
        <c:set var="brand" value="${brand}" />
        <c:set var="primarycamera" value="${primarycamera}" />
        <c:set var="secondarycamera" value="${secondarycamera}" />
        <c:set var="screensize" value="${screensize}" />
        <c:set var="sim" value="${sim}" />
        <c:set var="availability" value="${availability}" />
        <c:set var="internalmemory" value="${internalmemory}" />
        <c:set var="externalmemory" value="${externalmemory}" />
        

   <div class="container">
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="col-sm-4">
                                <div class="navbar-header">
                                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                                <span class="sr-only">Toggle navigation</span>
                                                <span class="icon-bar"></span>
                                                <span class="icon-bar"></span>
                                                <span class="icon-bar"></span>
                                        </button>
                                        <a class="navbar-brand" href="#">
                                                <img src="http://placehold.it/150x50&amp;text=Logo" alt="">
                                        </a>
                                </div>
                        </div>
            <div class="col-sm-4" id="mobile-search">
                        <input id="project" placeholder="Search">
                </div>
                        <div class="col-sm-4">
                                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                        <ul class="nav navbar-nav">
                                                <li>
                                                        <a href="#">About</a>
                                                </li>
                                                <li>
                                                        <a href="#">Services</a>
                                                </li>
                                                <li>
                                                        <a href="#">Contact</a>
                                                </li>
                                        </ul>
                                </div>
                        </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
        </div>
        <div class="container">
                <div class="block-div">&nbsp;</div>
  </div>
                <div class="container">
                                <div id="nav-header-id"  class="row">
                                         
                                                <ul class="nav  nav-justified nav-pills">
                                                        <li>
                                                                <a href="/index.html">Home</a>
                                                        </li>
                                                        <li>
                                                                <a href="/mobiles/all-brands">Mobiles</a>
                                                        </li>
                                                        <li>
                                                                        <a href="/mobiles/compare">Compare Mobiles</a>
                                                        </li>
                                                        <li class="active">
                                                                <a href="/mobiles/advance-search">Advance Search</a>
                                                        </li>
                                                </ul>
                                         
                                </div>
                </div>
                        <hr>
        <div class="container">
                        <div class="row">
                                <nav class="navbar navbar-default">
                                        <div class="container-fluid">
                                                        <div class="navbar-header">
                                                        </div>
                                        </div>
                                </nav>
                                
                        
                        </div>
        </div>
        
        <div class="container">
                        <div class="row">
                                <nav class="navbar navbar-default">
                                        <div class="container-fluid">
                                                        <div class="navbar-header">
                                                                        <h1 class="modal-title"> 
                                                                        
                                                                         <c:forEach items="${mobilesBySearchCatageoryList}" var="company" varStatus="i">
                                                                         </c:forEach>
                                                                                Mobiles
                                                                        </h1>
                                                        </div>
                                        </div>
                                </nav>
                                
                        
                        </div>
        </div>
        
        <div class="container">
                <div class="row">
                        <form method="post" action="" id="advancesearch-from">
                                <div class="col-sm-4">
                                                <div class="panel panel-info">
                                                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                                                <!-- <span id="Glyp-Advert1" class="glyphicon glyphicon-chevron-down pull-right"></span> -->
                                                                        <h3 class="panel-title">Mobile Brands</h3>
                                                                </div>
                                                                <div class="panel-body-mb">
                                                                        <div id="collapseOne" class="panel-collapse collapse in">
                                                                                <ul class="list-group" id="brand">
                                                                                         <c:forEach items="${companyList}" var="company" varStatus="i">
                                                                                         <c:if test="${i.index  % 2 == 0}">
                                                                            <li class="list-group-item" id="brand">
                                                                                <div style="float: left;border: 0px red solid;width: 48%;">
                                                                                                <label>
                                                                                                <c:set var="brandName" value="${companyList[i.index].brandName}" />
                                                                                                <c:set var="brandNameLowerCase" value="${fn:toLowerCase(brandName)}" />
                                                                                                        <input type="checkbox" value="${brandNameLowerCase}" 
                                                                                                                                        <c:if test="${fn:contains(brand,brandNameLowerCase)}">
                                                                                                                                                  checked
                                                                                                                                        </c:if>
                                                                                                                                 />
                                                                                                                        </label>
                                                                                                         ${brandName}
                                                                                                <%-- <span class="badge">${fn:length(company.mobile)}</span> --%>
                                                                                </div>
                                                                                <c:if test="${fn:length(companyList) gt i.count}">
                                                                                        <div style="float: right;border: 0px red solid;width: 48%;">
                                                                                                <label>
                                                                                                        <c:set var="brandName" value="${companyList[i.count].brandName}" />
                                                                                                        <c:set var="brandNameLowerCase" value="${fn:toLowerCase(brandName)}" />
                                                                                                                <input type="checkbox" value="${brandNameLowerCase}" 
                                                                                                                                                <c:if test="${fn:contains(brand,brandNameLowerCase)}">
                                                                                                                                                          checked
                                                                                                                                                </c:if>
                                                                                                                                         />
                                                                                                                                </label>
                                                                                                                ${brandName}
                                                                                                        <%-- <span class="badge">${fn:length(company.mobile)}</span> --%>
                                                                                        </div>
                                                                                    </c:if>
                                                                            </li>
                                                                    </c:if>
                                                            </c:forEach>
                                                                                </ul>
                                                                        </div>
                                                                </div>
                                                </div><!-- End Mobile Brands -->
                                                <div class="panel panel-info">
                                                                <div class="panel-heading">
                                                                        <h3 class="panel-title">Screen Size(Inches)</h3>
                                                                </div>
                                                                        <ul class="list-group" id="screen-size">
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                <input type="checkbox" value="upto-4-0" 
                                                                                                        <c:if test="${fn:contains(url, 'upto-4-0')}">
                                                                                                                  checked
                                                                                                        </c:if>
                                                                                                 />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                Up to 4.0
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                <input  type="checkbox" value="4.0-5.0" 
                                                                                                        <c:if test="${fn:contains(url, '4.0-5.0')}">
                                                                                                                  checked
                                                                                                        </c:if>
                                                                                                />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                4.0 - 5.0
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                <input  type="checkbox" value="5.0-6.0" 
                                                                                                        <c:if test="${fn:contains(url, '5.0-6.0')}">
                                                                                                                 checked
                                                                                                        </c:if>
                                                                                                />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                5.0 - 6.0
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                <input  type="checkbox" value="above-6.0" 
                                                                                                        <c:if test="${fn:contains(url, 'above-6.0')}">
                                                                                                                 checked
                                                                                                        </c:if>
                                                                                                />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                Above 6.0
                                                                                </li>
                                                                        </ul>
                                                </div>
                                                <div class="panel panel-info">
                                                                <div class="panel-heading">
                                                                        <h3 class="panel-title">Primary Camera</h3>
                                                                </div>
                                                                        <ul class="list-group" id="primary-camera">
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                     <input type="checkbox" value="upto-3" 
                                                                                                             <c:if test="${fn:contains(primarycamera, 'upto-3')}">
                                                                                                                         checked
                                                                                                                 </c:if>
                                                                                                   />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                Up to 3.0
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                <input type="checkbox" value="3-5" 
                                                                                                        <c:if test="${fn:contains(primarycamera, '3-5')}">
                                                                                                                         checked
                                                                                                        </c:if>
                                                                                                />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                3.0 - 5.0
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                <input type="checkbox" value="5-8" 
                                                                                                        <c:if test="${fn:contains(primarycamera, '5-8')}">
                                                                                                                         checked
                                                                                                        </c:if>
                                                                                                 />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                5.0 - 8.0
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                <input type="checkbox" value="8-10" 
                                                                                                        <c:if test="${fn:contains(primarycamera, '8-10')}">
                                                                                                                         checked
                                                                                                        </c:if>
                                                                                                 />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                8.0 - 10.0
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                <input type="checkbox" value="10-13" 
                                                                                                        <c:if test="${fn:contains(primarycamera, '10-13')}">
                                                                                                                         checked
                                                                                                        </c:if>
                                                                                                 />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                10.0 - 13.0
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                <input type="checkbox" value="above-13"  
                                                                                                        <c:if test="${fn:contains(primarycamera, 'above-13')}">
                                                                                                                         checked
                                                                                                        </c:if>
                                                                                                />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                Above 13.0
                                                                                </li>
                                                                        </ul>
                                                </div>
                                                <div class="panel panel-info">
                                                                <div class="panel-heading">
                                                                        <h3 class="panel-title">Secondary Camera</h3>
                                                                </div>
                                                                        <ul class="list-group" id="secondary-camera">
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                     <input type="checkbox" value="upto-2" 
                                                                                                        <c:if test="${fn:contains(secondarycamera, 'upto-2')}">
                                                                                                                         checked
                                                                                                                 </c:if>
                                                                                                         />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                Up to 2
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                <input type="checkbox" value="2-4" 
                                                                                                        <c:if test="${fn:contains(secondarycamera, '2-4')}">
                                                                                                                         checked
                                                                                                        </c:if>
                                                                                                 />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                2 - 4
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                <input type="checkbox" value="above-5" 
                                                                                                        <c:if test="${fn:contains(secondarycamera, 'above-5')}">
                                                                                                                         checked
                                                                                                        </c:if>
                                                                                                />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                Above 5
                                                                                </li>
                                                                        </ul>
                                                </div>
                                                <div class="panel panel-info">
                                                                <div class="panel-heading">
                                                                        <h3 class="panel-title">No.of SIM</h3>
                                                                </div>
                                                                        <ul class="list-group" id="sim">
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                       <input type="checkbox" value="single-sim" 
                                                                                                                <c:if test="${fn:contains(sim, 'single')}">
                                                                                                                                 checked
                                                                                                                        </c:if>
                                                                                                       />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                Single SIM
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                       <input type="checkbox" value="dual-sim"
                                                                                                                <c:if test="${fn:contains(sim, 'dual')}">
                                                                                                                                 checked
                                                                                                                        </c:if>
                                                                                                       />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                Dual SIM
                                                                                </li>
                                                                        </ul>
                                                </div>
                                                <div class="panel panel-info">
                                                                <div class="panel-heading">
                                                                        <h3 class="panel-title">RAM</h3>
                                                                </div>
                                                                        <ul class="list-group" id="ram">
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                        <input type="checkbox" value="1-gb" 
                                                                                                                <c:if test="${fn:contains(ram, '1-gb')}">
                                                                                                                                 checked
                                                                                                                        </c:if>
                                                                                                        />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                1 GB
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                        <input type="checkbox" value="2-gb"  
                                                                                                                <c:if test="${fn:contains(ram, '2-gb')}">
                                                                                                                                 checked
                                                                                                                        </c:if>
                                                                                                                />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                2 GB
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                        <input type="checkbox" value="3-gb"
                                                                                                                <c:if test="${fn:contains(ram, '3-gb')}">
                                                                                                                                 checked
                                                                                                                        </c:if>
                                                                                                        />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                3 GB
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                        <input type="checkbox" value="above-4-gb" 
                                                                                                                <c:if test="${fn:contains(ram, 'above-4-gb')}">
                                                                                                                                 checked
                                                                                                                        </c:if>
                                                                                                                />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                Above 4 GB 
                                                                                </li>
                                                                        </ul>
                                                </div>
                                                <div class="panel panel-info">
                                                                <div class="panel-heading">
                                                                        <h3 class="panel-title">Availability</h3>
                                                                </div>
                                                                        <ul class="list-group" id="availability">
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                       <input type="checkbox" value="upcoming-mobiles" 
                                                                                                                <c:if test="${fn:contains(availability, 'upcoming-mobiles')}">
                                                                                                                                 checked
                                                                                                                        </c:if>
                                                                                                       />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                Upcoming Mobiles
                                                                                </li>
                                                                        </ul>
                                                </div>
                                                <div class="panel panel-info">
                                                                <div class="panel-heading">
                                                                        <h3 class="panel-title">Internal Memory</h3>
                                                                </div>
                                                                        <ul class="list-group" id="internal-memory">
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                       <input type="checkbox" value="above-128-gb" 
                                                                                                                <c:if test="${fn:contains(internalmemory, 'above-128-gb')}">
                                                                                                                                 checked
                                                                                                                        </c:if>
                                                                                                       />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                Above 128 GB
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                       <input type="checkbox" value="64-gb" 
                                                                                                                <c:if test="${fn:contains(internalmemory, '64-gb')}">
                                                                                                                                 checked
                                                                                                                        </c:if>
                                                                                                       />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                64 GB
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                       <input type="checkbox" value="32-gb" 
                                                                                                                <c:if test="${fn:contains(internalmemory, '32-gb')}">
                                                                                                                                 checked
                                                                                                                        </c:if>
                                                                                                       />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                32 GB
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                       <input type="checkbox" value="16-gb" 
                                                                                                                <c:if test="${fn:contains(internalmemory, '16-gb')}">
                                                                                                                                 checked
                                                                                                                        </c:if>
                                                                                                       />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                16 GB
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                       <input type="checkbox" value="8-gb" 
                                                                                                                <c:if test="${fn:contains(internalmemory, '-8-gb') || fn:contains(internalmemory, '_8-gb') }">
                                                                                                                                 checked
                                                                                                                        </c:if>
                                                                                                       />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                8 GB
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                       <input type="checkbox" value="4-gb" 
                                                                                                                <c:if test="${fn:contains(internalmemory, '-4-gb') || fn:contains(internalmemory, '_4-gb') }">
                                                                                                                                 checked
                                                                                                                        </c:if>
                                                                                                       />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                4 GB
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                       <input type="checkbox" value="2-gb" 
                                                                                                               <c:if test="${fn:contains(internalmemory, '-2-gb') || fn:contains(internalmemory, '_2-gb') }">
                                                                                                                                 checked
                                                                                                                        </c:if>
                                                                                                       />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                2 GB
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                       <input type="checkbox" value="4-gb" 
                                                                                                                <c:if test="${fn:contains(internalmemory, '1-gb')}">
                                                                                                                                 checked
                                                                                                                        </c:if>
                                                                                                       />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                1 GB
                                                                                </li>
                                                                        </ul>
                                                </div>
                                                <div class="panel panel-info">
                                                                <div class="panel-heading">
                                                                        <h3 class="panel-title">External Memory</h3>
                                                                </div>
                                                                        <ul class="list-group" id="external-memory">
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                       <input type="checkbox" value="above-128-gb" 
                                                                                                                <c:if test="${fn:contains(externalmemory, 'above-128-gb')}">
                                                                                                                                 checked
                                                                                                                        </c:if>
                                                                                                       />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                Above 128 GB
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                       <input type="checkbox" value="64-gb" 
                                                                                                                <c:if test="${fn:contains(externalmemory, '64-gb')}">
                                                                                                                                 checked
                                                                                                                        </c:if>
                                                                                                       />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                64 GB
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                       <input type="checkbox" value="32-gb" 
                                                                                                                <c:if test="${fn:contains(externalmemory, '32-gb')}">
                                                                                                                                 checked
                                                                                                                        </c:if>
                                                                                                       />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                32 GB
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                       <input type="checkbox" value="16-gb" 
                                                                                                                <c:if test="${fn:contains(externalmemory, '16-gb')}">
                                                                                                                                 checked
                                                                                                                        </c:if>
                                                                                                       />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                16 GB
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                       <input type="checkbox" value="8-gb" 
                                                                                                                        <c:if test="${fn:contains(externalmemory, '-8-gb') || fn:contains(internalmemory, '_8-gb') }">
                                                                                                                                 checked
                                                                                                                        </c:if>
                                                                                                       />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                8 GB
                                                                                </li>
                                                                                <li class="list-group-item">
                                                                                        <label>
                                                                                                       <input type="checkbox" value="4-gb" 
                                                                                                                <c:if test="${fn:contains(externalmemory, '-4-gb') || fn:contains(internalmemory, '_4-gb') }">
                                                                                                                                 checked
                                                                                                                        </c:if>
                                                                                                       />
                                                                                        </label>
                                                                                        <!-- <span class="badge">14</span> -->
                                                                                                4 GB
                                                                                </li>
                                                                        </ul>
                                                </div>
                                </div>
                        </form>
                        <c:if test="${empty mobilesBySearchCatageoryList}">
                        <div class="additional-search-div">
                                <div id="advanced-search-right-sect" class="col-sm-8">
                                        <div class="row" id="advanced-search-right-sect-div">
                                                <div class="panel panel-info">
                                                        <div class="panel-heading">
                                                                <h3 class="panel-title">2 GB Ram Phones</h3>
                                                        </div>
                                                        <div class="panel-body">
                                                                <ul>
                                                                  <c:forEach items="${ramBasedmobiles}" var="mobile"  varStatus="status" begin="0" end="4">
                                                                                <li>
                                                                <c:set var="title" value="${fn:toLowerCase(mobile.title)}" />
                                                                <a href="/mobiles/${fn:replace(title,' ', '-')}">
                                                                <img height="146" width="100" src="/resources/images${mobile.image_path1}" title="">
                                                                        <strong>
                                                                                <span>${mobile.title}</span>
                                                                        </strong>
                                                                </a>
                                                         </li>
                                                                        </c:forEach>
                                                                        <li>
                                                                                <p class="pull-left gutter-bottom">
                                                                                        <a class="btn btn-primary btn-sm" href="/mobiles/2-gb-ram-phones">More Info</a>
                                                                                </p>
                                                                        </li>
                                                                </ul>
                                                        </div>
                                                </div>
                                        </div>
                                        
                                        <div class="row" id="advanced-search-right-sect-div" >
                                                <div class="panel panel-info">
                                                        <div class="panel-heading">
                                                                <h3 class="panel-title">5 Inches Phones</h3>
                                                        </div>
                                                        <div class="panel-body">
                                                                <ul>
                                                                         <c:forEach items="${screensizeBasedmobiles}" var="mobile"  varStatus="status" begin="0" end="4">
                                                                                <li>
                                                                <c:set var="title" value="${fn:toLowerCase(mobile.title)}" />
                                                                <a href="/mobiles/${fn:replace(title,' ', '-')}">
                                                                <img height="146" width="100" src="/resources/images${mobile.image_path1}"  title="">
                                                                        <strong>
                                                                                <span>${mobile.title}</span>
                                                                        </strong>
                                                                </a>
                                                         </li>
                                                                        </c:forEach>
                                                                        <li>
                                                                                <p class="pull-left gutter-bottom">
                                                                                        <a class="btn btn-primary btn-sm" href="/mobiles/5-inches-phones">More Info</a>
                                                                                </p>
                                                                        </li>                                           
                                                                </ul>
                                                        </div>
                                                </div>
                                        </div>
                                        
                                        <div class="row" id="advanced-search-right-sect-div" >
                                                <div class="panel panel-info">
                                                        <div class="panel-heading">
                                                                <h3 class="panel-title">Best Phones for Selfies</h3>
                                                        </div>
                                                        <div class="panel-body">
                                                                <ul>
                                                                         <c:forEach items="${secondaryCameraBasedmobiles}" var="mobile"  varStatus="status" begin="0" end="4">
                                                                                <li>
                                                               <c:set var="title" value="${fn:toLowerCase(mobile.title)}" />
                                                                <a href="/mobiles/${fn:replace(title,' ', '-')}">
                                                                <img height="146" width="100" src="/resources/images${mobile.image_path1}" title="">
                                                                        <strong>
                                                                                <span>${mobile.title}</span>
                                                                        </strong>
                                                                </a>
                                                         </li>
                                                                        </c:forEach>
                                                                        <li>
                                                                                <p class="pull-left gutter-bottom">
                                                                                        <a class="btn btn-primary btn-sm" href="/mobiles/best-selfie-phones">More Info</a>
                                                                                </p>
                                                                        </li>                                           
                                                                </ul>
                                                        </div>
                                                </div>
                                        </div>
                                        
                                        <div class="row" id="advanced-search-right-sect-div" >
                                                <div class="panel panel-info">
                                                        <div class="panel-heading">
                                                                <h3 class="panel-title">Dual Sim Phones</h3>
                                                        </div>
                                                        <div class="panel-body">
                                                                <ul>
                                                                         <c:forEach items="${dualSimMobiles}" var="mobile"  varStatus="status" begin="0" end="4">
                                                                                <li>
                                                               <c:set var="title" value="${fn:toLowerCase(mobile.title)}" />
                                                                <a href="/mobiles/${fn:replace(title,' ', '-')}">
                                                                <img height="146" width="100" src="/resources/images${mobile.image_path1}" title="">
                                                                        <strong>
                                                                                <span>${mobile.title}</span>
                                                                        </strong>
                                                                </a>
                                                         </li>
                                                                        </c:forEach>
                                                                        <li>
                                                                                <p class="pull-left gutter-bottom">
                                                                                        <a class="btn btn-primary btn-sm" href="/mobiles/dual-sim-phone">More Info</a>
                                                                                </p>
                                                                        </li>                                           
                                                                </ul>
                                                        </div>
                                                </div>
                                        </div>
                                </div>
                                </div>
                        </c:if>
                        <c:if test="${!empty mobilesBySearchCatageoryList}">
                                <div id="advanced-search-right-sect" class="col-sm-8">
                                        <div class="row">
                                                <div class="panel panel-info">
                                                        <div class="panel-heading">
                                                                <h3 class="panel-title">Mobiles</h3>
                                                        </div>
                                                        <div class="panel-body">
                                                                <ul>
                                                                  <c:forEach items="${mobilesBySearchCatageoryList}" var="mobile"  varStatus="status">
                                                                                <li>
                                                                                <c:set var="title" value="${fn:toLowerCase(mobile.title)}" />
                                                <a href="/mobiles/${fn:replace(title,' ', '-')}">
                                                                 <img height="146" width="100" src="/resources/images${mobile.image_path1}" title="">
                                                                        <strong>
                                                                                <span>${mobile.title}</span>
                                                                        </strong>
                                                                </a>
                                                         </li>
                                                                        </c:forEach>
                                                                </ul>
                                                        </div>
                                                </div>
                                        </div>
                                </div>
                        </c:if>
                </div>
        </div><!-- close container -->

        <style>
                #advanced-search-right-sect-div .panel-body li:last-child  {
                          width: 76px;
                }
                .additional-search-div #advanced-search-right-sect .panel-body {
                  padding-top: 36px;
                  padding-bottom:0px;
                  padding-right:0px;
                  padding-left:0px;
                }
        </style>
        <script language="JavaScript" type="text/javascript">

  $('#collapseOne').on('show.bs.collapse', function(){
    $('#Glyp-Advert1').removeClass('glyphicon glyphicon-chevron-up').addClass('glyphicon glyphicon-chevron-right');
                        setTimeout(function(){
                                $('#Glyp-Advert1').removeClass('glyphicon glyphicon-chevron-right').addClass('glyphicon glyphicon-chevron-down');
                }, 150);
  });

  
  $('#collapseOne').on('hide.bs.collapse', function() {
  $('#Glyp-Advert1').removeClass('glyphicon glyphicon-chevron-down').addClass('glyphicon glyphicon-chevron-right');
                setTimeout(function(){
                                $('#Glyp-Advert1').removeClass('glyphicon glyphicon-chevron-right').addClass('glyphicon glyphicon-chevron-up');
                }, 150);        
  });


</script>

</body>
</html>