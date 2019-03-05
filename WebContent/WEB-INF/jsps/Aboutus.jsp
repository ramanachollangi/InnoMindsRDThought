<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Apskey :AboutUs</title>
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
              <a class="login modal-form"  href='${pageContext.request.contextPath}/Login'>Login / Sign Up</a>
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
            <li class="active"><a href='${pageContext.request.contextPath}/Aboutus'>About Us</a></li>
            <li><a href='${pageContext.request.contextPath}/Services'>Service</a></li>
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
			<li><a href='index.html'>Home</a></li>
			<li class="active">About Us</li>
		</ol>

		<div class="row">
			<img src="img/about.png" alt="" class="img-rounded pull-right" width="1000" style="    width: 100%;" >
			<!-- Article main content -->
			<article class="col-sm-8 maincontent">
				<header class="page-header">
					<h1 class="page-title">About us</h1>
				</header>
				
				<h3>ApsKey</h3>
				<p>APSKEY  acts just like a LOCKER  for every individual application . The concept of the Apskey had come from the difficulty of remembering the USERNAMES and PASSWORDS   of all applications which we are using in our day to day life.</p>
				<p>We guys placed all the applications(Banking , Social networks,etc.,) in APSKEY. You canbe able to access any application from our APSKEY . </p>
				
				<p>Once you login into account when you want to login the next time you need not  remember the username and password again we have an option for you to automatically get it.</p>
				
					
				<p>It is very users friendly with maintaining HIGH LEVEL SECURITY PASSWORDS in our application.</p><br>
				<h4>Why to choose us:</h4>
<p>1)We can save our  USERNAMES and PASSWORDS  in Apskey so we don’t need to remember again and again .</p><br>
<p>2)Apskey maintains HIGH SECURITY .</p><br>
<p>3)We can maintain our personal online DAIRY.</p><br>
<p>4)We can save our personal gallery (images and videos).</p><br>
<p>5)We are placing all applications in our APSKEY so we don’t  have any need togo individual websites.</p><br>
<p>6)APSKEY maintaines friendly user interface.</p><br>
			</article>
			<!-- /Article -->
			
			<!-- Sidebar -->
			<!--<aside class="col-sm-4 sidebar sidebar-right">

				<div class="widget">
					<h4>Vacancies</h4>
					<ul class="list-unstyled list-spaces">
						<li><a href="">Lorem ipsum dolor</a><br><span class="small text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, laborum.</span></li>
						<li><a href="">Totam, libero, quis</a><br><span class="small text-muted">Suscipit veniam debitis sed ipsam quia magnam eveniet perferendis nisi.</span></li>
						<li><a href="">Enim, sequi dignissimos</a><br><span class="small text-muted">Reprehenderit illum quod unde quo vero ab inventore alias veritatis.</span></li>
						<li><a href="">Suscipit, consequatur, aut</a><br><span class="small text-muted">Sed, mollitia earum debitis est itaque esse reiciendis amet cupiditate.</span></li>
						<li><a href="">Nam, illo, veritatis</a><br><span class="small text-muted">Delectus, sapiente illo provident quo aliquam nihil beatae dignissimos itaque.</span></li>
					</ul>
				</div>

			</aside> -->
			<!-- /Sidebar -->

		</div>
	</div>	<!-- /container -->
	

	</section>
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