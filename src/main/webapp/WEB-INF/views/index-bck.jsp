<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://bootswatch.com/spacelab/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
        
        .dropdown-menu1>li>a {
                display: block;
                padding: 3px 20px;
                clear: both;
                font-weight: normal;
                line-height: 1.42857143;
                color: #333333;
                white-space: nowrap;
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
        
        @media (min-width: 1224px)
        .row-fluid {
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
                border:1px red solid;
        }
        
  </style>
   
</head>
<body class="body-width">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Portfolio</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Gallery</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
<div>
<!--div class="row">
</div-->
        <div style="border:1px red solid;" class="container-fluid  header-grid">
                 <h3>Some of my Work</h3><br>
                  <div class="row">
                        <div class="col-sm-4">
                          <div>LOGO</div>
                        
                        </div>
                        <div class="col-sm-4"> 
                          <form class="navbar-form navbar-left" role="search">
                                <div class="form-group">
                                  <input type="text" class="form-control" title = "search me" placeholder="Search">
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
                                                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
                                                        <span class="sr-only">Toggle navigation</span>
                                                        <span class="icon-bar"></span>
                                                        <span class="icon-bar"></span>
                                                        <span class="icon-bar"></span>
                                                  </button>
                                                  <a class="navbar-brand" href="#">Brand</a>
                                                </div>

                                                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
                                                  <ul class="nav navbar-nav">
                                                        <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
                                                        <li><a href="#">Link</a></li>
                                                        <li class="dropdown">
                                                          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown</a>
                                                          <ul class="dropdown-menu" role="menu1">
                                                                <li class="dropdown-header">Action</li>
                                                                <li><a href="#">Black tea</a></li>
                                                                <li><a href="#">Green tea</a></li>
                                                                <li><a href="#">Another action</a></li>
                                                                <li class="dropdown-header">Something else here</li>
                                                                <li><a href="#">Something else here</a></li>
                                                                <li class="divider"></li>
                                                                <li><a href="#">Separated link</a></li>
                                                                <li class="divider"></li>
                                                                <li><a href="#">One more separated link</a></li>
                                                          </ul>
                                                        </li>
                                                        <li class="dropdown">
                                                          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown</a>
                                                          <ul class="dropdown-menu" role="menu">
                                                                <li><a href="#">Action</a></li>
                                                                <li><a href="#">Another action</a></li>
                                                                <li><a href="#">Something else here</a></li>
                                                                <li class="divider"></li>
                                                                <li><a href="#">Separated link</a></li>
                                                                <li class="divider"></li>
                                                                <li><a href="#">One more separated link</a></li>
                                                          </ul>
                                                        </li>
                                                  </ul>
                                                
                                                  <ul class="nav navbar-nav navbar-right">
                                                        <li><a href="#">Link</a></li>
                                                  </ul>
                                                </div>
                                  </div>
                        </nav>
                  </div>
                  
                 
        </div>
<br>
        </div>
<div style="border:1px red solid;">
        <div class="row">
                <div class="col-sm-8">
                        <div class="jumbotron">
                          <div class="container text-center">
                                <h1>My Portfolio</h1>      
                                <p>Some text that represents "Me"...</p>
                          </div>
                        </div>
                </div>
                <div class="col-sm-4">
                        <div class="jumbotron">
                          <div class="container text-center">
                                <h1>My Portfolio</h1>      
                                <p>Some text that represents "Me"...</p>
                          </div>
                        </div>a
                </div>
        </div>
</div>

<div style="border:1px red solid;">
        <div class="row">
                <!-- Large modal -->
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-mmm">Large modal</button>

                <div class="modal fade bs-example-modal-mmm" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                  <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                                <div class="modal-header"> 
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">×</span>
                                        </button> 
                                        <h4 class="modal-title" id="myLargeModalLabel">Large modal</h4> 
                                        <div class="row">
                                                <div class="col-sm-4">
                                                        <div style="border:1px red solid;">
                                                                <img width="100%" height= "100%" src="img/slide1.png" alt="First Slide">
                                                        </div>
                                                </div>
                                                <div class="col-sm-8">
                                                        <div style="border:1px red solid;">
                                                                <h1>images</h1>
                                                                <h4>Acer</h4>
                                                                <p>27" Widescreen LCD display - 1920 x 1080 resolution - 100,000,000:1 contrast ratio - white LED backlight - 2ms response time - integrated speakers</p>
                                                                <br>
                                                                <h4>Acer</h4>
                                                                
                                                        </div>
                                                </div>
                                        </div>
                                </div>
                        </div>
                  </div>
                </div>

                <!-- Small modal -->
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">Small modal</button>

                <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
                  <div class="modal-dialog modal-sm">
                        <div class="modal-content">
                          ...
                        </div>
                  </div>
                </div>
        </div>
</div>
        
        
  
<div class="container-fluid bg-3 text-left">    
  <h3>Hot Deals</h3><br>
  <div class="row">
    <div id="red" class="col-sm-2">
     <div  id="red" class="navbar-right"> 
                <p class="text-right">Some text..</p>
         </div>
      <img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
           <div  id="red" class="navbar-left"> 
                <p class="text-right">Some text..</p>
         </div>
          <div  id="red" class="navbar-right"> 
                <p class="text-right">Some text..</p>
         </div>
    </div>
    <div class="col-sm-2"> 
      <p>Some text..</p>
      <img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-2"> 
      <p>Some text..</p>
      <img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
    </div>
  <div class="col-sm-2">
      <p>Some text..</p>
      <img src="http://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
    </div>
        <div class="col-sm-2">
      <p>Some text..</p>
        <div id="myCarousel1" class="carousel slide" data-ride="carousel" data-interval="false">
                        <!-- Carousel indicators -->
                        <ol class="carousel-indicators">
                                <li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel1" data-slide-to="1"></li>
                                <li data-target="#myCarousel1" data-slide-to="2"></li>
                        </ol>   
                        <!-- Wrapper for carousel items -->
                        <div class="carousel-inner">
                                <div class="item active">
                                        <img src="img/slide1.png" alt="First Slide">
                                </div>
                                <div class="item">
                                        <img src="img/slide2.jpg" alt="Second Slide">
                                </div>
                                <div class="item">
                                        <img src="img/slide3.jpg" alt="Third Slide">
                                </div>
                        </div>
                                <!-- Carousel controls -->
                                <a class="carousel-control left" href="#myCarousel1" data-slide="prev">
                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                </a>
                                <a class="carousel-control right" href="#myCarousel1" data-slide="next">
                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                </a>
                </div>
    </div>
        <div class="col-sm-2">
      <p>Some text..DFSA</p>
                <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="false">
                        <!-- Carousel indicators -->
                        <ol class="carousel-indicators">
                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                <li data-target="#myCarousel" data-slide-to="2"></li>
                        </ol>   
                        <!-- Wrapper for carousel items -->
                        <div class="carousel-inner">
                                
                                        <div class="item active">
                                                <a href="http://estiloasertivo.blogspot.com.es/"> 
                                                        <img src="img/slide1.png" alt="First Slide">
                                                </a>
                                        </div>
                                        <div class="item">
                                                <img src="img/slide2.jpg" alt="Second Slide">
                                        </div>
                                        <div class="item">
                                                <img src="img/slide3.jpg" alt="Third Slide">
                                        </div>
                                 
                        </div>
                                <!-- Carousel controls -->
                                <a class="carousel-control left" href="#myCarousel" data-slide="prev">
                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                </a>
                                <a class="carousel-control right" href="#myCarousel" data-slide="next">
                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                </a>
                </div>
    </div>
  </div>
</div><br>



<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

</body>
</html>