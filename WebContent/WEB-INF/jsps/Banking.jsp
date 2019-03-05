<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Apskey : BankingSites</title>
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
  	<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  	<script> 
	(function ($) {
	  jQuery.expr[':'].Contains = function(a,i,m){
		  return (a.textContent || a.innerText || "").toUpperCase().indexOf(m[3].toUpperCase())>=0;
	  };
	 
	  function listFilter(header, list) {
		var form = $("<form>").attr({"class":"filterform","action":""}),
			input = $("<input>").attr({"class":"filterinput","type":"text"});
		$(form).append(input).appendTo(m_search);
	 
		$(input)
		  .change( function () {
			var filter = $(this).val();
			if(filter) {
			  $(list).find("a:not(:Contains(" + filter + "))").parent().hide();
			  $(list).find("a:Contains(" + filter + ")").parent().show();
			} else {
			  $(list).find("li").show();
			}
			return false;
		  })
		.keyup( function () {
			$(this).change();
		});
	  }
	
	  $(function () {
		listFilter($("#m_search"), $("#li"));
	  });
	}(jQuery));
	</script> 
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
  
	
	  <script src="http://jqueryvalidation.org/files/dist/jquery.validate.min.js"></script>
<script src="http://jqueryvalidation.org/files/dist/additional-methods.min.js"></script>
<script type="text/javascript" src="js/facebook.js"></script>
	<script type="text/javascript" src="js/gmail.js"></script> 
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
     <!-- header top search -->
    <div class="header-top">
      <div class="container">
        <form action="">
          <div input type="text" placeholder="Type your search keyword here and hit Enter..." name="s" id="m_search" style="display: inline-block;margin-left: 43%;"></div>
         </form>
        </div>
    </div>
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
            <li class="active"><a href=#>Home</a></li>
            <li><a href=#>About Us</a></li>
            <li><a href=#>Service</a></li>
            <li><a href=#>Contact</a></li>
          </ul>                        
        </div><!--/.nav-collapse -->
        <a href="#" id="search-icon">
          <i class="fa fa-search">            
          </i>
        </a>
      </div>     
    </nav>
  </section>
  <!-- END MENU --> 



  <!-- Start Feature -->
  <section id="feature">
<!-- container -->
	<div class="container">
	   <div id="li">
   <div class="r-title mr-t20">
<span class="f14 c-6">sort by:</span>
<a href='${pageContext.request.contextPath}/Loginsucess' class="link  ">Apps</a>
<a href='${pageContext.request.contextPath}/ShopingSites' class="link ">Shoping Sites</a>
<a href='${pageContext.request.contextPath}/Banking' class="link current">Banking Sectors</a>
<a href='${pageContext.request.contextPath}/Government' class="link ">Government Sites</a>
<a href='${pageContext.request.contextPath}/TicketsBooking' class="link ">Tickets Booking</a>
<a href='${pageContext.request.contextPath}/JobSites' class="link ">Job Sites</a>
<a href='${pageContext.request.contextPath}/Wallets' class="link ">Wallets</a>
<a href='${pageContext.request.contextPath}/OnlineGameSites' class="link ">Games@Extra</a></div>
<ul class="r-app-category cf">
<li><a href="http://www.axisbank.com/">Axis</a>
				<a href="http://www.axisbank.com/" class="pic">
				<img src="img/axis bank.jpeg" ></a>
				
<a href="#popup" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup">
				<div class="popup-container">
				<form action="save" method="post" class="popup-form" id="form30">
				<strong>Axis Bank</strong></p>
				<div id="group">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Axis"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				</form>
				</div>
				</div>
		<a href="#popupa" class="popup-link1">Show</a>
				<div class="popup-wrapper" id="popupa">
				<div class="popup-container">
				<form id="forma" action="show" method="post">
				<strong>Enter Your Login OTP </strong></p>
				<div id="groupa">
				<p><input type="text" name="otp" placeholder="Enter Otp Nuber"></p>
				<p><input type="hidden" name="accoType" value="Axis"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="http://www.idbi.com/index.asp">IDBI</a>
				<a href="http://www.idbi.com/index.asp" class="pic">
				<img src="img/idbi.gif"></a>
				
