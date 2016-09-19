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
                        <link rel="stylesheet" href="http://bootswatch.com/spacelab/bootstrap.min.css">
                        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
                        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
                         
                         
                           <!-- Auto Complete Start -->
						     <link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">
						      <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
						      <script src="/resources/script/bootstrap.js"></script>
						      <script type="text/javascript" src="/resources/script/autosearch.js"></script>
						     <!-- Auto Complete End -->
                         
                        <script>
                            jQuery(document).ready(function($) {

                                var jssor_html5_AdWords_SlideoTransitions = [
                                    [{
                                        b: -1,
                                        d: 1,
                                        o: -1,
                                        rY: -120
                                    }, {
                                        b: 2600,
                                        d: 500,
                                        o: 1,
                                        rY: 120,
                                        e: {
                                            rY: 17
                                        }
                                    }],
                                    [{
                                        b: -1,
                                        d: 1,
                                        o: -1
                                    }, {
                                        b: 1480,
                                        d: 20,
                                        o: 1
                                    }, {
                                        b: 1500,
                                        d: 500,
                                        y: -20,
                                        e: {
                                            y: 19
                                        }
                                    }, {
                                        b: 2300,
                                        d: 300,
                                        x: -20,
                                        e: {
                                            x: 19
                                        }
                                    }, {
                                        b: 3100,
                                        d: 300,
                                        o: -1,
                                        sY: 9
                                    }],
                                    [{
                                        b: -1,
                                        d: 1,
                                        o: -1
                                    }, {
                                        b: 2300,
                                        d: 300,
                                        x: 20,
                                        o: 1,
                                        e: {
                                            x: 19
                                        }
                                    }, {
                                        b: 3100,
                                        d: 300,
                                        o: -1,
                                        sY: 9
                                    }],
                                    [{
                                        b: -1,
                                        d: 1,
                                        sX: -1,
                                        sY: -1
                                    }, {
                                        b: 0,
                                        d: 1000,
                                        sX: 2,
                                        sY: 2,
                                        e: {
                                            sX: 7,
                                            sY: 7
                                        }
                                    }, {
                                        b: 1000,
                                        d: 500,
                                        sX: -1,
                                        sY: -1,
                                        e: {
                                            sX: 16,
                                            sY: 16
                                        }
                                    }, {
                                        b: 1500,
                                        d: 500,
                                        y: 20,
                                        e: {
                                            y: 19
                                        }
                                    }],
                                    [{
                                        b: 1000,
                                        d: 1000,
                                        r: -30
                                    }, {
                                        b: 2000,
                                        d: 500,
                                        r: 30,
                                        e: {
                                            r: 2
                                        }
                                    }, {
                                        b: 2500,
                                        d: 500,
                                        r: -30,
                                        e: {
                                            r: 3
                                        }
                                    }, {
                                        b: 3000,
                                        d: 3000,
                                        x: 70,
                                        y: 40,
                                        rY: -20,
                                        tZ: -20
                                    }],
                                    [{
                                        b: -1,
                                        d: 1,
                                        o: -1
                                    }, {
                                        b: 0,
                                        d: 1000,
                                        o: 1
                                    }],
                                    [{
                                        b: -1,
                                        d: 1,
                                        o: -1,
                                        r: 30
                                    }, {
                                        b: 1000,
                                        d: 1000,
                                        o: 1
                                    }],
                                    [{
                                        b: -1,
                                        d: 1,
                                        o: -1
                                    }, {
                                        b: 2780,
                                        d: 20,
                                        o: 1
                                    }, {
                                        b: 2800,
                                        d: 500,
                                        y: -70,
                                        e: {
                                            y: 3
                                        }
                                    }, {
                                        b: 3300,
                                        d: 1000,
                                        y: 180
                                    }, {
                                        b: 4300,
                                        d: 500,
                                        y: -40,
                                        e: {
                                            y: 3
                                        }
                                    }, {
                                        b: 5300,
                                        d: 500,
                                        y: -40,
                                        e: {
                                            y: 3
                                        }
                                    }, {
                                        b: 6300,
                                        d: 500,
                                        y: -40,
                                        e: {
                                            y: 3
                                        }
                                    }, {
                                        b: 7300,
                                        d: 500,
                                        y: -40,
                                        e: {
                                            y: 3
                                        }
                                    }, {
                                        b: 8300,
                                        d: 400,
                                        y: -30
                                    }],
                                    [{
                                        b: -1,
                                        d: 1,
                                        c: {
                                            y: 200
                                        }
                                    }, {
                                        b: 4300,
                                        d: 4400,
                                        c: {
                                            y: -200
                                        },
                                        e: {
                                            c: {
                                                y: 1
                                            }
                                        }
                                    }],
                                    [{
                                        b: -1,
                                        d: 1,
                                        o: -1
                                    }, {
                                        b: 4300,
                                        d: 20,
                                        o: 1
                                    }],
                                    [{
                                        b: -1,
                                        d: 1,
                                        o: -1
                                    }, {
                                        b: 5300,
                                        d: 20,
                                        o: 1
                                    }],
                                    [{
                                        b: -1,
                                        d: 1,
                                        o: -1
                                    }, {
                                        b: 6300,
                                        d: 20,
                                        o: 1
                                    }],
                                    [{
                                        b: -1,
                                        d: 1,
                                        o: -1
                                    }, {
                                        b: 7300,
                                        d: 20,
                                        o: 1
                                    }],
                                    [{
                                        b: -1,
                                        d: 1,
                                        o: -1
                                    }, {
                                        b: 8300,
                                        d: 20,
                                        o: 1
                                    }],
                                    [{
                                        b: 2000,
                                        d: 1000,
                                        o: -0.5,
                                        r: 180,
                                        sX: 4,
                                        sY: 4,
                                        e: {
                                            r: 5,
                                            sX: 5,
                                            sY: 5
                                        }
                                    }, {
                                        b: 3000,
                                        d: 1000,
                                        o: -0.5,
                                        r: 180,
                                        sX: -4,
                                        sY: -4,
                                        e: {
                                            r: 6,
                                            sX: 6,
                                            sY: 6
                                        }
                                    }],
                                    [{
                                        b: -1,
                                        d: 1,
                                        o: -1,
                                        c: {
                                            m: -35.0
                                        }
                                    }, {
                                        b: 0,
                                        d: 1500,
                                        x: 150,
                                        o: 1,
                                        e: {
                                            x: 6
                                        }
                                    }],
                                    [{
                                        b: -1,
                                        d: 1,
                                        o: -1,
                                        c: {
                                            y: 35.0
                                        }
                                    }, {
                                        b: 0,
                                        d: 1500,
                                        x: -150,
                                        o: 1,
                                        e: {
                                            x: 6
                                        }
                                    }],
                                    [{
                                        b: -1,
                                        d: 1,
                                        o: -1
                                    }, {
                                        b: 6500,
                                        d: 2000,
                                        o: 1
                                    }],
                                    [{
                                        b: -1,
                                        d: 1,
                                        o: -1
                                    }, {
                                        b: 2000,
                                        d: 1000,
                                        o: 0.5,
                                        r: 180,
                                        sX: 4,
                                        sY: 4,
                                        e: {
                                            r: 5,
                                            sX: 5,
                                            sY: 5
                                        }
                                    }, {
                                        b: 3000,
                                        d: 1000,
                                        o: 0.5,
                                        r: 180,
                                        sX: -4,
                                        sY: -4,
                                        e: {
                                            r: 6,
                                            sX: 6,
                                            sY: 6
                                        }
                                    }, {
                                        b: 4500,
                                        d: 1500,
                                        x: -45,
                                        y: 60,
                                        e: {
                                            x: 12,
                                            y: 3
                                        }
                                    }],
                                    [{
                                        b: -1,
                                        d: 1,
                                        o: -1
                                    }, {
                                        b: 4500,
                                        d: 1500,
                                        o: 1,
                                        e: {
                                            o: 5
                                        }
                                    }, {
                                        b: 6500,
                                        d: 2000,
                                        o: -1,
                                        r: 10,
                                        rX: 30,
                                        rY: 20,
                                        e: {
                                            rY: 6
                                        }
                                    }]
                                ];

                                var jssor_html5_AdWords_options = {
                                    $AutoPlay: false,
                                    $Idle: 1600,
                                    $SlideDuration: 400,
                                    $SlideEasing: $Jease$.$InOutSine,
                                    $CaptionSliderOptions: {
                                        $Class: $JssorCaptionSlideo$,
                                        $Transitions: jssor_html5_AdWords_SlideoTransitions
                                    },
                                    $ArrowNavigatorOptions: {
                                        $Class: $JssorArrowNavigator$,
                                        $ChanceToShow: 1
                                    },
                                    $BulletNavigatorOptions: {
                                        $Class: $JssorBulletNavigator$,
                                        $ActionMode: 2
                                    }
                                };

                                var jssor_html5_AdWords_slider = new $JssorSlider$("jssor_html5_AdWords", jssor_html5_AdWords_options);
                                var jssor_html5_AdWords_slider = new $JssorSlider$("jssor_html5_AdWords1", jssor_html5_AdWords_options);
                            });
                        </script>
                        <style>
                            /* Remove the navbar's default margin-bottom and rounded borders */
                            
                            .navbar {
                                margin-bottom: 0;
                                border-radius: 0;
                            }
                            /* Add a gray background color and some padding to the footer */
                            
                            footer {
                                background-color: #f2f2f2;
                                padding: 25px;
                            }
                            .body-width {
                                max-width: 1200px;
                                min-width: 280px;
                                margin: 0 auto;
                            }
                            @media (min-width: 1224px) .row-fluid {
                                width: 100%;
                            }
                            @media (min-width: 768px) {
                                ul.nav li:hover > ul.dropdown-menu {
                                    display: block;
                                }
                                #navbar {
                                    text-align: center;
                                }
                            }
                            #red {
                                border: 1px red solid;
                            }
                            .panel-body li {
                                float: left;
                                height: 287px;
                                position: relative;
                                text-align: center;
                                width: 224px;
                                list-style: none !important;
                                margin: 0px 0px 5px 0px;
                                padding-top: 20px;
                                border: 1px #e3e3e3 solid;
                            }
                            .producttitle {
                                text-align: center;
                                float: left;
                                color: #333;
                                font-size: 13px;
                                width: 116px;
                                padding: 5px 5px 4px 5px;
                                font-family: "open sans";
                                overflow: hidden;
                                width: 95%;
                                height: 21px;
                                text-overflow: ellipsis;
                                white-space: nowrap;
                                font-weight: 600;
                            }
                        </style>
                    </head>

                    <body class="body-width">
                        <nav class="navbar navbar-inverse">
                            <div class="container-fluid">
                                <div class="navbar-header">
                                    <button class="navbar-toggle" data-target="#myNavbar" data-toggle="collapse" type="button"><span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button> <a class="navbar-brand" href="#">Portfolio</a>
                                </div>


                                <div class="collapse navbar-collapse" id="myNavbar">
                                    <ul class="nav navbar-nav">
                                        <li class="active">
                                            <a href="#">Home</a>
                                        </li>


                                        <li>
                                            <a href="#">About</a>
                                        </li>


                                        <li>
                                            <a href="#">Gallery</a>
                                        </li>


                                        <li>
                                            <a href="#">Contact</a>
                                        </li>
                                    </ul>


                                    <ul class="nav navbar-nav navbar-right">
                                        <li>
                                            <a href="#">
                                                <span class="glyphicon glyphicon-log-in"></span> Login
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </nav>


                        <div>
                            <!--div class="row">
