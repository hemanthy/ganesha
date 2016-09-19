<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page session="false" %>

<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
     <link rel="stylesheet" type="text/css" href="/resources/css/style.css">
     
     <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <!-- script src="http://code.jquery.com/jquery-1.10.2.js"></script-->
        <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <script type="text/javascript" src="/resources/script/autosearch.js"></script>
</head>
<style>

#full-specs-sub-list-table-cmp td, #full-specs-sub-list-table-cmp th  {
  padding: 7px 30px;
  font: 13px/15px Arial;
  color: #333;
}
/* #full-specs-sub-list-table-cmp tr:last-child, #full-specs-sub-list-table-cmp tr:first-child {
        border: 1px dashed #ccc;
} */
#full-specs-sub-list-table-cmp td, #full-specs-sub-list-table-cmp th {
        border: 1px dashed #ccc;
} 
#full-specs-sub-list-table-cmp th:first-child {
        /* border-right: 0px;
        border-bottom: 0px; */
}

.block.device_block {
  /* width: 197px; */ 
}
.device_title {
  font-size: 15px;
  padding: 8px 10px;
  display: inline-block;
  width: 206px;
  height:62px;
}
.device_header .cross {
  float: right;
  color: #fff;
  /* padding: 3px 5px;
  background: #ccc; */
}
.device_block .block_info {
  width: 184px;
  position: relative;
  padding: 3px 54px;
}
.full-specs-sub-list h4 {
  color: #374655;
  font: bold 20px Arial;
  background: #ebedee;
  padding: 5px 10px;
  margin-top: 2px;
}
#full-specs-sub-list-table-cmp td, #full-specs-sub-list-table-cmp th {
  line-height: 23px;
  color: grey;
  font-size: 15px;
}
#full-specs-sub-list-table-cmp th {
 background: #ebedee;
}

.full-specs-sub-list {
        background: url(../resources/images/row2_bg.gif) repeat-x left top;
}
.add_search {
  height: 56px;
  position: relative;
  margin-bottom: 15px;
  padding: 7px 32px;
}

.add_search .textfield {
  padding: 13px 10px;
}
.add_search .textfield, .error_textfield {
  width: 164px;
  background-color: #fff;
  padding: 10px;
  border: 7px solid #7a7a7a;
}
.add_search input {
  font-size: 14px;
  font-weight: 300;
}
</style>

<body>

<c:if test="${mobile1.ram gt 0}">
  <c:set var="ram1" value="${mobile1.ram} GB" />
</c:if>
<c:if test="${mobile2.ram gt 0}">
  <c:set var="ram2" value="${mobile2.ram} GB" />
</c:if>
<c:if test="${mobile3.ram gt 0}">
  <c:set var="ram3" value="${mobile3.ram} GB" />
</c:if>
<c:if test="${mobile4.ram gt 0}">
  <c:set var="ram4" value="${mobile4.ram} GB" />
</c:if>

<c:if test="${mobile1.internal_Memory gt 0}">
 <c:set var="internal_Memory1" value="${mobile1.internal_Memory} GB" />
</c:if>
<c:if test="${mobile2.internal_Memory gt 0}">
 <c:set var="internal_Memory2" value="${mobile2.internal_Memory} GB" />
</c:if>
<c:if test="${mobile3.internal_Memory gt 0}">
 <c:set var="internal_Memory3" value="${mobile3.internal_Memory} GB" />
</c:if>
<c:if test="${mobile4.internal_Memory gt 0}">
 <c:set var="internal_Memory4" value="${mobile4.internal_Memory} GB" />
</c:if>




<c:if test="${mobile1.ramSizeInMB gt 0}">
  <c:set var="ram1" value="${mobile1.ramSizeInMB} MB" />
</c:if>
<c:if test="${mobile2.ramSizeInMB gt 0}">
  <c:set var="ram2" value="${mobile2.ramSizeInMB} MB" />
</c:if>
<c:if test="${mobile3.ramSizeInMB gt 0}">
  <c:set var="ram3" value="${mobile3.ramSizeInMB} MB" />
</c:if>
<c:if test="${mobile4.ramSizeInMB gt 0}">
  <c:set var="ram4" value="${mobile4.ramSizeInMB} MB" />