<a href="#popup0" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup0">
				<div class="popup-container">
				<form id="form" action="save" method="post">
				<strong>IDBI</strong></p>
				<div id="group">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="IDBI"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				</form>
				</div>
				</div>
		<a href="#popupb" class="popup-link2">Show</a>
				<div class="popup-wrapper" id="popupb">
				<div class="popup-container">
				<form id="formb" action="show" method="post">
				<strong>Enter Your Login OTP </strong></p>
				<div id="groupb">
				<p><input type="text" name="otp" placeholder="Enter Otp Nuber"></p>
				<p><input type="hidden" name="accoType" value="IDBI"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="http://www.bankofbaroda.in/">Bank of Baroda</a>
				<a href="http://www.bankofbaroda.in/" class="pic">
				<img src="img/bank of baroda.jpg"></a>
				
<a href="#popup1" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup1">
				<div class="popup-container">
				<form id="form1" action="save" method="post">
				<strong>Bank of Baroda</strong></p>
				<div id="group1">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Bank of Baroda"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				</form>
				</div>
				</div>
		<a href="#popupc" class="popup-link3">Show</a>
				<div class="popup-wrapper" id="popupc">
				<div class="popup-container">
				<form id="formc" action="show" method="post">
				<strong>Enter Your Login OTP </strong></p>
				<div id="groupc">
				<p><input type="text" name="otp" placeholder="Enter Otp Nuber"></p>
				<p><input type="hidden" name="accoType" value="Bank of Baroda"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="https://www.canarabank.in/">Canara Bank</a>
				<a href="https://www.canarabank.in/" class="pic">
				<img src="img/canara bank.jpg"></a>
				
<a href="#popup2" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup2">
				<div class="popup-container">
				<form id="form2" action="save" method="post">
				<strong>Canara Bank</strong></p>
				<div id="group2">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Canara Bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				</form>
				</div>
				</div>
		<a href="#popupd" class="popup-link4">Show</a>
				<div class="popup-wrapper" id="popupd">
				<div class="popup-container">
				<form id="formd" action="show" method="post">
				<strong>Enter Your Login OTP </strong></p>
				<div id="groupd">
				<p><input type="text" name="otp" placeholder="Enter Otp Nuber"></p>
				<p><input type="hidden" name="accoType" value="Canara Bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="http://ingvysya.kotak.com/personal-banking/products/home.aspx">Ingvysa Bank</a>
				<a href="http://ingvysya.kotak.com/personal-banking/products/home.aspx" class="pic">
				<img src="img/ingvysa bank.jpg"></a>
				
<a href="#popup3" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup3">
				<div class="popup-container">
				<form id="form3" action="save" method="post">
				<strong>Ingvysa Bank</strong></p>
				<div id="group3">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Ingvysa Bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				</form>
				</div>
				</div>
		<a href="#popupe" class="popup-link5">Show</a>
				<div class="popup-wrapper" id="popupe">
				<div class="popup-container">
				<form id="forme" action="show" method="post">
				<strong>Enter Your Login OTP </strong></p>
				<div id="groupe">
				<p><input type="text" name="otp" placeholder="Enter Otp Nuber"></p>
				<p><input type="hidden" name="accoType" value="Ingvysa Bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="https://www.southindianbank.com/">S.IndianBank</a>
				<a href="https://www.southindianbank.com/" class="pic">
				<img src="img/south indian bank.jpg"></a>
				
<a href="#popup4" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup4">
				<div class="popup-container">
				<form id="form4" action="save" method="post">
				<strong>South Indian Bank</strong></p>
				<div id="group4">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="SouthIndianBank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				</form>
				</div>
				</div>
		<a href="#popupf" class="popup-link5">Show</a>
				<div class="popup-wrapper" id="popupf">
				<div class="popup-container">
				<form id="formf" action="show" method="post">
				<strong>Enter Your Login OTP </strong></p>
				<div id="groupf">
				<p><input type="text" name="otp" placeholder="Enter Otp Nuber"></p>
				<p><input type="hidden" name="accoType" value="SouthIndianBank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="http://www.cityunionbank.com/english/home.aspx">Citi Union Bank</a>
				<a href="http://www.cityunionbank.com/english/home.aspx" class="pic">
				<img src="img/citi union bank.jpg"></a>
				
<a href="#popup5" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup5">
				<div class="popup-container">
				<form id="form5" action="save" method="post">
				<strong>Citi Union Bank</strong></p>
				<div id="group5">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Citi Union Bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				</form>
				</div>
				</div>
		<a href="#popupg" class="popup-link6">Show</a>
				<div class="popup-wrapper" id="popupg">
				<div class="popup-container">
				<form id="formg" action="show" method="post">
				<strong>Enter Your Login OTP </strong></p>
				<div id="groupg">
				<p><input type="text" name="otp" placeholder="Enter Otp Nuber"></p>
				<p><input type="hidden" name="accoType" value="Citi Union Bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="http://www.kotak.com/">K.M Bank</a>
				<a href="http://www.kotak.com/" class="pic">
				<img src="img/kotak-mahindra-bank.png"></a>
				
