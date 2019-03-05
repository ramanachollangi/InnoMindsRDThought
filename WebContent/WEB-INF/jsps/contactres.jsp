<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport"    content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author"      content="Sergey Pozhilov (GetTemplate.com)">
	
	<title>Contact us- Apskey</title>

	<link rel="shortcut icon" href="img/Ak.png">
	
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">

	<!-- Custom styles for our template -->
	<link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen" >
	<link rel="stylesheet" href="assets/css/main.css">

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
</head>

<body>
	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse navbar-fixed-top headroom" >
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<a class="navbar-brand" href="index.html"><img src="img/Ak.png" alt="">ApsKey</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right">
					<li ><a href='${pageContext.request.contextPath}/'>Home</a></li>
					<li><a href='${pageContext.request.contextPath}/Aboutus'>About Us</a></li>
					<li><a href='${pageContext.request.contextPath}/Services'>Services</a></li>
					<li><a href='${pageContext.request.contextPath}/Dailydairy'>Daily Dairy</a></li>
					<li class="active"><a href='${pageContext.request.contextPath}/Contactus'>Contact Us</a></li>
					<li><a class="btn" href='${pageContext.request.contextPath}/Login'>SIGN IN / SIGN UP</a></li>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</div> 
	<!-- /.navbar -->

	<header id="head" class="secondary"></header>

	<!-- container -->
	<div class="container">

		<ol class="breadcrumb">
			<li><a href='${pageContext.request.contextPath}/'>Home</a></li>
			<li class="active">Contact Us</li>
		</ol>

		<div class="row">
			<center><h1><font color="red">Thanks to you Contacts Withus</font></h1></center>
			<!-- Article main content -->
			<article class="col-sm-9 maincontent">
				<header class="page-header">
					<h1 class="page-title">Contact us</h1>
				</header>
				
				<br>
					<form action="contacts" method="post">
						<div class="row">
							<div class="col-sm-4">
								<input class="form-control" name="name" type="text" placeholder="Name">
							</div>
							<div class="col-sm-4">
								<input class="form-control" name="email" type="text" placeholder="Email">
							</div>
							<div class="col-sm-4">
								<input class="form-control" name="mobile" type="text" placeholder="Phone">
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-sm-12">
								<textarea name="message" placeholder="Type your message here..." class="form-control" rows="9"></textarea>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-sm-6">
								<label class="checkbox"><input type="checkbox"> Sign up for newsletter</label>
							</div>
							<div class="col-sm-6 text-right">
								<input class="btn btn-action" type="submit" value="Send message">
							</div>
						</div>
					</form>

			</article>
			<!-- /Article -->
			
			<!-- Sidebar -->
			<aside class="col-sm-3 sidebar sidebar-right">

				<div class="widget">
					<h4>Address</h4>
					<address>
						Flot no:64,Lumbini Avenue,Old Mumbai Hwy, Gachibowli,
					</address>
					<h4>Phone:</h4>
					<address>
						040:64522777
					</address>
					<h4>Email Id:</h4>
					<address>
						info@renvishtech.com
					</address>
				</div>

			</aside>
			<!-- /Sidebar -->

		</div><br><br>
		<div style="width:1268px;max-width:100%;overflow:hidden;height:500px;color:red;"><div id="embed-map-display" style="height:100%; width:100%;max-width:100%;"><iframe style="height:100%;width:100%;border:0;" frameborder="0" src="https://www.google.com/maps/embed/v1/search?q=renvish+technologies+privete+limited&key=AIzaSyAN0om9mFmy1QN6Wf54tXAowK4eT0ZUPrU"></iframe></div><a class="embedded-map-html" rel="nofollow" href="https://www.hostingreviews.website" id="get-map-data">https://www.hostingreviews.website</a><style>#embed-map-display .text-marker{max-width:none!important;background:none!important;}img{max-width:none}</style></div><script src="https://www.hostingreviews.website/google-maps-authorization.js?id=58e3513d-4abd-472a-82dd-17f8b1cf2aec&c=embedded-map-html&u=1461244915" defer="defer" async="async"></script>   <div class="row">


	</div>	<!-- /container -->
	</div>
	
	<footer id="footer">

		<div class="footer1">
			<div class="container">
				<div class="row">
					
					<div class="col-md-3 widget">
						<h3 class="widget-title">Contact</h3>
						<div class="widget-body">
							<p>040:64522777<br>
								<a href="mailto:#">info@renvishtech.com</a><br>
								<br>
								Flot no:64,Lumbini Avenue,Old Mumbai Hwy, Gachibowli,
							</p>	
						</div>
					</div>

					<div class="col-md-3 widget">
						<h3 class="widget-title">Follow me</h3>
						<div class="widget-body">
							<p class="follow-me-icons clearfix">
								<a href=""><i class="fa fa-twitter fa-2"></i></a>
								<a href=""><i class="fa fa-dribbble fa-2"></i></a>
								<a href=""><i class="fa fa-github fa-2"></i></a>
								<a href=""><i class="fa fa-facebook fa-2"></i></a>
							</p>	
						</div>
					</div>

					<div class="col-md-6 widget">
						<h3 class="widget-title">Apskey</h3>
						<div class="widget-body">
							<p>APSKEY acts just like a LOCKER for every individual application . The concept of the Apskey had come from the difficulty of remembering the USERNAMES and PASSWORDS of all applications which we are using in our day to day life.</p>
						</div>
					</div>

				</div> <!-- /row of widgets -->
			</div>
		</div>

		<div class="footer2">
			<div class="container">
				<div class="row">
					
					<div class="col-md-6 widget">
						<div class="widget-body">
							<p class="simplenav">
								<a href="#">Home</a> | 
								<a href='${pageContext.request.contextPath}/Aboutus'>About Us</a> |
								<a href='${pageContext.request.contextPath}/Services'>Services</a> |
								<a href='${pageContext.request.contextPath}/Dailydairy'>Daily dairy</a> |
								<a href='${pageContext.request.contextPath}/Contactus'>Contact Us</a> |
								<b><a href='${pageContext.request.contextPath}/Registration'>Sign up</a></b>|
								<b><a href='${pageContext.request.contextPath}/Login'>Sign In</a></b>
							</p>
						</div>
					</div>

					<div class="col-md-6 widget">
						<div class="widget-body">
							<p class="text-right">
								Copyright &copy; 2016, Apskey.
							</p>
						</div>
					</div>

				</div> <!-- /row of widgets -->
			</div>
		</div>
	</footer>	
		




	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets/js/headroom.min.js"></script>
	<script src="assets/js/jQuery.headroom.min.js"></script>
	<script src="assets/js/template.js"></script>
	
	<!-- Google Maps -->
	<script src="https://maps.googleapis.com/maps/api/js?key=&amp;sensor=false&amp;extension=.js"></script> 
	<script src="assets/js/google-map.js"></script>
	

</body>
</html>