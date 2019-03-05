<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Apskey : Games&Extras</title>
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
  
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://jqueryvalidation.org/files/dist/jquery.validate.min.js"></script>
<script src="http://jqueryvalidation.org/files/dist/additional-methods.min.js"></script>
<script type="text/javascript" src="js/facebook.js.js"></script>
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
<a href='${pageContext.request.contextPath}/Loginsucess' class="link  ">Apps</a>
<a href='${pageContext.request.contextPath}/ShopingSites' class="link ">Shoping Sites</a>
<a href='${pageContext.request.contextPath}/Banking' class="link ">Banking Sectors</a>
<a href='${pageContext.request.contextPath}/Government' class="link ">Government Sites</a>
<a href='${pageContext.request.contextPath}/TicketsBooking' class="link ">Tickets Booking</a>
<a href='${pageContext.request.contextPath}/JobSites' class="link ">Job Sites</a>
<a href='${pageContext.request.contextPath}/Wallets' class="link ">Wallets</a>
<a href='${pageContext.request.contextPath}/OnlineGameSites' class="link current">Games@Extra</a></div>
<ul class="r-app-category cf">
<li><a href="https://www.rummycircle.com/">RummyCircle</a>
				<a href="https://www.rummycircle.com/" class="pic">
				<img src="img/RummyCircle.jpg" ></a>
				
<a href="#popup" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup">
				<div class="popup-container">
				<form action="save" method="post" class="popup-form">
				<strong>RummyCircle</strong></p>
				<div id="group">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="RummyCircle"></p>
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
				<p><input type="hidden" name="accoType" value="RummyCircle"></p>
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
<li><a href="https://www.jungleerummy.com/">Junglee rummy</a>
				<a href="https://www.jungleerummy.com/" class="pic">
				<img src="img/Junglee rummy.jpg"></a>
				
<a href="#popup0" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup0">
				<div class="popup-container">
				<form id="form" action="save" method="post">
				<strong>Junglee rummy</strong></p>
				<div id="group">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Jungleerummy"></p>
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
				<p><input type="hidden" name="accoType" value="Jungleerummy"></p>
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
<li><a href="http://www.androidappsgame.com/apk/?id=com.nextwave.wcc2">Wcc2</a>
				<a href="http://www.androidappsgame.com/apk/?id=com.nextwave.wcc2" class="pic">
				<img src="img/Wcc2.jpg"></a>
				
<a href="#popup1" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup1">
				<div class="popup-container">
				<form id="form1" action="save" method="post">
				<strong>Wcc2</strong></p>
				<div id="group1">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Wcc2"></p>
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
				<p><input type="hidden" name="accoType" value="Wcc2"></p>
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
<li><a href="http://www.9apps.com/android-games/Teen-Patti-Indian-Poker/">3 patti</a>
				<a href="http://www.9apps.com/android-games/Teen-Patti-Indian-Poker/" class="pic">
				<img src="img/3 patti.jpg"></a>
				
<a href="#popup2" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup2">
				<div class="popup-container">
				<form id="form2" action="save" method="post">
				<strong>3 patti</strong></p>
				<div id="group2">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="3patti"></p>
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
				<p><input type="hidden" name="accoType" value="3patti"></p>
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
				
				
				
<li><a href="http://www.miniclip.com/games/8-ball-pool-multiplayer/en/">8 Ball Pool</a>
				<a href="http://www.miniclip.com/games/8-ball-pool-multiplayer/en/" class="pic">
				<img src="img/8 Ball Pool.jpg"></a>
				
<a href="#popup3" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup3">
				<div class="popup-container">
				<form id="form3" action="save" method="post">
				<strong>8 Ball Pool</strong></p>
				<div id="group3">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="8BallPool"></p>
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
				<p><input type="hidden" name="accoType" value="8BallPool"></p>
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
<li><a href="	https://get.hike.in/">Hike</a>
				<a href="https://get.hike.in/" class="pic">
				<img src="img/hike.jpg"></a>
				
<a href="#popup4" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup4">
				<div class="popup-container">
				<form id="form4" action="save" method="post">
				<strong>Hike</strong></p>
				<div id="group4">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Hike"></p>
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
				<p><input type="hidden" name="accoType" value="Hike"></p>
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
<li><a href="https://webmail.au.syrahost.com/login/">Email</a>
				<a href="https://webmail.au.syrahost.com/login/" class="pic">
				<img src="img/Email.png"></a>
				
<a href="#popup5" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup5">
				<div class="popup-container">
				<form id="form5" action="save" method="post">
				<strong>Email</strong></p>
				<div id="group5">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Email"></p>
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
				<p><input type="hidden" name="accoType" value="Email"></p>
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
<li><a href="http://hangouts.en.softonic.com/">Hangouts</a>
				<a href="http://hangouts.en.softonic.com/" class="pic">
				<img src="img/Hangouts.png"></a>
				