</c:if>


<c:if test="${mobile1.internal_Memory_In_MB gt 0}">
 <c:set var="internal_Memory1" value="${mobile1.internal_Memory_In_MB} GB" />
</c:if>
<c:if test="${mobile2.internal_Memory_In_MB gt 0}">
 <c:set var="internal_Memory2" value="${mobile2.internal_Memory_In_MB} GB" />
</c:if>
<c:if test="${mobile3.internal_Memory_In_MB gt 0}">
 <c:set var="internal_Memory3" value="${mobile3.internal_Memory_In_MB} GB" />
</c:if>
<c:if test="${mobile4.internal_Memory_In_MB gt 0}">
 <c:set var="internal_Memory4" value="${mobile4.internal_Memory_In_MB} GB" />
</c:if>

<c:if test="${!empty mobile1}">
<script>
        var vsPath = "-vs-";
</script>
</c:if>
<c:if test="${empty mobile1}">
<script>
        var vsPath = "";
</script>
</c:if>
<div class="compare-page">
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
        <div id="nav-header-id" class="row">
            <ul class="nav  nav-justified nav-pills">
                <li>
                    <a href="/index.html">Home</a>
                </li>
                <li>
                    <a href="/mobiles/all-brands">Mobiles</a>
                </li>
                <li class="active">
                    <a href="/mobiles/compare">Compare Mobiles</a>
                </li>
                <li>
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
                        <div id="border-color-div" class="panel panel-info">
                    <div class="panel-heading">
                                                <h3 class="panel-title">
                                                        Compare
                                                        <c:if test="${!empty mobile1}">${mobile1.title}</c:if>
                                                        <c:if test="${!empty mobile2}"> vs ${mobile2.title}</c:if>
                                                        <c:if test="${!empty mobile3}"> vs ${mobile3.title}</c:if>
                                                        <c:if test="${!empty mobile4}"> vs ${mobile4.title}</c:if>
                                                </h3>
                                        </div>
                 <div class="panel-body">
                     <table id="full-specs-sub-list-table-cmp" width="100%">
                              <tbody>
                                <tr>
                                <td>
                                        <c:if test="${!empty mobile1 && empty mobile2}">
                                                One Mobile Compare
                                        </c:if>
                                        <c:if test="${!empty mobile2 && empty mobile3}">
                                                Two Mobiles Compare
                                        </c:if>
                                        <c:if test="${!empty mobile3 && empty mobile4}">
                                                Three Mobiles Compare
                                        </c:if>
                                        <c:if test="${!empty mobile4}">
                                                Four Mobiles Compare
                                        </c:if>
                                </td>
                                        <td style="padding: 7px 7px;  width: 245px;">
                                                <c:if test="${empty mobile1}">
                                                                <div class="add_search" style="display:block;">
                                                                                                          <input type="text" autocomplete="off" id="project1" class="textfield" placeholder="Add a Mobile">
                                                                                                      </div>
                                                     </c:if>
                                                <c:if test="${!empty mobile1}">
                                                                <div class="block device_block" id="auto-suggest0">
                                                                                                        <div class="device_header">
                                                                                                                <c:set var="title" value="${fn:toLowerCase(mobile1.title)}" />
                                                                                                                        <a class="device_title" href="/mobiles/${fn:replace(title,' ', '-')}"
                                                                                                                                alt="${mobile1.title}" title="${mobile1.title}"> ${mobile1.title} </a>
                                                                                                                                <a class="cross" href="/mobiles/compare<c:if test="${!empty m2}">/${m2}</c:if><c:if test="${!empty m3}">-vs-${m3}</c:if><c:if test="${!empty m4}">-vs-${m4}</c:if>" id="cross0"> <img src="/resources/images/cross.png"> </a>
                                                                                                        </div>
                                                                                                        <div class="block block_info">
                                                                                                                <a href="/mobiles/${fn:replace(title,' ', '-')}"
                                                                                                                        style="font-size: 14px; color: #454545; margin: 0px; font-family: 'Roboto-Medium', sans-serif; float: none; cursor: pointer;"
                                                                                                                        alt="${mobile1.title} title="${mobile1.title}">
                                                                                                                        <img src="/resources/images${mobile1.image_path1}"
                                                                                                                        alt="Compare ${mobile1.title}" title="Compare ${mobile1.title}" width="105">
                                                                                                                </a>
                                                                                                        </div>
                                                                                        </div>
                                                                                </c:if>
                                                                        </td>
                                                                                <td style="padding: 7px 7px;  width: 245px;">
                                                                                        <c:if test="${empty mobile2}">
                                                                <div class="add_search" id="auto-suggest-input3" style="display:block;">
                                                                                                          <input type="text" autocomplete="off" id="project2" class="textfield" placeholder="Add a Mobile">
                                                                                                      </div>
                                                     </c:if>
                                                                                         <c:if test="${!empty mobile2}">
                                                                                        <div class="block device_block" id="auto-suggest0">
                                                                                                                                <div class="device_header">
                                                                                                                                        <c:set var="title" value="${fn:toLowerCase(mobile2.title)}" />
                                                                                                                                                <a class="device_title" href="/mobiles/${fn:replace(title,' ', '-')}"
                                                                                                                                                        alt="${mobile2.title}" title="${mobile2.title}"> ${mobile2.title} </a>
                                                                                                                                                        <a class="cross" href="/mobiles/compare/<c:if test="${!empty m1}">${m1}</c:if><c:if test="${!empty m3}">-vs-${m3}</c:if><c:if test="${!empty m4}">-vs-${m4}</c:if>" id="cross0"> <img src="/resources/images/cross.png"> </a>
                                                                                                                                </div>
                                                                                                                                <div class="block block_info">
                                                                                                                                        <a href="/mobiles/${fn:replace(title,' ', '-')}"
                                                                                                                                                style="font-size: 14px; color: #454545; margin: 0px; font-family: 'Roboto-Medium', sans-serif; float: none; cursor: pointer;"
                                                                                                                                                alt="${mobile2.title} title="${mobile2.title}">
                                                                                                                                                <img src="/resources/images${mobile2.image_path1}"
                                                                                                                                                alt="Compare ${mobile2.title}" title="Compare ${mobile2.title}" width="105">
                                                                                                                                        </a>
                                                                                                                                </div>
                                                                                                                </div>
                                                                                                </c:if>
                                                                                </td>
                                                                                <td style="padding: 7px 7px;  width: 245px;">
                                                                                        <c:if test="${empty mobile3}">
                                                                <div class="add_search" style="display:block;">
                                                                                                    <input type="text" autocomplete="off" id="project3" class="textfield" placeholder="Add a Mobile">
                                                                                                      </div>
                                                     </c:if>
                                                                                         <c:if test="${!empty mobile3}">
                                                                                <div class="block device_block" id="auto-suggest0">
                                                                                                                        <div class="device_header">
                                                                                                                                <c:set var="title" value="${fn:toLowerCase(mobile3.title)}" />
                                                                                                                                        <a class="device_title" href="/mobiles/${fn:replace(title,' ', '-')}"
                                                                                                                                                alt="${mobile3.title}" title="${mobile3.title}"> ${mobile3.title} </a>
                                                                                                                                                <a class="cross" href="/mobiles/compare/<c:if test="${!empty m1}">${m1}</c:if><c:if test="${!empty m2}">-vs-${m2}</c:if><c:if test="${!empty m4}">-vs-${m4}</c:if>" id="cross0"> <img src="/resources/images/cross.png"> </a>
                                                                                                                        </div>
                                                                                                                        <div class="block block_info">
                                                                                                                                <a href="/mobiles/${fn:replace(title,' ', '-')}"
                                                                                                                                        style="font-size: 14px; color: #454545; margin: 0px; font-family: 'Roboto-Medium', sans-serif; float: none; cursor: pointer;"
                                                                                                                                        alt="${mobile3.title} title="${mobile3.title}">
                                                                                                                                        <img src="/resources/images${mobile3.image_path1}"
                                                                                                                                        alt="Compare ${mobile3.title}" title="Compare ${mobile3.title}" width="105">
                                                                                                                                </a>
                                                                                                                        </div>
                                                                                                        </div>
                                                                                        </c:if>
                                                                                </td>
                                                                                <td style="padding: 7px 7px;  width: 245px;">
                                                                                        <c:if test="${empty mobile4}">
                                                                <div class="add_search" style="display:block;">
                                                                                                        <input type="text" autocomplete="off" id="project4" class="textfield" placeholder="Add a Mobile">
                                                                                                      </div>
                                                     </c:if>
                                                                                         <c:if test="${!empty mobile4}">
                                                                                <div class="block device_block" id="auto-suggest0">
                                                                                                                        <div class="device_header">
                                                                                                                                <c:set var="title" value="${fn:toLowerCase(mobile4.title)}" />
                                                                                                                                        <a class="device_title" href="/mobiles/${fn:replace(title,' ', '-')}"
                                                                                                                                                alt="${mobile4.title}" title="${mobile4.title}"> ${mobile4.title} </a>
                                                                                                                                                <a class="cross" href="/mobiles/compare/<c:if test="${!empty m1}">${m1}</c:if><c:if test="${!empty m2}">-vs-${m2}</c:if><c:if test="${!empty m3}">-vs-${m3}</c:if>" id="cross0"> <img src="/resources/images/cross.png"> </a>
                                                                                                                        </div>
                                                                                                                        <div class="block block_info">
                                                                                                                                <a href="/mobiles/${fn:replace(title,' ', '-')}"
                                                                                                                                        style="font-size: 14px; color: #454545; margin: 0px; font-family: 'Roboto-Medium', sans-serif; float: none; cursor: pointer;"
                                                                                                                                        alt="${mobile4.title} title="${mobile4.title}">
                                                                                                                                        <img src="/resources/images${mobile4.image_path1}"
                                                                                                                                        alt="Compare ${mobile4.title}" title="Compare ${mobile4.title}" width="105">
                                                                                                                                </a>
                                                                                                                        </div>
                                                                                                        </div>
                                                                                        </c:if>
                                                                                </td>
                             </tr>
                                 <tr>
                                        <th class="full-specs-sub-list" colspan="5">
                                                         <h4>Display</h4>
                                                </th> 
                             </tr>
                              <tr>
                                        <th>Screen Type</th>
                                                 <td>
                                                                                ${mobile1.screenType}
                                                 </td>
                                                 <td>
                                                                 ${mobile2.screenType}
                                                 </td>
                                                 <td>
                                                                 ${mobile3.screenType}
                                                 </td>
                                                 <td>${mobile4.screenType}</td>
                             </tr>
                             <tr>
                                        <th>Screen Size</th>
                                                        <td>${mobile1.screenType}</td>
                                                        <td>${mobile2.screenType}</td>
                                                        <td>${mobile3.screenType}</td>
                                                        <td>${mobile4.screenType}</td>
                             </tr>
                             <tr>
                                        <th>Screen Resolution</th>
                                                 <td>${mobile1.resolution}</td>
                                                 <td>${mobile2.resolution}</td>
                                                 <td>${mobile3.resolution}</td>
                                                 <td>${mobile4.resolution}</td>
                             </tr>
                             <tr>
                                        <th>PPI</th>
                                                 <td>${mobile1.ppl} <c:if test="${!empty mobile1.ppl}">PPI</c:if></td>
                                                 <td>${mobile2.ppl} <c:if test="${!empty mobile2.ppl}">PPI</c:if></td>
                                                 <td>${mobile3.ppl} <c:if test="${!empty mobile3.ppl}">PPI</c:if></td>
                                                 <td>${mobile4.ppl} <c:if test="${!empty mobile4.ppl}">PPI</c:if></td>
                             </tr>
                             
                              <tr>
                                        <th class="full-specs-sub-list" colspan="5">
                                                         <h4>Processor</h4>
                                                </th> 
                             </tr>
                              <tr>
                                        <th>Processor</th>
                                                 <td>${mobile1.processor}</td>
                                                 <td>${mobile2.processor}</td>
                                                 <td>${mobile3.processor}</td>
                                                 <td>${mobile4.processor}</td>
                             </tr>
                              <tr>
                                        <th>Processor Chipset</th>
                                                 <td>${mobile1.chipset}</td>
                                                 <td>${mobile2.chipset}</td>
                                                 <td>${mobile3.chipset}</td>
                                                 <td>${mobile4.chipset}</td>
                             </tr>
                             
                             <tr>
                                        <th class="full-specs-sub-list" colspan="5">
                                                         <h4>Memory</h4>
                                                </th> 
                             </tr>
                              <tr>
                                        <th>Internal Memory</th>
                                                 <td>${internal_Memory1}</td>
                                                 <td>${internal_Memory2}</td>
                                                 <td>${internal_Memory3}</td>
                                                 <td>${internal_Memory4}</td>
                             </tr>
                              <tr>
                                        <th>Extendable Memory</th>
                                                 <td>${mobile1.card_Slot}</td>
                                                 <td>${mobile2.card_Slot}</td>
                                                 <td>${mobile3.card_Slot}</td>
                                                 <td>${mobile4.card_Slot}</td>
                             </tr>
                              <tr>
                                        <th>RAM</th>
                                                 <td>${ram1}</td>
                                                 <td>${ram2}</td>
                                                 <td>${ram3}</td>
                                                 <td>${ram4}</td>
                             </tr>
                              
                              
                               <tr>
                                        <th class="full-specs-sub-list" colspan="5">
                                                         <h4>Camera Features</h4>
                                                </th> 
                             </tr>
                              <tr>
                                        <th>Camera</th>
                                                 <td>${mobile1.primary_Camera}</td>
                                                 <td>${mobile2.primary_Camera}</td>
                                                 <td>${mobile3.primary_Camera}</td>
                                                 <td>${mobile4.primary_Camera}</td>
                             </tr>
                              <tr>
                                        <th>Front Camera</th>
                                                 <td>
                                                          <c:if test="${mobile1.secondary_Camera ge 0.3}">
                                                                        ${mobile1.secondary_Camera}
                                                          </c:if>
                                                          <c:if test="${mobile1.secondary_Camera le 0.3}">
                                                                        <img src="/resources/images/no.png"> Not Available
                                                          </c:if>
                                                  </td>
                                                 <td>
                                                         <c:if test="${mobile2.secondary_Camera ge 0.3}">
                                                                        ${mobile2.secondary_Camera}
                                                          </c:if>
                                                          <c:if test="${mobile2.secondary_Camera le 0.3}">
                                                                        <img src="/resources/images/no.png"> Not Available
                                                          </c:if>
                                                                                        </td>
                                                <td>
                                                         <c:if test="${mobile3.secondary_Camera ge 0.3}">
                                                                        ${mobile3.secondary_Camera}
                                                          </c:if>
                                                          <c:if test="${mobile3.secondary_Camera le 0.3}">
                                                                        <img src="/resources/images/no.png"> Not Available
                                                          </c:if>
                                                                                        </td>
                                                 <td>
                                                         <c:if test="${mobile4.secondary_Camera ge 0.3}">
                                                                        ${mobile4.secondary_Camera}
                                                          </c:if>
                                                          <c:if test="${mobile4.secondary_Camera le 0.3}">
                                                                        <img src="/resources/images/no.png"> Not Available
                                                          </c:if>
                                                                                        </td>
                             </tr>
                              <tr>
                                        <th>Flash</th>
                                                 <td>
                                                        <c:if test="${mobile1.flash eq true}">
                                                                        <img src="/resources/images/yes.gif"> Available
                                                          </c:if>
                                                          <c:if test="${mobile1.flash eq false}">
                                                                        <img src="/resources/images/no.png"> Not Available
                                                          </c:if>
                                                 </td>
                                                 <td>
                                                        <c:if test="${mobile2.flash eq true}">
                                                                        <img src="/resources/images/yes.gif"> Available
                                                          </c:if>
                                                          <c:if test="${mobile2.flash eq false}">
                                                                        <img src="/resources/images/no.png"> Not Available
                                                          </c:if>
                                                 </td>
                                                 <td>
                                                        <c:if test="${mobile3.flash eq true}">
                                                                        <img src="/resources/images/yes.gif"> Available
                                                          </c:if>
                                                          <c:if test="${mobile3.flash eq false}">
                                                                        <img src="/resources/images/no.png"> Not Available
                                                          </c:if>
                                                 </td>
                                                 <td>
                                                        <c:if test="${mobile4.flash eq true}">
                                                                        <img src="/resources/images/yes.gif"> Available
                                                          </c:if>
                                                          <c:if test="${mobile4.flash eq false}">
                                                                        <img src="/resources/images/no.png"> Not Available
                                                          </c:if>
                                                 </td>
                             </tr>
                             
                             <tr>
                                        <th class="full-specs-sub-list" colspan="5">
                                                         <h4>General Features</h4>
                                                </th> 
                             </tr>
                              <tr>
                                        <th>OS</th>
                                                 <td>Android</td>
                                                 <td>Android</td>
                                                 <td>Android</td>
                                                 <td>Android</td>
                             </tr>
                              <tr>
                                        <th>Version</th>
                                                 <td>${mobile1.osVersion}</td>
                                                 <td>${mobile2.osVersion}</td>
                                                 <td>${mobile3.osVersion}</td>
                                                 <td>${mobile4.osVersion}</td>
                             </tr>
                              <tr>
                                        <th>GPS</th>
                                          <td>
                                                        <c:if test="${!empty mobile1 && !empty mobile1.gps}">
                                                                        <img src="/resources/images/yes.gif"> Available
                                                                </c:if>
                                                                <c:if test="${!empty mobile1 && empty mobile1.gps}">
                                                                        <img src="/resources/images/no.png"> Not Available
                                                                </c:if>
                                                       </td>
                                                 <td>
                                                        <c:if test="${!empty mobile2 && !empty mobile2.gps}">
                                                                        <img src="/resources/images/yes.gif"> Available
                                                                </c:if>
                                                                <c:if test="${!empty mobile2 && empty mobile2.gps}">
                                                                        <img src="/resources/images/no.png"> Not Available
                                                                </c:if>
                                                             </td>
                                          <td>
                                                        <c:if test="${!empty mobile3 && !empty mobile3.gps}">
                                                                        <img src="/resources/images/yes.gif"> Available
                                                                </c:if>
                                                                <c:if test="${!empty mobile3 && empty mobile3.gps}">
                                                                        <img src="/resources/images/no.png"> Not Available
                                                                </c:if>
                                                       </td>
                                                <td>
                                                        <c:if test="${!empty mobile4 && !empty mobile4.gps}">
                                                                        <img src="/resources/images/yes.gif"> Available
                                                                </c:if>
                                                                <c:if test="${!empty mobile4 && empty mobile4.gps}">
                                                                        <img src="/resources/images/no.png"> Not Available
                                                                </c:if>
                                                            </td>
                             </tr>
                             <tr>
                                        <th>Messaging</th>
                                                         <td>${mobile1.messaging}</td>
                                                         <td>${mobile2.messaging}</td>
                                                         <td>${mobile3.messaging}</td>
                                                         <td>${mobile4.messaging}</td>
                             </tr>
                             <tr>
                                        <th>USB Connector</th>
                                          <td>
                                                        <c:if test="${!empty mobile1 && !empty mobile1.usb}">
                                                                        <img src="/resources/images/yes.gif"> Available
                                                                </c:if>
                                                                <c:if test="${!empty mobile1 && empty mobile1.usb}">
                                                                        <img src="/resources/images/no.png"> Not Available
                                                                </c:if>
                                                       </td>
                                          <td>
                                                        <c:if test="${!empty mobile2 && !empty mobile2.usb}">
                                                                        <img src="/resources/images/yes.gif"> Available
                                                                </c:if>
                                                                <c:if test="${!empty mobile2 && empty mobile2.usb}">
                                                                        <img src="/resources/images/no.png"> Not Available
                                                                </c:if>
                                                       </td>
                                          <td>
                                                        <c:if test="${!empty mobile3 && !empty mobile3.usb}">
                                                                        <img src="/resources/images/yes.gif"> Available
                                                                </c:if>
                                                                <c:if test="${!empty mobile3 && empty mobile3.usb}">
                                                                        <img src="/resources/images/no.png"> Not Available
                                                                </c:if>
                                                       </td>
                                          <td>
                                                        <c:if test="${!empty mobile4 && !empty mobile4.usb}">
                                                                        <img src="/resources/images/yes.gif"> Available
                                                                </c:if>
                                                                <c:if test="${!empty mobile4 && empty mobile4.usb}">
                                                                        <img src="/resources/images/no.png"> Not Available
                                                                </c:if>
                                                       </td>
                             </tr>
                             <tr>
                                        <th>Available Colours</th>
                                                         <td>${mobile1.colors}</td>
                                                         <td>${mobile2.colors}</td>
                                                         <td>${mobile3.colors}</td>
                                                         <td>${mobile4.colors}</td>
                             </tr>
                             <tr>
                                        <th class="full-specs-sub-list" colspan="5">
                                                         <h4>Carrier Networks</h4>
                                                </th> 
                             </tr>
                              <tr>
                                        <th>3G</th>
                                                          <td>
                                                                        <c:if test="${!empty mobile1 && !empty mobile1.band_3G}">
                                                                                        <img src="/resources/images/yes.gif"> Available
                                                                                </c:if>
                                                                                <c:if test="${!empty mobile1 && empty mobile1.band_3G}">
                                                                                        <img src="/resources/images/no.png"> Not Available
                                                                                </c:if>
                                                                       </td>
                                                          <td>
                                                                        <c:if test="${!empty mobile2 && !empty mobile2.band_3G}">
                                                                                        <img src="/resources/images/yes.gif"> Available
                                                                                </c:if>
                                                                                <c:if test="${!empty mobile2 && empty mobile2.band_3G}">
                                                                                        <img src="/resources/images/no.png"> Not Available
                                                                                </c:if>
                                                                       </td>
                                                          <td>
                                                                        <c:if test="${!empty mobile3 && !empty mobile3.band_3G}">
                                                                                        <img src="/resources/images/yes.gif"> Available
                                                                                </c:if>
                                                                                <c:if test="${!empty mobile3 && empty mobile3.band_3G}">
                                                                                        <img src="/resources/images/no.png"> Not Available
                                                                                </c:if>
                                                                       </td>
                                                          <td>
                                                                        <c:if test="${!empty mobile4 && !empty mobile4.band_3G}">
                                                                                        <img src="/resources/images/yes.gif"> Available
                                                                                </c:if>
                                                                                <c:if test="${!empty mobile4 && empty mobile4.band_3G}">
                                                                                        <img src="/resources/images/no.png"> Not Available
                                                                                </c:if>
                                                                       </td>
                             </tr>
                             <tr>
                                        <th>4G</th>
                                                          <td>
                                                                        <c:if test="${!empty mobile1 && !empty mobile1.band_4G}">
                                                                                        <img src="/resources/images/yes.gif"> Available
                                                                                </c:if>
                                                                                <c:if test="${!empty mobile1 && empty mobile1.band_4G}">
                                                                                        <img src="/resources/images/no.png"> Not Available
                                                                                </c:if>
                                                                       </td>
                                                          <td>
                                                                        <c:if test="${!empty mobile2 && !empty mobile2.band_4G}">
                                                                                        <img src="/resources/images/yes.gif"> Available
                                                                                </c:if>
                                                                                <c:if test="${!empty mobile2 && empty mobile2.band_4G}">
                                                                                        <img src="/resources/images/no.png"> Not Available
                                                                                </c:if>
                                                                       </td>
                                                          <td>
                                                                        <c:if test="${!empty mobile3 && !empty mobile3.band_4G}">
                                                                                        <img src="/resources/images/yes.gif"> Available
                                                                                </c:if>
                                                                                <c:if test="${!empty mobile3 && empty mobile3.band_4G}">
                                                                                        <img src="/resources/images/no.png"> Not Available
                                                                                </c:if>
                                                                       </td>
                                                          <td>
                                                                        <c:if test="${!empty mobile4 && !empty mobile4.band_4G}">
                                                                                        <img src="/resources/images/yes.gif"> Available
                                                                                </c:if>
                                                                                <c:if test="${!empty mobile4 && empty mobile4.band_4G}">
                                                                                        <img src="/resources/images/no.png"> Not Available
                                                                                </c:if>
                                                                       </td>
                             </tr>
                             <tr>
                                        <th class="full-specs-sub-list" colspan="5">
                                                         <h4>Data</h4>
                                                </th> 
                             </tr>
                             <tr>
                                        <th>GPRS</th>
                                                          <td>
                                                                        <c:if test="${!empty mobile1 && !empty mobile1.gprs}">
                                                                                        <img src="/resources/images/yes.gif"> Available
                                                                                </c:if>
                                                                                <c:if test="${!empty mobile1 && empty mobile1.gprs}">
                                                                                        <img src="/resources/images/no.png"> Not Available
                                                                                </c:if>
                                                                       </td>
                                                          <td>
                                                                        <c:if test="${!empty mobile2 && !empty mobile2.gprs}">
                                                                                        <img src="/resources/images/yes.gif"> Available
                                                                                </c:if>
                                                                                <c:if test="${!empty mobile2 && empty mobile2.gprs}">
                                                                                        <img src="/resources/images/no.png"> Not Available
                                                                                </c:if>
                                                                       </td>
                                                          <td>
                                                                        <c:if test="${!empty mobile3 && !empty mobile3.gprs}">
                                                                                        <img src="/resources/images/yes.gif"> Available
                                                                                </c:if>
                                                                                <c:if test="${!empty mobile3 && empty mobile3.gprs}">
                                                                                        <img src="/resources/images/no.png"> Not Available
                                                                                </c:if>
                                                                       </td>
                                                          <td>
                                                                        <c:if test="${!empty mobile4 && !empty mobile4.gprs}">
                                                                                        <img src="/resources/images/yes.gif"> Available
                                                                                </c:if>
                                                                                <c:if test="${!empty mobile4 && empty mobile4.gprs}">
                                                                                        <img src="/resources/images/no.png"> Not Available
                                                                                </c:if>
                                                                       </td>
                             </tr>
                             <tr>
                                        <th>EDGE</th>
                                                          <td>
                                                                        <c:if test="${!empty mobile1 && !empty mobile1.edge}">
                                                                                        <img src="/resources/images/yes.gif"> Available
                                                                                </c:if>
                                                                                <c:if test="${!empty mobile1 && empty mobile1.edge}">
                                                                                        <img src="/resources/images/no.png"> Not Available
                                                                                </c:if>
                                                                       </td>
                                                          <td>
                                                                        <c:if test="${!empty mobile2 && !empty mobile2.edge}">
                                                                                        <img src="/resources/images/yes.gif"> Available
                                                                                </c:if>
                                                                                <c:if test="${!empty mobile2 && empty mobile2.edge}">
                                                                                        <img src="/resources/images/no.png"> Not Available
                                                                                </c:if>
                                                                       </td>
                                                          <td>
                                                                        <c:if test="${!empty mobile3 && !empty mobile3.edge}">
                                                                                        <img src="/resources/images/yes.gif"> Available
                                                                                </c:if>
                                                                                <c:if test="${!empty mobile3 && empty mobile3.edge}">
                                                                                        <img src="/resources/images/no.png"> Not Available
                                                                                </c:if>
                                                                       </td>
                                                          <td>
                                                                        <c:if test="${!empty mobile4 && !empty mobile4.edge}">
                                                                                        <img src="/resources/images/yes.gif"> Available
                                                                                </c:if>
                                                                                <c:if test="${!empty mobile4 && empty mobile4.edge}">
                                                                                        <img src="/resources/images/no.png"> Not Available
                                                                                </c:if>
                                                                       </td>
                             </tr>
                             <tr>
                                        <th class="full-specs-sub-list" colspan="5">
                                                         <h4>Body</h4>
                                                </th> 
                             </tr>
                              <tr>
                                        <th>Dimensions</th>
                                                         <td>${mobile1.dimensions}</td>
                                                         <td>${mobile2.dimensions}</td>
                                                         <td>${mobile3.dimensions}</td>
                                                         <td>${mobile4.dimensions}</td>
                             </tr>
                             <tr>
                                        <th>Weight  (grams)</th>
                                                         <td><c:if test="${mobile1.weight  gt 0}">${mobile1.weight} g</c:if></td>
                                                         <td><c:if test="${mobile2.weight  gt 0}">${mobile2.weight} g</c:if></td>
                                                         <td><c:if test="${mobile3.weight  gt 0}">${mobile3.weight} g</c:if></td>
                                                         <td><c:if test="${mobile4.weight  gt 0}">${mobile4.weight} g</c:if></td>
                             </tr>
                              </tbody>
                           </table>
                </div>
                </div>
    </div>
</div>

</div>
</body>

</html>