<a href="#popup6" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup6">
				<div class="popup-container">
				<form id="form6" action="save" method="post">
				<strong>Kotak Mahindra Bank</strong></p>
				<div id="group6">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Kotak Mahindra Bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				</form>
				</div>
				</div>
		<a href="#popuph" class="popup-link7">Show</a>
				<div class="popup-wrapper" id="popuph">
				<div class="popup-container">
				<form id="formh" action="show" method="post">
				<strong>Enter Your Login OTP </strong></p>
				<div id="grouph">
				<p><input type="text" name="otp" placeholder="Enter Otp Nuber"></p>
				<p><input type="hidden" name="accoType" value="Kotak Mahindra Bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="https://www.unionbankonline.co.in/">Union Bank</a>
				<a href="https://www.unionbankonline.co.in/" class="pic">
				<img src="img/Union Bank.jpg"></a>
				
<a href="#popup7" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup7">
				<div class="popup-container">
				<form id="form7" action="save" method="post">
				<strong>Union Bank</strong></p>
				<div id="group7">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Union Bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				</form>
				</div>
				</div>
		<a href="#popupi" class="popup-link8">Show</a>
				<div class="popup-wrapper" id="popupi">
				<div class="popup-container">
				<form id="formi" action="show" method="post">
				<strong>Enter Your Login OTP </strong></p>
				<div id="groupi">
				<p><input type="text" name="otp" placeholder="Enter Otp Nuber"></p>
				<p><input type="hidden" name="accoType" value="Union Bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="https://www.yesbank.in/">Yes Bank</a>
				<a href="https://www.yesbank.in/" class="pic">
				<img src="img/Yes Bank.jpg"></a>
				
<a href="#popup8" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup8">
				<div class="popup-container">
				<form id="form8" action="save" method="post">
				<strong>Yes Bank</strong></p>
				<div id="group8">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Yes Bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				</form>
				</div>
				</div>
		<a href="#popupj" class="popup-link9">Show</a>
				<div class="popup-wrapper" id="popupj">
				<div class="popup-container">
				<form id="formj" action="show" method="post">
				<strong>Enter Your Login OTP </strong></p>
				<div id="groupj">
				<p><input type="text" name="otp" placeholder="Enter Otp Nuber"></p>
				<p><input type="hidden" name="accoType" value="Yes Bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="https://www.pnbindia.in/En/ui/Home.aspx">P.N Bank</a>
				<a href="https://www.pnbindia.in/En/ui/Home.aspx" class="pic">
				<img src="img/Punjab-National-Bank.jpg"></a>
				
<a href="#popup9" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup9">
				<div class="popup-container">
				<form id="form9" action="save" method="post">
				<strong>Punjab National Bank</strong></p>
				<div id="group9">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="P.N Bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				</form>
				</div>
				</div>
		<a href="#popupk" class="popup-link10">Show</a>
				<div class="popup-wrapper" id="popupk">
				<div class="popup-container">
				<form id="formk" action="show" method="post">
				<strong>Enter Your Login OTP </strong></p>
				<div id="groupk">
				<p><input type="text" name="otp" placeholder="Enter Otp Nuber"></p>
				<p><input type="hidden" name="accoType" value="P.N Bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="http://www.corpbank.com/">Corpo Bank</a>
				<a href="http://www.corpbank.com/" class="pic">
				<img src="img/Corporation-Bank.jpg"></a>
				