<a href="#popup6" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup6">
				<div class="popup-container">
				<form id="form6" action="save" method="post">
				<strong>Hangouts</strong></p>
				<div id="group6">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Hangouts"></p>
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
				<p><input type="hidden" name="accoType" value="Hangouts"></p>
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
<li><a href="https://www.messenger.com/">Messenger</a>
				<a href="https://www.messenger.com/" class="pic">
				<img src="img/Messenger.png"></a>
				
<a href="#popup7" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup7">
				<div class="popup-container">
				<form id="form7" action="save" method="post">
				<strong>Messenger</strong></p>
				<div id="group7">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Messenger"></p>
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
				<p><input type="hidden" name="accoType" value="Messenger"></p>
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
<li><a href="http://site23.way2sms.com/content/index.html?">Way2sms</a>
				<a href="http://site23.way2sms.com/content/index.html?" class="pic">
				<img src="img/Way2sms.png"></a>
				
<a href="#popup8" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup8">
				<div class="popup-container">
				<form id="form8" action="save" method="post">
				<strong>Way2sms</strong></p>
				<div id="group8">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Way2sms"></p>
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
				<p><input type="hidden" name="accoType" value="Way2sms"></p>
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
<li><a href="https://www.blablacar.in/">Bla bla car</a>
				<a href="https://www.blablacar.in/" class="pic">
				<img src="img/Bla bla car.png"></a>
				
<a href="#popup9" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup9">
				<div class="popup-container">
				<form id="form9" action="save" method="post">
				<strong>Bla bla car</strong></p>
				<div id="group9">
			<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Blablacar"></p>
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
				<p><input type="hidden" name="accoType" value="Blablacar"></p>
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
<li><a href="https://www.inoxmovies.com/Index.aspx">INOX Movies</a>
				<a href="https://www.inoxmovies.com/Index.aspx" class="pic">
				<img src="img/INOX Movies.png"></a>
				
<a href="#popup10" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup10">
				<div class="popup-container">
				<form id="form10" action="save" method="post">
				<strong>INOX Movies</strong></p>
				<div id="group10">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="INOXMovies"></p>
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
				<p><input type="hidden" name="accoType" value="INOXMovies"></p>
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
<li><a href="http://www.viber.com/en/">Viber</a>
				<a href="http://www.viber.com/en/" class="pic">
				<img src="img/Viber.png"></a>
				
<a href="#popup11" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup11">
				<div class="popup-container">
				<form id="form11" action="save" method="post">
				<strong>Viber</strong></p>
				<div id="group11">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Viber"></p>
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
				<p><input type="hidden" name="accoType" value="Viber"></p>
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
<li><a href="http://www.wechat.com/en/">WeChat</a>
				<a href="http://www.wechat.com/en/" class="pic">
				<img src="img/WeChat.jpg"></a>
				
<a href="#popup12" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup12">
				<div class="popup-container">
				<form id="form12" action="save" method="post">
				<strong>WeChat</strong></p>
				<div id="group12">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="WeChat"></p>
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
				<p><input type="hidden" name="accoType" value="WeChat"></p>
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
<li><a href="http://www.licindia.in/">Lic</a>
				<a href="http://www.licindia.in/" class="pic">
				<img src="img/Lic.png"></a>
				
<a href="#popup13" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup13">
				<div class="popup-container">
				<form id="form13" action="save" method="post">
				<strong>Lic</strong></p>
				<div id="group13">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Lic"></p>
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
				<p><input type="hidden" name="accoType" value="Lic"></p>
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
<li><a href="http://www.videocond2h.com/wsc/index.aspx">D2h</a>
				<a href="http://www.videocond2h.com/wsc/index.aspx" class="pic">
				<img src="img/D2h.png"></a>
				
<a href="#popup14" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup14">
				<div class="popup-container">
				<form id="form14" action="save" method="post">
				<strong>D2h</strong></p>
				<div id="group14">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="D2h"></p>
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
				<p><input type="hidden" name="accoType" value="D2h"></p>
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
<li><a href="http://www.sundirect.in/">Sundirect</a>
				<a href="http://www.sundirect.in/" class="pic">
				<img src="img/Sundirect.png"></a>
				
<a href="#popup15" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup15">
				<div class="popup-container">
				<form id="form15" action="save" method="post">
				<strong>Sundirect</strong></p>
				<div id="group15">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Sundirect"></p>
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
				<p><input type="hidden" name="accoType" value="Sundirect"></p>
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
<li><a href="https://www.oyorooms.com/">Oyo rooms</a>
				<a href="https://www.oyorooms.com/" class="pic">
				<img src="img/Oyo rooms.jpg"></a>
				
