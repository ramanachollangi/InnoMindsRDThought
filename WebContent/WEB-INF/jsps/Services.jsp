<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Apskey :Services</title>
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
	<!--Main bootstrap-theme.css -->
	<link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen" >
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
           </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
            <li ><a href='${pageContext.request.contextPath}/'>Home</a></li>
            <li ><a href='${pageContext.request.contextPath}/Aboutus'>About Us</a></li>
            <li class="active"><a href='${pageContext.request.contextPath}/Services'>Service</a></li>
            <li><a href='${pageContext.request.contextPath}/Contactus'>Contact</a></li>
          </ul>                     
        </div><!--/.nav-collapse -->
      </div>     
    </nav>
  </section>
  <!-- END MENU --> 



  <!-- Start Feature -->
  <section id="feature">
<!-- container -->
	<div class="container">

		<ol class="breadcrumb">
			<li><a href="index.html">Home</a></li>
			<li class="active">Services</li>
		</ol>

		<div class="row">
			
			<!-- Article main content -->
			<article class="col-md-8 maincontent">
				<header class="page-header">
					<h1 class="page-title">Services</h1>
				</header>
				<p>APSKEY acts just like a LOCKER for every individual application . The concept of the Apskey had come from the difficulty of remembering the USERNAMES and PASSWORDS of all applications which we are using in our day to day life.</p>
				<h2>Android Applications:</h2>
				<p>It's something many smartphone users are wont to do--calling up the multitasking menu to show all running apps, then swiping at unused ones in the hope that it'll free up memory and eventually extend battery life.</p>
				<p>According to Craig Federighi, senior vice president of Software Engineering at Apple, the practice of closing running apps has no effect on extending device battery life. In fact, quite the opposite--when closing an app, the OS needs to go through a certain number of processes to remove it from memory, and this actually requires a certain amount of resource utilization. Which is why the act of closing apps over the course of a day could cumulatively lead to using up more battery life compared to leaving them running.</p>

				<blockquote>Operating systems such as iOS are advanced enough to put apps into a 'sleep' state in memory when they are not in active use, and wake them up when needed. This approach leads to a more efficient use of the smartphone's resources.</blockquote>
				<p>This is especially true in the current-day context, where modern smartphones have enough of memory to store numerous apps in a suspended state over the course of its use, negating the need to even close them.</p>
				
					</article>
			<!-- /Article -->
			
			<!-- Sidebar --><br><br><br><br><br><br><br>
			<aside class="col-md-4 sidebar sidebar-right">

				
				<div class="row widget">
					<div class="col-xs-12">
						<h4>ApsKey</h4>
						<p><img src="img/Bild.jpg" alt="" style="width: 100%;"></p>
					</div>
				</div>
				

			</aside>
			<!-- /Sidebar -->

		</div>
	</div>	</section>
  <!-- End Feature -->
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
  
  </body>
</html>