<a href="#popup10" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup10">
				<div class="popup-container">
				<form id="form10" action="save" method="post">
				<strong>Corporation Bank</strong></p>
				<div id="group10">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Corporation Bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				</form>
				</div>
				</div>
		<a href="#popupl" class="popup-link11">Show</a>
				<div class="popup-wrapper" id="popupl">
				<div class="popup-container">
				<form id="forml" action="show" method="post">
				<strong>Enter Your Login OTP </strong></p>
				<div id="groupl">
				<p><input type="text" name="otp" placeholder="Enter Otp Nuber"></p>
				<p><input type="hidden" name="accoType" value="Corporation Bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="https://www.online.citibank.co.in/">Citi Bank</a>
				<a href="https://www.online.citibank.co.in/" class="pic">
				<img src="img/citibank.png"></a>
				
				<a href="#popup11" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup11">
				<div class="popup-container">
				<form id="form11" action="save" method="post">
				<strong>CitiBank</strong></p>
				<div id="group11">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Citi Bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				</form>
				</div>
				</div>
		<a href="#popupm" class="popup-link12">Show</a>
				<div class="popup-wrapper" id="popupm">
				<div class="popup-container">
				<form id="formm" action="show" method="post">
				<strong>Enter Your Login OTP </strong></p>
				<div id="groupm">
				<p><input type="text" name="otp" placeholder="Enter Otp Nuber"></p>
				<p><input type="hidden" name="accoType" value="Citi Bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="http://www.kvb.co.in/">K.v Bank</a>
				<a href="http://www.kvb.co.in/" class="pic">
				<img src="img/karuvysa bank.jpg"></a>
			
<a href="#popup12" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup12">
				<div class="popup-container">
				<form id="form12" action="save" method="post">
				<strong>Karurvysya Bank</strong></p>
				<div id="group12">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Karurvysya Bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				</form>
				</div>
				</div>
		<a href="#popupn" class="popup-link13">Show</a>
				<div class="popup-wrapper" id="popupn">
				<div class="popup-container">
				<form id="formn" action="show" method="post">
				<strong>Enter Your Login OTP </strong></p>
				<div id="groupn">
				<p><input type="text" name="otp" placeholder="Enter Otp Nuber"></p>
				<p><input type="hidden" name="accoType" value="Karurvysya Bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="https://www.syndicatebank.in/english/home.aspx">Syndicate Bank</a>
				<a href="https://www.syndicatebank.in/english/home.aspx" class="pic">
				<img src="img/Syndicate-Bank.jpg"></a>
				
<a href="#popup13" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup13">
				<div class="popup-container">
				<form id="form13" action="save" method="post">
				<strong>Syndicate Bank</strong></p>
				<div id="group13">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Syndicate Bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				</form>
				</div>
				</div>
		<a href="#popupo" class="popup-link14">Show</a>
				<div class="popup-wrapper" id="popupo">
				<div class="popup-container">
				<form id="formo" action="show" method="post">
				<strong>Enter Your Login OTP </strong></p>
				<div id="groupo">
				<p><input type="text" name="otp" placeholder="Enter Otp Nuber"></p>
				<p><input type="hidden" name="accoType" value="Syndicate Bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="http://www.bankofindia.co.in/english/home.aspx">Bank of India</a>
				<a href="http://www.bankofindia.co.in/english/home.aspx" class="pic">
				<img src="img/BankofIndia.png"></a>
				
<a href="#popup14" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup14">
				<div class="popup-container">
				<form id="form14" action="save" method="post">
				<strong>Bank of India</strong></p>
				<div id="group14">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Bank of India"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				</form>
				</div>
				</div>
		<a href="#popupp" class="popup-link15">Show</a>
				<div class="popup-wrapper" id="popupp">
				<div class="popup-container">
				<form id="formp" action="show" method="post">
				<strong>Enter Your Login OTP </strong></p>
				<div id="groupp">
				<p><input type="text" name="otp" placeholder="Enter Otp Nuber"></p>
				<p><input type="hidden" name="accoType" value="Bank of India"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="https://www.indianbank.net.in/jsp/startIB.jsp">Indian bank</a>
				<a href="https://www.indianbank.net.in/jsp/startIB.jsp" class="pic">
				<img src="img/Indian bank.jpg"></a>
				
<a href="#popup15" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup15">
				<div class="popup-container">
				<form id="form15" action="save" method="post">
				<strong>Indian bank</strong></p>
				<div id="group15">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Indian bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				</form>
				</div>
				</div>
		<a href="#popupq" class="popup-link16">Show</a>
				<div class="popup-wrapper" id="popupq">
				<div class="popup-container">
				<form id="formq" action="show" method="post">
				<strong>Enter Your Login OTP </strong></p>
				<div id="groupq">
				<p><input type="text" name="otp" placeholder="Enter Otp Nuber"></p>
				<p><input type="hidden" name="accoType" value="Indian bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="https://www.ucobank.com/">UCO Bank</a>
				<a href="https://www.ucobank.com/" class="pic">
				<img src="img/UCO Bank.jpg"></a>
				
