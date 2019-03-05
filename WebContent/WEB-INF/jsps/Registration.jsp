<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Apskey : Registration</title>
   	<!-- Favicon -->
   	<link rel="shortcut icon" href="img/Ak.png">
    <!-- Font Awesome -->
    <link href="assets/css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">    
    <!-- Slick slider -->
    <link rel="stylesheet" type="text/css" href="assets/css/slick.css"/> 
    <!-- Fancybox slider -->
    <link rel="stylesheet" href="assets/css/jquery.fancybox.css" type="text/css" media="screen" /> 
    <!-- Animate css -->
    <link rel="stylesheet" type="text/css" href="assets/css/animate.css"/>  
    <!-- Bootstrap progressbar  -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap-progressbar-3.3.4.css"/> 
     <!-- Theme color -->
    <link id="switcher" href="assets/css/theme-color/default-theme.css" rel="stylesheet">
    <!-- Main Style -->
    <link href="css/style.css" rel="stylesheet">
    <!-- Main -->
    <link rel="stylesheet" href="assets/css/main.css">
    <!-- Main bootstrap-theme -->
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
 	<!-- Validation jquery -->
	<script src="http://jqueryvalidation.org/files/dist/jquery.validate.min.js"></script>
	<!-- Validation additional-->
	<script src="http://jqueryvalidation.org/files/dist/additional-methods.min.js"></script>
	<!-- Validation signup-->
	<script type="text/javascript" src="js/signup.js"></script>
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
  <img src="img/Ak.png" alt="">		  
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
            <li ><a href='${pageContext.request.contextPath}/Contactus'>Contact</a></li>
          </ul>                      
        </div><!--/.nav-collapse -->	
      </div>     
    </nav>
  </section>
  <!-- END MENU -->
  
	
  <!-- Start contact section  -->
  <section id="contact">
	<div class="container">

		<div class="row">
			
			<!-- Article main content -->
			<article class="col-xs-12 maincontent">
				<header class="page-header">
					<h1 class="page-title">Sign Up</h1>
				</header>
				
				<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
					<div class="panel panel-default">
						<div class="panel-body">
							<h3 class="thin text-center">Register a new account</h3>
							<div class="col-lg-4 text-right">
										<button class="btn btn-action" value="submit" type="submit"><a href='${pageContext.request.contextPath}/Login'>Login</a></button>
									</div>
							<br><br>

							<form action="insert" method="post" id="signup" modelAttribute="user">
								<div class="top-margin">
									<label>Name</label>
									<input type="text" name="name" class="form-control">
								</div>
								<div class="top-margin">
									<label>Email Address</label>
									<input type="text" name="email" class="form-control">
								</div>
								<div class="top-margin">
									<label>Mobile Number<span class="text-danger">*</span></label>
									<input type="number" name="mobile" class="form-control">
								</div>

								<div class="top-margin"></div>
										<label>Password <span class="text-danger">*</span></label>
										<input type="password" name="password" class="form-control">
									</div>
									
								</div>

								<hr>

								<div class="row">
									
									<div class="col-lg-4 text-right">
										<button class="btn btn-action" type="submit">Register</button>
									</div>
								</div>
							</form>
						</div>
					</div>

				</div>
				
			</article>
			<!-- /Article -->

		</div>
	</div>	<!-- /container -->
	

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
  </body>
</html>
