<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US" class="no-js">
<head>
<title>로그인</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- Favicons -->
  <link href="../assets/img/favicon.png" rel="icon">
  <link href="../assets/img/apple-touch-icon.png" rel="apple-touch-icon"> 
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans%3A300italic%2C400italic%2C700italic%2C300%2C400%2C700%2C800%7CMontserrat%3A300italic%2C400italic%2C700italic%2C300%2C400%2C700%7CDosis%3A400%2C700&amp;ver=4.5" type="text/css" media="all">
  <!-- Vendor CSS Files -->
  <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="../assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="../assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="../assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="../assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="../assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="../assets/vendor/aos/aos.css" rel="stylesheet">  

  <!-- Template Main CSS File -->
  <link href="../assets/css/style.css" rel="stylesheet">
  
  <!-- 로그인/회원가입용  -->
	<link rel='stylesheet' href='../assets/css/boot3.css' type='text/css' media='all'/>
    <link rel='stylesheet' href='../assets/css/stylelogin.css' type='text/css' media='all'/>
	<link rel='stylesheet' href='../icons/elegantline/style.css' type='text/css' media='all'/>
	<link rel='stylesheet' href='../assets/css/font-awesome.min.css' type='text/css' media='all' />
    <link rel='stylesheet' href='../assets/css/flexslider.css' type='text/css' media='all'/>
	
<style>
  #addBtn{
  	background-color: #222;
    border: 1px solid #222;
    font-size: 11px;
	color: white;
    margin-top: 5px;
    padding: 15px;
  }
  .fa-star:before{
  	content: "★";
  }
</style>
</head>
<body class="frontpage">
<div class="page-loader">
	<img src="../assets/img/loader.gif" alt="loader">
</div>
<!-- INTRO================================================== -->
<section id="home" style="padding:130px 0 230px; background-image: url(../assets/img/login-1.jpg); background-position: center; background-repeat: no-repeat;background-size: cover;background-attachment:fixed;">
	<div class="container">
		<div class="textwidget">
			<h1 class="toptitle">이 세상 모든 영화 <br/>그리고<br/> 영화를 사랑하는 사람들 <br/><br/><i class="fa fa-star roundicon"></i>
			</h1>								
			<div class="contactstyle topform">										
				<form method="post" action="login" id="topcontactform">
					<div class="form">
						<input type="text" name="email" placeholder="아이디 *">
						<input type="password" name="password" placeholder="비밀번호 *">					
          				<input type="submit" class="clearfix btn" value="로그인">
          				<input type="button" value="회원가입" id="addBtn" onClick="location.href='../member/add'">	
          				<input type="button" value="둘러보기" id="addBtn" onClick="location.href='../index.jsp'">	
					</div>
				</form>
			</div>								
		</div>
		</div>
</section>
<!-- SCRIPTS================================================== -->
<script src="../assets/js/jquery.js"></script>
<script src="../assets/js/plugins.js"></script>
</body>
</html>