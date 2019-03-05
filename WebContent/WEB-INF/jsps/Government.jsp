<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Apskey : GovernmentSites</title>
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
  <%!String useremail=null; %>
 <%
		if (session != null) {
			if (session.getAttribute("mail") != null) {
				 useremail = (String) session.getAttribute("mail");
				out.print("<h5 align=right>Welcome," + useremail + "</h5>");
			} 
		}
 %> 
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
               <%
					if (session.getAttribute("mail") != null){%>
				<a class="btn" href='${pageContext.request.contextPath}/Logout'><img src="img/logout.png" alt="" height="20" width="30"> Logout</a>
				<%} 
				else if (session.getAttribute("mail") == null)
				{%>
				 <a class="login modal-form"  href='${pageContext.request.contextPath}/Login'>Login / Sign Up</a>
				<%}%>
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
<a href='${pageContext.request.contextPath}/Loginsucess' >Apps</a>
<a href='${pageContext.request.contextPath}/ShopingSites' class="link ">Shoping Sites</a>
<a href='${pageContext.request.contextPath}/Banking' class="link ">Banking Sectors</a>
<a href='${pageContext.request.contextPath}/Government' class="link current">Government Sites</a>
<a href='${pageContext.request.contextPath}/TicketsBooking' class="link ">Tickets Booking</a>
<a href='${pageContext.request.contextPath}/JobSites' class="link ">Job Sites</a>
<a href='${pageContext.request.contextPath}/Wallets' class="link ">Wallets</a>
<a href='${pageContext.request.contextPath}/OnlineGameSites' class="link ">Games@Extra</a></div>
<ul class="r-app-category cf">
<li><a href="https://www.hyderabadwater.gov.in/en/index.php">Hmwssb</a>
				<a href="https://www.hyderabadwater.gov.in/en/index.php" class="pic">
				<img src="img/hmws.png" ></a>
				
<a href="#popup" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup">
				<div class="popup-container">
				<form action="save" method="post" class="popup-form" id="form30">
				<strong>Hmws</strong></p>
				<div id="group">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Hmwssb"></p>
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
				<p><input type="hidden" name="accoType" value="Hmwssb"></p>
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
<li><a href="http://apepass.cgg.gov.in/">Epass</a>
				<a href="http://apepass.cgg.gov.in/" class="pic">
				<img src="img/Epass.png"></a>
				
				
<a href="#popup0" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup0">
				<div class="popup-container">
				<form id="form" action="save" method="post">
				<strong>Epass</strong></p>
				<div id="group">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Epass"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div><div>
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
				<p><input type="hidden" name="accoType" value="Epass"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div><div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="https://www.echallan.org/publicview/">E challan</a>
				<a href="https://www.echallan.org/publicview/" class="pic">
				<img src="img/E challan.png"></a>
				
<a href="#popup1" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup1">
				<div class="popup-container">
				<form id="form1" action="save" method="post">
				<strong>E challan</strong></p>
				<div id="group1">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Echallan"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div><div>
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
				<p><input type="hidden" name="accoType" value="Echallan"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div><div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="http://www.meeseva.gov.in/Meeseva/intro.html">Mee seva</a>
				<a href="http://www.meeseva.gov.in/Meeseva/intro.html" class="pic">
				<img src="img/Mee seva.jpg"></a>
				
<a href="#popup2" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup2">
				<div class="popup-container">
				<form id="form2" action="save" method="post">
				<strong>Mee seva</strong></p>
				<div id="group2">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Meeseva"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div><div>
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
				<p><input type="hidden" name="accoType" value="Meeseva"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div><div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="http://www.barcouncilap.org/">Ap enrollment</a>
				<a href="http://www.barcouncilap.org/" class="pic">
				<img src="img/Aadhar enrollment.jpg"></a>
				
<a href="#popup3" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup3">
				<div class="popup-container">
				<form id="form3" action="save" method="post">
				<strong>Aadhar enrollment</strong></p>
				<div id="group3">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Apenrollment"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div><div>
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
				<p><input type="hidden" name="accoType" value="Apenrollment"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div><div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="http://www.sailusfood.com/2015/08/12/tomato-pickle-recipe-andhra/">Aadhar instant</a>
				<a href="http://www.sailusfood.com/2015/08/12/tomato-pickle-recipe-andhra/" class="pic">
				<img src="img/Adhar instant.jpg"></a>
				