<a href="#popup16" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup16">
				<div class="popup-container">
				<form id="form16" action="save" method="post">
				<strong>Oyo rooms</strong></p>
				<div id="group16">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Oyorooms"></p>
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
				<p><input type="hidden" name="accoType" value="Oyorooms"></p>
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
<li><a href="http://www.cinemax.com/">Cinemax</a>
				<a href="http://www.cinemax.com/" class="pic">
				<img src="img/Cinemax.png"></a>
				
<a href="#popup17" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup17">
				<div class="popup-container">
				<form id="form17" action="save" method="post">
				<strong>Cinemax</strong></p>
				<div id="group17">
			<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Cinemax"></p>
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
				<p><input type="hidden" name="accoType" value="Cinemax"></p>
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
<li><a href="http://www.indeed.co.in/">Indeed</a>
				<a href="http://www.indeed.co.in/" class="pic">
				<img src="img/Indeed.png"></a>
				
<a href="#popup18" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup18">
				<div class="popup-container">
				<form id="form18" action="save" method="post">
				<strong>Indeed</strong></p>
				<div id="group18">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Indeed"></p>
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
				<p><input type="hidden" name="accoType" value="Indeed"></p>
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
<li><a href="http://byjus.com/">Byjus</a>
				<a href="http://byjus.com/" class="pic">
				<img src="img/Byjus.png"></a>
				
<a href="#popup19" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup19">
				<div class="popup-container">
				<form id="form19" action="save" method="post">
				<strong>Byjus</strong></p>
				<div id="group19">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Byjus"></p>
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
				<p><input type="hidden" name="accoType" value="Byjus"></p>
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
<li><a href="http://line.me/en/">Line</a>
				<a href="http://line.me/en/" class="pic">
				<img src="img/Line.png"></a>
				
<a href="#popup20" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup20">
				<div class="popup-container">
				<form id="form20" action="save" method="post">
				<strong>Line</strong></p>
				<div id="group20">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Line"></p>
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
				<p><input type="hidden" name="accoType" value="Line"></p>
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
<li><a href="https://tradu.io/">Tradu</a>
				<a href="https://tradu.io/" class="pic">
				<img src="img/Tradus.jpg"></a>
				
<a href="#popup21" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup21">
				<div class="popup-container">
				<form id="form21" action="save" method="post">
				<strong>Tradus</strong></p>
				<div id="group21">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Tradu"></p>
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
				<p><input type="hidden" name="accoType" value="Tradu"></p>
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
<li><a href="http://www.zivame.com/">zivame</a>
				<a href="http://www.zivame.com/" class="pic">
				<img src="img/zivame.png"></a>
				
<a href="#popup22" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup22">
				<div class="popup-container">
				<form id="form22" action="save" method="post">
				<strong>zivame</strong></p>
				<div id="group22">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="zivame"></p>
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
				<p><input type="hidden" name="accoType" value="zivame"></p>
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
<li><a href="http://zovi.com/">Zovi</a>
				<a href="http://zovi.com/" class="pic">
				<img src="img/Zovi.gif"></a>
				
<a href="#popup23" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup23">
				<div class="popup-container">
				<form id="form23" action="save" method="post">
				<strong>Zovi</strong></p>
				<div id="group23">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Zovi"></p>
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
				<p><input type="hidden" name="accoType" value="Zovi"></p>
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
<li><a href="http://www.limeroad.com/">Limeroad</a>
				<a href="http://www.limeroad.com/" class="pic">
				<img src="img/Limeroad.png"></a>
				
<a href="#popup24" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup24">
				<div class="popup-container">
				<form id="form24" action="save" method="post">
				<strong>Limeroad</strong></p>
				<div id="group24">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Limeroad"></p>
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
				<p><input type="hidden" name="accoType" value="Limeroad"></p>
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
<li><a href="http://www.busindia.com/">Busindia</a>
				<a href="http://www.busindia.com/" class="pic">
				<img src="img/busindia.png"></a>
				
<a href="#popup25" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup25">
				<div class="popup-container">
				<form id="form25" action="save" method="post">
				<strong>Busindia</strong></p>
				<div id="group25">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Busindia"></p>
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
				<p><input type="hidden" name="accoType" value="Busindia"></p>
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
<li><a href="http://www.bet365.com/en/">Bet365</a>
				<a href="http://www.bet365.com/en/" class="pic">
				<img src="img/Bet365.jpeg"></a>
				
<a href="#popup26" class="popup-link">Save</a>
<div class="popup-wrapper" id="popup26">
				<div class="popup-container">
				<form id="form26" action="save" method="post">
				<strong>Bet365</strong></p>
				<div id="group26">
				<p><input type="text" name="apsUserName" placeholder="Email Address"></p>
				<p><input type="password" name="apsPassword" placeholder="Password"></p>
				<p><input type="hidden" name="accoType" value="Bet365"></p>
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
				<p><input type="hidden" name="accoType" value="Bet365"></p>
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
  
  </body>
</html>
  
 