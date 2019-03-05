<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Apskey :ContactUs</title>
 	<!-- Favicon -->
	<link rel="shortcut icon" href="img/Ak.png">
    <!-- Bootstrap -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">    
     <!-- Theme color -->
    <link id="switcher" href="assets/css/theme-color/default-theme.css" rel="stylesheet">
    <!-- Main Style -->
    <link href="css/style.css" rel="stylesheet">
    <!-- Main demo -->
	<link rel="stylesheet" type="text/css" href="css/demo.css">
	<!-- Main common -->
	<link rel="stylesheet" type="text/css" href="css/common.css">
	<!-- Main category -->
	<link rel="stylesheet" type="text/css" href="css/category.css">
	<!-- Main Tickets Booking -->
	<link rel="stylesheet" href="css/Tickets Booking.css">
	<!-- Main bootstrap.min -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<!-- Main font-awesome.min -->
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<!--Main bootstrap-theme-->
	<link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen" >
	
		 <!-- jQuery library -->
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>    
	  <!-- Bootstrap -->
	  <script src="assets/js/bootstrap.js"></script>
	  <!-- Slick Slider -->
	  <script type="text/javascript" src="assets/js/slick.js"></script>    
	  <!-- mixit slider -->
	  <script type="text/javascript" src="assets/js/jquery.mixitup.js"></script>
	  <!-- Add fancyBox -->        
	  <script type="text/javascript" src="assets/js/jquery.fancybox.pack.js"></script>
	  <!-- waypoints -->
	  <script src="assets/js/waypoints.js"></script>
	  <!-- jquery.counterup -->
	  <script src="assets/js/jquery.counterup.js"></script>
	  <!-- Wow animation -->
	  <script type="text/javascript" src="assets/js/wow.js"></script> 
	  <!-- progress bar   -->
	  <script type="text/javascript" src="assets/js/bootstrap-progressbar.js"></script>  
	  <!-- Custom js -->
	  <script type="text/javascript" src="assets/js/custom.js"></script>
	  
	<!--Validation jquery-->
	<script src="http://jqueryvalidation.org/files/dist/jquery.validate.min.js"></script>
	<!--Validation additional-->
	<script src="http://jqueryvalidation.org/files/dist/additional-methods.min.js"></script>
	<!--Validation contact -->
	<script type="text/javascript" src="js/contact.js"></script>
  </head>
  <body> 

  <!-- BEGAIN PRELOADER -->
  <div id="preloader">
    <div id="status">&nbsp;</div>
  </div>
  <!-- END PRELOADER -->

  <!-- SCROLL TOP BUTTON -->
  <a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
  <!-- END SCROLL TOP BUTTON -->

  <!-- Start header -->
  <header id="header">
    <!-- header bottom -->
    <div class="header-bottom">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-sm-6 col-xs-6">
            <div class="header-contact">
              <ul>
                <li>
                  <div class="phone">
                    <i class="fa fa-phone"></i>
                    040-40042189
                  </div>
                </li>
                <li>
                  <div class="mail">
                    <i class="fa fa-envelope"></i>
                    apskeyrenvish@gmail.com
                  </div>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-6">
            <div class="header-login">
               <a class="login modal-form" href='${pageContext.request.contextPath}/Login'>Login / Sign Up</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </header>
  <!-- End header -->
  <!-- BEGIN MENU -->
  <section id="menu-area">      
    <nav class="navbar navbar-default" role="navigation">  
      <div class="container">
        <div class="navbar-header">
          <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
              <!-- LOGO -->      
   <img src="img/Ak.png" alt="" style="margin-top: 22px;">	  
          <!-- TEXT BASED LOGO -->
		
          <a class="navbar-brand" href='${pageContext.request.contextPath}/'>Apskey</a>               
          <!-- IMG BASED LOGO  -->
          <!-- <a class="navbar-brand" href="index.html"><img src="assets/images/logo.png" alt="logo"></a> -->                    
        </div>
        <div id="navbar" class="navbar-collapse collapse">
         <ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
            <li ><a href='${pageContext.request.contextPath}/'>Home</a></li>
            <li ><a href='${pageContext.request.contextPath}/Aboutus'>About Us</a></li>
            <li ><a href='${pageContext.request.contextPath}/Services'>Service</a></li>
            <li class="active"><a href='${pageContext.request.contextPath}/Contactus'>Contact</a></li>
          </ul>                      
        </div><!--/.nav-collapse -->
      </div>     
    </nav>
  </section>
  <!-- END MENU -->
  
	
  <!-- Start contact section  -->
  <section id="contact">
     <div class="container">
	 <ol class="breadcrumb">
			<li><a href='index.html'>Home</a></li>
			<li class="active">Contact Us</li>
		</ol>
       <div class="row">
         <div class="col-md-12">
           <div class="title-area">
              <h2 class="title">Have any Questions?</h2>
             
            </div>
         </div>
         <div class="col-md-12">
           <div class="cotact-area">
             <div class="row">
               <div class="col-md-4">
                 <div class="contact-area-left">
                   <h4>Contact Info</h4>
                   <p>There are many variations of passages of Apskey available, but the majority have suffered alteration in some form, by injected humour</p>
                   <address class="single-address">
                     <p>Flot no:64,Lumbini Avenue,Old Mumbai Hwy, Gachibowli,</p>
                     <p>info@renvishtech.com</p>
                     <p>040:64522777</p>
                   </address> 
                   <div class="footer-right contact-social">
                      <a href="index.html"><i class="fa fa-facebook"></i></a>
                      <a href="#"><i class="fa fa-twitter"></i></a>
                      <a href="#"><i class="fa fa-google-plus"></i></a>
                      <a href="#"><i class="fa fa-linkedin"></i></a>
                      <a href="#"><i class="fa fa-pinterest"></i></a>
                    </div>                
                 </div>
               </div>
               <div class="col-md-8">
                 <div class="contact-area-right">
                   <form action="contacts" method="post" comments-form contact-form" id="cont">
                    <div class="form-group">                        
                      <input type="text" class="form-control" placeholder="Your Name" name="name">
                    </div>
                    <div class="form-group">                        
                      <input type="email" class="form-control" placeholder="Email" name="email">
                    </div>
                     <div class="form-group">                        
                      <input type="text" class="form-control" placeholder="Subject" name="sub">
                    </div>
                    <div class="form-group">                        
                      <textarea placeholder="Comment" rows="3" class="form-control" name="message"></textarea>
                    </div>
                    <button class="comment-btn">Submit Comment</button>
                  </form>
                 </div>
               </div>
             </div>
           </div>
         </div>
       </div>
     <!-- Start google map -->
 <div style="width:1268px;max-width:100%;overflow:hidden;height:500px;color:red;"><div id="embed-map-display" style="height:100%; width:100%;max-width:100%;"><iframe style="height:100%;width:100%;border:0;" frameborder="0" src="https://www.google.com/maps/embed/v1/search?q=renvish+technologies+privete+limited&key=AIzaSyAN0om9mFmy1QN6Wf54tXAowK4eT0ZUPrU"></iframe></div><a class="embedded-map-html" rel="nofollow" href="https://www.hostingreviews.website" id="get-map-data">https://www.hostingreviews.website</a><style>#embed-map-display .text-marker{max-width:none!important;background:none!important;}img{max-width:none}</style></div><script src="https://www.hostingreviews.website/google-maps-authorization.js?id=58e3513d-4abd-472a-82dd-17f8b1cf2aec&c=embedded-map-html&u=1461244915" defer="defer" async="async"></script>   
  <!-- End google map -->
      </div>
  </section>
  <!-- End contact section  -->
 <!-- Start footer -->
  <footer id="footer">
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-sm-6">
          <div class="footer-left">
            <p>Copyright &copy; 2016<a href="">Apskey.in</a></p>
          </div>
        </div>
        <div class="col-md-6 col-sm-6">
          <div class="footer-right">
            <a href="index.html"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-google-plus"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-pinterest"></i></a>
          </div>
        </div>
      </div>
    </div>
  </footer>
    <!-- End footer -->
    
     </body>
</html>