<a href="#popup4" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup4">
				<div class="popup-container">
				<form id="form4" action="save" method="post">
				<strong>Adhar instant</strong></p>
				<div id="group4">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Aadharinstant"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div><div>
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
				<p><input type="hidden" name="accoType" value="Aadharinstant"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div><div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="https://www.apeasternpower.com/">Apepdcl</a>
				<a href="https://www.apeasternpower.com/" class="pic">
				<img src="img/Apepdcl.jpg"></a>
				
<a href="#popup5" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup5">
				<div class="popup-container">
				<form id="form5" action="save" method="post">
				<strong>Apepdcl</strong></p>
				<div id="group5">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Apepdcl"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div><div>
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
				<p><input type="hidden" name="accoType" value="Apepdcl"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div><div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="http://www.apspdcl.in/">Apspdcl</a>
				<a href="http://www.apspdcl.in/" class="pic">
				<img src="img/Apspdcl.jpg"></a>
				
<a href="#popup6" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup6">
				<div class="popup-container">
				<form id="form6" action="save" method="post">
				<strong>Apspdcl</strong></p>
				<div id="group6">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Apspdcl"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div><div>
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
				<p><input type="hidden" name="accoType" value="Apspdcl"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div><div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="http://www.apsrtconline.in/oprs-web/">APSRTC</a>
				<a href="http://www.apsrtconline.in/oprs-web/" class="pic">
				<img src="img/APSRTC.jpg"></a>
				
<a href="#popup7" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup7">
				<div class="popup-container">
				<form id="form7" action="save" method="post">
				<strong>APSRTC</strong></p>
				<div id="group7">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="APSRTC"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div><div>
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
				<p><input type="hidden" name="accoType" value="APSRTC"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div><div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="http://ebharatgas.com/ebharat/forHome/home.html">Bharat gas</a>
				<a href="http://ebharatgas.com/ebharat/forHome/home.html" class="pic">
				<img src="img/Bharat gas.png"></a>
				
<a href="#popup8" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup8">
				<div class="popup-container">
				<form id="form8" action="save" method="post">
				<strong>Bharat gas</strong></p>
				<div id="group8">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Bharatgas"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div><div>
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
				<p><input type="hidden" name="accoType" value="Bharatgas"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div><div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="http://cleanmycoach.com/">Clean coach</a>
				<a href="http://cleanmycoach.com/" class="pic">
				<img src="img/Clean my coach.jpg"></a>
				
<a href="#popup9" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup9">
				<div class="popup-container">
				<form id="form9" action="save" method="post">
				<strong>Clean my coach</strong></p>
				<div id="group9">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Cleanmycoach"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div><div>
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
				<p><input type="hidden" name="accoType" value="Cleanmycoach"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div><div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="https://digilocker.gov.in/">Digilocker</a>
				<a href="https://digilocker.gov.in/" class="pic">
				<img src="img/Digilocker.jpg"></a>
				
<a href="#popup10" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup10">
				<div class="popup-container">
				<form id="form10" action="save" method="post">
				<strong>Digilocker</strong></p>
				<div id="group10">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Digilocker"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div><div>
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
				<p><input type="hidden" name="accoType" value="Digilocker"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div><div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="http://www.shine.com/">Shine</a>
				<a href="http://www.shine.com/" class="pic">
				<img src="img/Govt Jobs.png"></a>
				
<a href="#popup11" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup11">
				<div class="popup-container">
				<form id="form11" action="save" method="post">
				<strong>Govt Jobs</strong></p>
				<div id="group11">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Shine"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div><div>
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
				<p><input type="hidden" name="accoType" value="Shine"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div><div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="http://www.hawkeyeinnovations.co.uk/">Hawk eye</a>
				<a href="http://www.hawkeyeinnovations.co.uk/" class="pic">
				<img src="img/Hawk eye.jpg"></a>
				