</div-->


                            <div class="container-fluid header-grid" style="border: 1px red solid;">
                                <h3>Some of my Work</h3>
                                <br>


                                <div class="row">
                                    <div class="col-sm-4">
                                        <div>
                                            LOGO
                                        </div>
                                    </div>


                                    <div class="col-sm-4">
                                        <form class="navbar-form navbar-left" role="search">
                                            <div class="form-group">
                                                <input class="form-control" id="project1" placeholder="Search" title="search me" type="text">
                                            </div>
                                        </form>
                                    </div>


                                    <div class="col-sm-4">
                                        <p>Some text..</p>
                                    </div>
                                </div>
                                <br>
                                <br>


                                <div class="row">
                                    <nav class="navbar navbar-inverse">
                                        <div class="container-fluid">
                                            <div class="navbar-header">
                                                <!--   <a class="navbar-brand" href="#">Brand</a> -->

                                                <div>
                                                    <ul class="nav navbar-nav">
                                                        <li class="dropdown active">
                                                            <a aria-expanded="false" class="dropdown-toggle" data-toggle="dropdown" href="#" role="button">Electronics</a>
                                                            <ul class="dropdown-menu" role="menu">
                                                                <li class="divider"></li>
                                                                <li class="dropdown-header">
                                                                    <b>Mobiles</b>
                                                                </li>
                                                                <li class="divider"></li>
                                                                <li><a href="#">Samsung</a>
                                                                </li>
                                                                <li><a href="#">Honor</a>
                                                                </li>
                                                                <li class="divider"></li>
                                                                <li class="dropdown-header">
                                                                    <b>Mobiles Accessories</b>
                                                                </li>
                                                                <li class="divider"></li>
                                                                <li><a href="#">Cases & Cover</a>
                                                                </li>
                                                                <li><a href="#">Power Banks</a>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                        <li>
                                                            <a href="#">Link <span class="sr-only">(current)</span></a>
                                                        </li>

                                                        <li>
                                                            <a href="#">Link</a>
                                                        </li>


                                                        <li class="dropdown">
                                                            <a aria-expanded="false" class="dropdown-toggle" data-toggle="dropdown" href="#" role="button">Dropdown</a>
                                                            <ul class="dropdown-menu" role="menu">
                                                                <li>
                                                                    <a href="#">Action</a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">Another action</a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">Something else here</a>
                                                                </li>
                                                                <li class="divider">
                                                                </li>
                                                                <li>
                                                                    <a href="#">Separated link</a>
                                                                </li>
                                                                <li class="divider">
                                                                </li>
                                                                <li>
                                                                    <a href="#">One more separated link</a>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                    <ul class="nav navbar-nav navbar-right">
                                                        <li>
                                                            <a href="#">Link</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </nav>
                                </div>
                                <br>
                                <br>


                                <div class="row">
                                    <ul class="breadcrumb">
                                        <li>
                                            <a href="/">Home</a>
                                        </li>

                                        <c:choose>
                                            <c:when test="${fn:length(urlList) eq 1}">
                                                <li class="active">${fn:replace(urlList[0],'-', ' ')}</li>
                                            </c:when>
                                            <c:when test="${fn:length(urlList) eq 2}">
                                                <li>
                                                    <a href="/${fn:toLowerCase(urlList[0])}">${fn:replace(urlList[0],'-', ' ')}</a>
                                                </li>
                                                <li class="active">${fn:replace(urlList[1],'-', ' ')}</li>
                                            </c:when>
                                            <c:when test="${fn:length(urlList) eq 3}">
                                                <li>
                                                    <a href="/${fn:toLowerCase(urlList[0])}">${fn:replace(urlList[0],'-', ' ')}</a>
                                                </li>
                                                <li>
                                                    <a href="/${fn:toLowerCase(urlList[0])}/${fn:toLowerCase(urlList[1])}">${fn:replace(urlList[1],'-', ' ')}</a>
                                                </li>
                                                <li class="active">${fn:replace(urlList[2],'-', ' ')}</li>
                                            </c:when>
                                            <c:when test="${fn:length(urlList) eq 4}">
                                                <li>
                                                    <a href="/${fn:toLowerCase(urlList[0])}">${fn:replace(urlList[0],'-', ' ')}</a>
                                                </li>
                                                <li>
                                                    <a href="/${fn:toLowerCase(urlList[0])}/${fn:toLowerCase(urlList[1])}">${fn:replace(urlList[1],'-', ' ')}</a>
                                                </li>
                                                <li>
                                                    <a href="/${fn:toLowerCase(urlList[0])}/${fn:toLowerCase(urlList[1])}/${fn:toLowerCase(urlList[2])}">${fn:replace(urlList[2],'-', ' ')}</a>
                                                </li>
                                                <li class="active">${fn:replace(urlList[3],'-', ' ')}</li>
                                            </c:when>
                                        </c:choose>
                                    </ul>
                                </div>


                                <div class="row">
                                    <div class="col-sm-2">
                                        <div class="list-0group">
                                            <a class="list-group-item active" href="#">Brand</a>
                                            <c:forEach items="${brandNames}" var="brand">
                                                <a class="list-group-item" href="#">${brand}</a>
                                            </c:forEach>
                                        </div>
                                    </div>


                                    <div class="col-sm-10">
                                        <div class="row">
                                            <h1>${title}</h1>
                                            <ul class="nav nav-pills">
                                                <c:if test="${fn:length(categoryList) gt 1}">
                                                    <c:forEach items="${categoryList}" var="brand">
                                                        <li>
                                                            <c:set var="lowerCaseBrand" value="${fn:toLowerCase(brand.name)}" />
                                                            <c:choose>
                                                                <c:when test="${not empty brand.url}">
                                                                    <a href="${brand.url}">
                                                                        <img alt="" class="ty-pict ty-subcategories-img" src="${brand.img}" title="">
                                                                        <span>${fn:replace(brand.name,'-', ' ')}</span>
                                                                    </a>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <a href="${url}/${fn:replace(lowerCaseBrand,' ', '-')}">
                                                                        <img alt="" class="ty-pict ty-subcategories-img" src="${brand.name}" title="">
                                                                        <span>${fn:replace(brand.name,'-', ' ')}</span>
                                                                    </a>
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </li>
                                                    </c:forEach>
                                                </c:if>
                                            </ul>
                                        </div>


                                        <div class="row">
                                            <div class="panel-body">
                                                <ul>
                                                    <c:forEach items="${productList}" var="product">
                                                        <li>
                                                            <div style="border: solid 0px #e3e3e3;padding:5px;">
                                                                <%-- <p>${product.productBaseInfo.productIdentifier.productId}</p> --%>
                                                                    <a href="${product.productBaseInfoV1.productUrl}">
                                                                        <%-- <img src="${product.productBaseInfoV1.imageUrls._200x200}" title=""> --%>
                                                                        <a href="${product.productBaseInfoV1.productUrl}" title="Xiaomi Redmi Note 3 16GB Dark Grey" itemprop="itemListElement" class="producttitle ellipsis">${product.productBaseInfoV1.title}</a>
                                                                        <%-- <strong><span>${product.productBaseInfo.productAttributes.title}</span>
                                                                            </strong> --%>
                                                                    </a>
                                                                    <br>
                                                                    <div class="navbar-left" style="margin-left:0px;">
                                                                        <p class="text-right"><b>Rs ${product.productBaseInfoV1.flipkartSpecialPrice.amount}..${product.productBaseInfoV1.flipkartSellingPrice.amount}</b>
                                                                        </p>
                                                                    </div>
                                                                    <div class="navbar-right" style="margin-right:0px;text-decoration:line-through;">
                                                                        <p class="text-right"><b>Rs ${product.productBaseInfoV1.maximumRetailPrice.amount}</b>
                                                                        </p>
                                                                    </div>
                                                            </div>
                                                        </li>
                                                        <li style="width:5px;border:0px;">&nbsp;</li>
                                                    </c:forEach>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br>
                        </div>


                        <footer class="container-fluid text-center">
                            <p>Footer Text</p>
                        </footer>
                    </body>

                    </html>