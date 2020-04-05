<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8">
        <script src="resources/js/jquery-3.4.1.js"></script>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>심야식당</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		
        <!-- All Plugin Css --> 
        <link href="<c:url value='/resources/css/plugins.css'></c:url>" rel="stylesheet" >
		<!-- Style & Common Css --> 
		<link href="<c:url value='/resources/css/common.css'></c:url>" rel="stylesheet" >
		<link href="<c:url value='/resources/css/main.css'></c:url>" rel="stylesheet" >

    </head>
	
    <body>
	
		<!-- Navigation Start  -->
		<nav class="navbar navbar-default navbar-sticky bootsnav">

			<div class="container">      
				<!-- Start Header Navigation -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
						<i class="fa fa-bars"></i>
					</button>
					<a class="navbar-brand" href="index.html"><img src="img/logo.png" class="logo" alt=""></a>
				</div>
				<!-- End Header Navigation -->

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="navbar-menu">
					<ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOutUp">
							<li><a href="index.html">Home</a></li> 
							<li><a href="login.html">Login</a></li>
							<li><a href="companies.html">Companies</a></li> 
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Browse</a>
								<ul class="dropdown-menu animated fadeOutUp" style="display: none; opacity: 1;">
									<li class="active"><a href="browse-job.html">Browse Jobs</a></li>
									<li><a href="company-detail.html">Job Detail</a></li>
									<li><a href="resume.html">Resume Detail</a></li>
								</ul>
							</li>
						</ul>
				</div><!-- /.navbar-collapse -->
			</div>   
		</nav>
		<!-- Navigation End  -->
		
		<!-- Main jumbotron for a primary marketing message or call to action -->
		<section class="main-banner" style="background:#242c36 url(img/slider-01.jpg) no-repeat">
			<div class="container">
				<div class="caption">
					<h2>영업중인 식당 검색</h2>
					<form action="<c:url value='/function/keyword'/>" method="get">
						<fieldset>
							<div class="col-md-4 col-sm-4 no-pad">
								<input type="text" class="form-control border-right"
								id="searchKeyword" placeholder="키워드 검색" />
							</div>
							<div class="col-md-3 col-sm-3 no-pad">
								<select class="selectpicker border-right" name="address">
								  <option>지역선택(구)</option>
								  <option>강남구</option>
								  <option>강동구</option>
								  <option>강서구</option>
								  <option>강북구</option>
								  <option>관악구</option>
								  <option>광진구</option>
								  <option>구로구</option>
								  <option>금천구</option>
								  <option>노원구</option>
								  <option>동대문구</option>
								  <option>도봉구</option>
								  <option>동작구</option>
								  <option>마포구</option>
								  <option>서대문구</option>
								  <option>성동구</option>
								  <option>성북구</option>
								  <option>서초구</option>
								  <option>송파구</option>
								  <option>영등포구</option>
								  <option>용산구</option>
								  <option>양천구</option>
								  <option>은평구</option>
								  <option>종로구</option>
								  <option>중구</option>
								  <option>중랑구</option>
								</select>
							</div>
							<div class="col-md-3 col-sm-3 no-pad">
								<select class="selectpicker">
								  <option>식당명</option>
								  <option>카테고리</option>
								  <option>Information & Technology</option>
								</select>
							</div>
							<div class="col-md-2 col-sm-2 no-pad">
								<input type="submit" class="btn seub-btn" value="검색"/>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</section>
		
		<section class="counter">
			<div class="container">
				<div class="col-md-3 col-sm-3">
					<div class="counter-text">
						<span aria-hidden="true" class="icon-briefcase"></span>
						<h3><a href="<c:url value='/function/realtime'></c:url>">실시간 주변 식당</a></h3>
					</div>
				</div>
				
				<div class="col-md-3 col-sm-3">
					<div class="counter-text">
						<span class="box1"><span aria-hidden="true" class="icon-expand"></span></span>
						<h3><a >207</a></h3>
						<p>All Companies</p>
					</div>
				</div>
				
				<div class="col-md-3 col-sm-3">
					<div class="counter-text">
						<span class="box1"><span aria-hidden="true" class="icon-profile-male"></span></span>
						<h3>700+</h3>
						<p>Total Members</p>
					</div>
				</div>
				
				<div class="col-md-3 col-sm-3">
					<div class="counter-text">
					<span class="box1"><span aria-hidden="true" class="icon-sad"></span></span>
						<h3>802+</h3>
						<p>Happy Members</p>
					</div>
				</div>
			</div>
		</section>
		
		<section class="newsletter">
			<div class="container">
				<div class="row">
					<div class="col-md-10 col-sm-10 col-md-offset-1 col-sm-offset-1">
					<h2>Want More Job & Latest Job? </h2>
					<p>Subscribe to our mailing list to receive an update when new Job arrive!</p>
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Type Your Email Address...">
						<span class="input-group-btn">
							<button type="button" class="btn btn-default">subscribe!</button>
						</span>
					</div>
					</div>
				</div>
			</div>
		</section>
			
		<!-- footer start -->
		<footer>
			<div class="container">
				<div class="col-md-3 col-sm-6">
					<h4>Featured Job</h4>
					<ul>
						<li><a href="#">Browse Jobs</a></li>
						<li><a href="#">Premium MBA Jobs</a></li>
						<li><a href="#">Access Database</a></li>
						<li><a href="#">Manage Responses</a></li>
						<li><a href="#">Report a Problem</a></li>
						<li><a href="#">Mobile Site</a></li>
						<li><a href="#">Jobs by Skill</a></li>
					</ul>
				</div>
				
				<div class="col-md-3 col-sm-6">
					<h4>Latest Job</h4>
					<ul>
						<li><a href="#">Browse Jobs</a></li>
						<li><a href="#">Premium MBA Jobs</a></li>
						<li><a href="#">Access Database</a></li>
						<li><a href="#">Manage Responses</a></li>
						<li><a href="#">Report a Problem</a></li>
						<li><a href="#">Mobile Site</a></li>
						<li><a href="#">Jobs by Skill</a></li>
					</ul>
				</div>
				
				<div class="col-md-3 col-sm-6">
					<h4>Reach Us</h4>
					<address>
					<ul>
					<li>1201, Murakeu Market, QUCH07<br>
					United Kingdon</li>
					<li>Email: Support@job.com</li>
					<li>Call: 044 123 458 65879</li>
					<li>Skype: job@skype</li>
					<li>FAX: 123 456 85</li>
					</ul>
					</address>
				</div>
				
				<div class="col-md-3 col-sm-6">
					<h4>Drop A Mail</h4>
					<form>
						<input type="text" class="form-control input-lg" placeholder="Your Name">
						<input type="text" class="form-control input-lg" placeholder="Email...">
						<textarea class="form-control" placeholder="Message"></textarea>
						<button type="submit" class="btn btn-primary">Login</button>
					</form>
				</div>
				
				
			</div>
			<div class="copy-right">
			 <p>&copy;Copyright 2018 Jober Desk | Design By <a href="https://themezhub.com/">ThemezHub</a></p>
			</div>
		</footer>
		 
		 <script type="text/javascript" src="<c:url value='/resources/js/jquery.min.js'></c:url>"></script>
		 <script type="text/javascript" src="<c:url value='/resources/js/bootstrap.min.js'></c:url>"></script>
		 <script type="text/javascript" src="<c:url value='/resources/js/owl.carousel.min.js'></c:url>"></script>
		<script type="text/javascript" src="<c:url value='/resources/js/bootsnav.js'></c:url>"></script>
		<script type="text/javascript" src="<c:url value='/resources/js/main.js'></c:url>"></script>
    </body>
</html>