<a href="#popup12" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup12">
				<div class="popup-container">
				<form id="form12" action="save" method="post">
				<strong>Hawk eye</strong></p>
				<div id="group12">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Hawkeye"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div><div>
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
				<p><input type="hidden" name="accoType" value="Hawkeye"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div><div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="http://myhpgas.in/myHPGas/Index.aspx">Hp gas</a>
				<a href="http://myhpgas.in/myHPGas/Index.aspx" class="pic">
				<img src="img/Hp gas.jpg"></a>
				
<a href="#popup13" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup13">
				<div class="popup-container">
				<form id="form13" action="save" method="post">
				<strong>Hp gas</strong></p>
				<div id="group13">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Hpgas"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div><div>
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
				<p><input type="hidden" name="accoType" value="Hpgas"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div><div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="http://www.hyderabadpolice.gov.in/">Hyd police</a>
				<a href="http://www.hyderabadpolice.gov.in/" class="pic">
				<img src="img/Hyderabad police.png"></a>
				
<a href="#popup14" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup14">
				<div class="popup-container">
				<form id="form14" action="save" method="post">
				<strong>Hyderabad police</strong></p>
				<div id="group14">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Hyderabadpolice"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div><div>
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
				<p><input type="hidden" name="accoType" value="Hyderabadpolice"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div><div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con">
				</form>
				</div>
				</div>
				</li>
<li><a href="https://www.indane.co.in/">Indian gas</a>
				<a href="https://www.indane.co.in/" class="pic">
				<img src="img/Indian gas.png"></a>
				
<a href="#popup15" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup15">
				<div class="popup-container">
				<form id="form15" action="save" method="post">
				<strong>Indian gas</strong></p>
				<div id="group15">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Indiangas"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div><div>
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
				<p><input type="hidden" name="accoType" value="Indiangas"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div><div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con"></form>
				</div>
				</div>
				</li>
<li><a href="http://www.indiapost.gov.in/speednettracking.aspx">Post Status</a>
				<a href="http://www.indiapost.gov.in/speednettracking.aspx" class="pic">
				<img src="img/Indian Post Status.png"></a>
				
<a href="#popup16" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup16">
				<div class="popup-container">
				<form id="form16" action="save" method="post">
				<strong>Indian Post Status</strong></p>
				<div id="group16">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="PostStatus"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div><div>
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
				<p><input type="hidden" name="accoType" value="PostStatus"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div><div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con"></form>
				</div>
				</div>
				</li>
<li><a href="https://www.irctc.co.in/eticketing/loginHome.jsf">irctc</a>
				<a href="https://www.irctc.co.in/eticketing/loginHome.jsf" class="pic">
				<img src="img/irctc.jpg"></a>
				
<a href="#popup17" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup17">
				<div class="popup-container">
				<form id="form17" action="save" method="post">
				<strong>irctc</strong></p>
				<div id="group17">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="irctc"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div><div>
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
				<p><input type="hidden" name="accoType" value="irctc"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div><div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con"></form>
				</div>
				</div>
				</li>
<li><a href="http://www.mwallet.pro/">M wallet</a>
				<a href="http://www.mwallet.pro/" class="pic">
				<img src="img/m wallet.jpg"></a>
				
<a href="#popup18" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup18">
				<div class="popup-container">
				<form id="form18" action="save" method="post">
				<strong>M wallet</strong></p>
				<div id="group18">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Mwallet"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div><div>
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
				<p><input type="hidden" name="accoType" value="Mwallet"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div><div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con"></form>
				</div>
				</div>
				</li>
<li><a href="http://www.makeinindia.com/home">Make in india</a>
				<a href="http://www.makeinindia.com/home" class="pic">
				<img src="img/Make in india.jpg"></a>
				
<a href="#popup19" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup19">
				<div class="popup-container">
				<form id="form19" action="save" method="post">
				<strong>Make in india</strong></p>
				<div id="group19">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Makeinindia"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div><div>
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
				<p><input type="hidden" name="accoType" value="Makeinindia"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div><div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con"></form>
				</div>
				</div>
				</li>
<li><a href="http://tg.meeseva.gov.in/DeptPortal/Userinterface/ManaTV-Video-Album.html">Meesevatrain</a>
				<a href="http://tg.meeseva.gov.in/DeptPortal/Userinterface/ManaTV-Video-Album.html" class="pic">
				<img src="img/Meeseva traning.jpg"></a>
				