<a href="#popup16" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup16">
				<div class="popup-container">
				<form id="form16" action="save" method="post">
				<strong>UCO Bank</strong></p>
				<div id="group16">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="UCO Bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				</form>
				</div>
				</div>
		<a href="#popupr" class="popup-link17">Show</a>
				<div class="popup-wrapper" id="popupr">
				<div class="popup-container">
				<form id="formr" action="show" method="post">
				<strong>Enter Your Login OTP </strong></p>
				<div id="groupr">
				<p><input type="text" name="otp" placeholder="Enter Otp Nuber"></p>
				<p><input type="hidden" name="accoType" value="UCO Bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="https://www.mahaconnect.in/jsp/index.html">Maharstra</a>
				<a href="https://www.mahaconnect.in/jsp/index.html" class="pic">
				<img src="img/BankofMaharshtra.jpg"></a>
				
<a href="#popup17" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup17">
				<div class="popup-container">
				<form id="form17" action="save" method="post">
				<strong>Bank of Maharshtra</strong></p>
				<div id="group17">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Maharshtra Bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				</form>
				</div>
				</div>
		<a href="#popups" class="popup-link18">Show</a>
				<div class="popup-wrapper" id="popups">
				<div class="popup-container">
				<form id="forms" action="show" method="post">
				<strong>Enter Your Login OTP </strong></p>
				<div id="groups">
				<p><input type="text" name="otp" placeholder="Enter Otp Nuber"></p>
				<p><input type="hidden" name="accoType" value="Maharshtra Bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="https://www.centralbank.net.in/jsp/startMain.jsp">Central Bank</a>
				<a href="https://www.centralbank.net.in/jsp/startMain.jsp" class="pic">
				<img src="img/CentralBankofIndia.png"></a>
				
<a href="#popup18" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup18">
				<div class="popup-container">
				<form id="form18" action="save" method="post">
				<strong>Central Bank of India</strong></p>
				<div id="group18">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Central Bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				</form>
				</div>
				</div>
		<a href="#popupt" class="popup-link19">Show</a>
				<div class="popup-wrapper" id="popupt">
				<div class="popup-container">
				<form id="formt" action="show" method="post">
				<strong>Enter Your Login OTP </strong></p>
				<div id="groupt">
				<p><input type="text" name="otp" placeholder="Enter Otp Nuber"></p>
				<p><input type="hidden" name="accoType" value="Central Bank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="https://www.iob.in/">Overseas Bank</a>
				<a href="https://www.iob.in/" class="pic">
				<img src="img/IndianoverseasBank.png"></a>
				
<a href="#popup19" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup19">
				<div class="popup-container">
				<form id="form19" action="save" method="post">
				<strong>Indian overseas Bank</strong></p>
				<div id="group19">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="OverseasBank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				</form>
				</div>
				</div>
		<a href="#popupu" class="popup-link20">Show</a>
				<div class="popup-wrapper" id="popupu">
				<div class="popup-container">
				<form id="formu" action="show" method="post">
				<strong>Enter Your Login OTP </strong></p>
				<div id="groupu">
				<p><input type="text" name="otp" placeholder="Enter Otp Nuber"></p>
				<p><input type="hidden" name="accoType" value="OverseasBank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="https://www.onlinesbm.com/">SBMysore</a>
				<a href="https://www.onlinesbm.com/" class="pic">
				<img src="img/SBM.png"></a>
				
<a href="#popup20" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup20">
				<div class="popup-container">
				<form id="form20" action="save" method="post">
				<strong>State Bank of Mysore</strong></p>
				<div id="group20">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="SBMysore"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				</form>
				</div>
				</div>
		<a href="#popupv" class="popup-link21">Show</a>
				<div class="popup-wrapper" id="popupv">
				<div class="popup-container">
				<form id="formv" action="show" method="post">
				<strong>Enter Your Login OTP </strong></p>
				<div id="groupv">
				<p><input type="text" name="otp" placeholder="Enter Otp Nuber"></p>
				<p><input type="hidden" name="accoType" value="SBMysore"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="https://www.allahabadbank.in/english/home.aspx">Allahabad Bank</a>
				<a href="https://www.allahabadbank.in/english/home.aspx" class="pic">
				<img src="img/Allahabad Bank.png"></a>
				
<a href="#popup21" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup21">
				<div class="popup-container">
				<form id="form21" action="save" method="post">
				<strong>Allahabad Bank</strong></p>
				<div id="group21">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="AllahabadBank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				</form>
				</div>
				</div>
		<a href="#popupw" class="popup-link22">Show</a>
				<div class="popup-wrapper" id="popupw">
				<div class="popup-container">
				<form id="formw" action="show" method="post">
				<strong>Enter Your Login OTP </strong></p>
				<div id="groupw">
				<p><input type="text" name="otp" placeholder="Enter Otp Nuber"></p>
				<p><input type="hidden" name="accoType" value="AllahabadBank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="http://www.icicibank.com/">ICICI-Bank</a>
				<a href="http://www.icicibank.com/" class="pic">
				<img src="img/ICICI-Bank.jpg"></a>
				
<a href="#popup22" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup22">
				<div class="popup-container">
				<form id="form22" action="save" method="post">
				<strong>ICICI-Bank</strong></p>
				<div id="group22">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="ICICIBank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				</form>
				</div>
				</div>
		<a href="#popupx" class="popup-link23">Show</a>
				<div class="popup-wrapper" id="popupx">
				<div class="popup-container">
				<form id="formx" action="show" method="post">
				<strong>Enter Your Login OTP </strong></p>
				<div id="groupx">
				<p><input type="text" name="otp" placeholder="Enter Otp Nuber"></p>
				<p><input type="hidden" name="accoType" value="ICICIBank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="https://www.sbhyd.com/">SBH</a>
				<a href="https://www.sbhyd.com/" class="pic">
				<img src="img/sbh.png"></a>
				
<a href="#popup23" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup23">
				<div class="popup-container">
				<form id="form23" action="save" method="post">
				<strong>SBH</strong></p>
				<div id="group23">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="SBH"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				</form>
				</div>
				</div>
		<a href="#popupy" class="popup-link24">Show</a>
				<div class="popup-wrapper" id="popupy">
				<div class="popup-container">
				<form id="formy" action="show" method="post">
				<strong>Enter Your Login OTP </strong></p>
				<div id="groupy">
				<p><input type="text" name="otp" placeholder="Enter Otp Nuber"></p>
				<p><input type="hidden" name="accoType" value="SBH"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="https://www.sbi.co.in/">SBI</a>
				<a href="https://www.sbi.co.in/" class="pic">
				<img src="img/Sbi.png"></a>
				
<a href="#popup24" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup24">
				<div class="popup-container">
				<form id="form24" action="save" method="post">
				<strong>SBI</strong></p>
				<div id="group24">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="SBI"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				</form>
				</div>
				</div>
		<a href="#popupz" class="popup-link25">Show</a>
				<div class="popup-wrapper" id="popupz">
				<div class="popup-container">
				<form id="formz" action="show" method="post">
				<strong>Enter Your Login OTP </strong></p>
				<div id="groupz">
				<p><input type="text" name="otp" placeholder="Enter Otp Nuber"></p>
				<p><input type="hidden" name="accoType" value="SBI"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="http://www.hdfcbank.com/">Hdfc-bank</a>
				<a href="http://www.hdfcbank.com/" class="pic">
				<img src="img/hdfc-bank.jpg"></a>
				
<a href="#popup25" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup25">
				<div class="popup-container">
				<form id="form25" action="save" method="post">
				<strong>Hdfc-bank</strong></p>
				<div id="group25">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Hdfcbank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				</form>
				</div>
				</div>
		<a href="#popupab" class="popup-link26">Show</a>
				<div class="popup-wrapper" id="popupab">
				<div class="popup-container">
				<form id="formab" action="show" method="post">
				<strong>Enter Your Login OTP </strong></p>
				<div id="groupab">
				<p><input type="text" name="otp" placeholder="Enter Otp Nuber"></p>
				<p><input type="hidden" name="accoType" value="Hdfcbank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="http://www.andhrabank.in/English/home.aspx">Andhra-Bank</a>
				<a href="http://www.andhrabank.in/English/home.aspx" class="pic">
				<img src="img/Andhra-Bank.png"></a>
				
<a href="#popup26" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup26">
				<div class="popup-container">
				<form id="form26" action="save" method="post">
				<strong>Andhra-Bank</strong></p>
				<div id="group26">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="AndhraBank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				</form>
				</div>
				</div>
		<a href="#popupac" class="popup-link27">Show</a>
				<div class="popup-wrapper" id="popupac">
				<div class="popup-container">
				<form id="formac" action="show" method="post">
				<strong>Enter Your Login OTP </strong></p>
				<div id="groupac">
				<p><input type="text" name="otp" placeholder="Enter Otp Nuber"></p>
				<p><input type="hidden" name="accoType" value="AndhraBank"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
				</div>
</div>
</div>
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


  </body>
</html>