<a href="#popup20" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup20">
				<div class="popup-container">
				<form id="form20" action="save" method="post">
				<strong>Meeseva traning</strong></p>
				<div id="group20">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Meesevatraning"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div><div>
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
				<p><input type="hidden" name="accoType" value="Meesevatraning"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con"></form>
				</div>
				</div>
				</li>
<li><a href="http://ap.mobilemeeseva.com/">Mob meeseva</a>
				<a href="http://ap.mobilemeeseva.com/" class="pic">
				<img src="img/Mobile meeseva.png"></a>
				
<a href="#popup21" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup21">
				<div class="popup-container">
				<form id="form21" action="save" method="post">
				<strong>Mobile meeseva</strong></p>
				<div id="group21">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Mobilemeeseva"></p>
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
				<p><input type="hidden" name="accoType" value="Mobilemeeseva"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con"></form>
				</div>
				</div>
				</li>
<li><a href="https://www.govtlatestjobs.com/telangana-govt-jobs-2016-latest-ts-govt-jobs-notifications">Telangana jobs</a>
				<a href="https://www.govtlatestjobs.com/telangana-govt-jobs-2016-latest-ts-govt-jobs-notifications" class="pic">
				<img src="img/Telangana jobs.jpg"></a>
				
<a href="#popup22" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup22">
				<div class="popup-container">
				<form id="form22" action="save" method="post">
				<strong>Telangana jobs</strong></p>
				<div id="group22">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Telanganajobs"></p>
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
				<p><input type="hidden" name="accoType" value="Telanganajobs"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con"></form>
				</div>
				</div>
				</li>
<li><a href="http://tsec.gov.in/home.do;jsessionid=9EBE75C9C9B27F380B69728E06703D7D">Ts election</a>
				<a href="http://tsec.gov.in/home.do;jsessionid=9EBE75C9C9B27F380B69728E06703D7D" class="pic">
				<img src="img/Ts electionvoterslip.png"></a>
				
<a href="#popup23" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup23">
				<div class="popup-container">
				<form id="form23" action="save" method="post">
				<strong>Ts electionvoterslip</strong></p>
				<div id="group23">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Tselectionvoter"></p>
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
				<p><input type="hidden" name="accoType" value="Tselectionvoter"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con"></form>
				</div>
				</div>
				</li>
<li><a href="http://www.tsnpdcl.in/">Tsnpdcl</a>
				<a href="http://www.tsnpdcl.in/" class="pic">
				<img src="img/tsnpdcl.png"></a>
				
<a href="#popup24" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup24">
				<div class="popup-container">
				<form id="form24" action="save" method="post">
				<strong>Tsnpdcl</strong></p>
				<div id="group24">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Tsnpdcl"></p>
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
				<p><input type="hidden" name="accoType" value="Tsnpdcl"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con"></form>
				</div>
				</div>
				</li>
<li><a href="http://www.tsrtconline.in/oprs-web/">TSRTC</a>
				<a href="http://www.tsrtconline.in/oprs-web/" class="pic">
				<img src="img/TSRTC.png"></a>
				
<a href="#popup25" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup25">
				<div class="popup-container">
				<form id="form25" action="save" method="post">
				<strong>TSRTC</strong></p>
				<div id="group25">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="TSRTC"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="Save">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a>>/div>
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
				<p><input type="hidden" name="accoType" value="TSRTC"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con"></form>
				</div>
				</div>
				</li>
<li><a href="https://www.tssouthernpower.com/">Tsspdcl</a>
				<a href="https://www.tssouthernpower.com/" class="pic">
				<img src="img/Tsspdcl.jpg"></a>
				
<a href="#popup26" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup26">
				<div class="popup-container">
				<form id="form26" action="save" method="post">
				<strong>Tsspdcl</strong></p>
				<div id="group26">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Tsspdcl"></p>
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
				<p><input type="hidden" name="accoType" value="Tsspdcl"></p>
				<p><input type="hidden" name="mobile" value="<%=session.getAttribute("mail")%>"></p>
				<p> 
				<input type="submit" value="OK" name="OK">
				</p>
				</div>
				<div>
				<a class="popup-close" href="#closed">X</a></div>
				<div class="right-con"></form>
				</div>
				</div>
				</li>				
				</ul>
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
  
  </body>
</html>