<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="vo.Member" %>
<jsp:useBean id="member"
			scope="session"
			class="vo.Member"/>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>회원 정보수정</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="../assets/img/favicon.png" rel="icon">
<link href="../assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="../assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../assets/vendor/icofont/icofont.min.css" rel="stylesheet">
<link href="../assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="../assets/vendor/animate.css/animate.min.css"
	rel="stylesheet">
<link href="../assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="../assets/vendor/venobox/venobox.css" rel="stylesheet">
<link href="../assets/vendor/owl.carousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="../assets/vendor/aos/aos.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="../assets/css/style.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: Multi - v2.2.1
  * Template URL: https://bootstrapmade.com/multi-responsive-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
<style>

/* html, div, p, body, button, input, select, table, textarea, pre, code {
    font-weight: normal;
    font-size: 100%;
    line-height: 1.4;
    -webkit-font-smoothing: none;
    -webkit-font-smoothing: subpixel-antialiased;
    -webkit-font-smoothing: antialiased;
} */
*, *:after, *:before {
	padding: 0;
	margin: 0;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	-ms-box-sizing: border-box;
	-o-box-sizing: border-box;
	box-sizing: border-box;
}

div {
	display: block;
}

p, h1, h2, h3, h4, h5, h6, ul, ol, li, dl, dt, dd, table, th, td, form,
	fieldset, legend, input, textarea, button, select {
	margin: 0;
	padding: 0;
	-webkit-text-size-adjust: none;
	list-style: none;
	border: none;
	background: transparent;
}

ul {
	display: block;
	list-style-type: disc;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	padding-inline-start: 40px;
}

.hi * {
	font-family: "Noto Sans Korean", "Open Sans", "malgun gothic",
		"Nanum Gothic", dotum, arial, sans-serif;
	font-size: 16px;
}

/* 
@media (max-width: 959px)
.hi.tab {
    width: 100%;
} */
.hi.tab {
	position: relative;
	top: 1px;
	margin: 0;
	padding: 0;
	height: 70px;
	white-space: nowrap;
	list-style-type: none;
	overflow-y: hidden;
	max-width: 1200px;
	width: 100%;
	box-sizing: border-box;
	margin-left: auto;
	margin-right: auto;
	padding-right: 15px;
	padding-left: 15px;
}

.hi.tab li {
	display: inline-block;
	position: relative;
}

.col-1, .col-2, .col-3, .col-4, .col-5, .col-6, .col-7, .col-8, .col-9,
	.col-10, .col-11, .col-12, .col, .col-auto, .col-sm-1, .col-sm-2,
	.col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8,
	.col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm, .col-sm-auto,
	.col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6,
	.col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12,
	.col-md, .col-md-auto, .col-lg-1, .col-lg-2, .col-lg-3, .col-lg-4,
	.col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-10,
	.col-lg-11, .col-lg-12, .col-lg, .col-lg-auto, .col-xl-1, .col-xl-2,
	.col-xl-3, .col-xl-4, .col-xl-5, .col-xl-6, .col-xl-7, .col-xl-8,
	.col-xl-9, .col-xl-10, .col-xl-11, .col-xl-12, .col-xl, .col-xl-auto {
	position: relative;
	width: 100%;
	min-height: 1px;
	padding-right: 15px;
	padding-left: 15px;
}

/* @media (min-width: 640px)
.col-sm-9 {
    -ms-flex: 0 0 75%;
    flex: 0 0 75%;
    max-width: 75%;
}

@media (min-width: 640px)
.col-sm-3 {
    -ms-flex: 0 0 25%;
    flex: 0 0 25%;
    max-width: 25%;
} */
</style>

</head>

<body>
  <!-- ======= Header ======= -->
   <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <h1 class="logo mr-auto"><a href="../index.jsp">BOOGIE</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav class="nav-menu d-none d-lg-block">
        <ul>
        	<%if(member.getEmail() != null){ %>
        	<li><%=member.getName()%>님 환영합니다</li>
        	<%} %>
          <li class="active"><a href="../index.jsp">Home</a></li>
          <li><a href="../list2">영화리뷰</a></li>
          <li class="drop-down"><a href="">펼치기</a>
            <ul>
           <%if(member.getEmail() == null){%>
              <li><a href="../auth/login">로그인</a></li>
              <li><a href="../member/add">회원가입</a></li>
           <% }else{%>
              <li><a href="../auth/logout">로그아웃</a></li>
              <li class="drop-down"><a href="#">마이페이지</a>
              <%} %>
                <ul>
                  <li><a href="../member/update">회원정보 수정</a></li>
                  <li><a href="#">스크랩(좋아요)</a></li>
                  <li><a href="../mypost">내가 쓴 글</a></li>
                </ul>
              </li>
            </ul>
          </li>

        </ul>
      </nav><!-- .nav-menu -->
		
      <a href="../write" class="get-started-btn">글쓰기</a>
			
    </div>
  </header><!-- End Header -->
	<!-- ======= Why Us Section ======= -->
	<section id="why-us" class="why-us section-bg"
		style="margin-top: 100px;">
		<div id="pt_container" class="mrg_at p_rt cf ">
			<section class="hi member" style="text-align: center; font-size: 30px;">
				${member.name} 님 환영합니다
			</section>

			<div class="hi container">
				<form method='post'>
				<div class="hi section">
					<div class="row">
						<div class="col-sm-9">
							<table class="hi table table-divider">
								<tbody>
									<tr>
										<th class="hi width-xsmall">이메일 주소</th>
										<td><input type='text' name='email'
											value='${member.email}' readonly></td>
									</tr>
									<tr>
										<th class="hi width-xsmall">닉네임<span
											class="hi text-danger">*</span></th>
										<td><input type='text' name='name' value='${member.name}'></td>
									</tr>

									<tr>
										<th class="hi width-xsmall">비밀번호<span
											class="hi text-danger">*</span></th>
										<td><input type='password' name='pwd'
											value='${member.password}'><br> <input
											type='hidden' name="no" value='${member.no}'></td>
									</tr>
									<tr>
										<th class="hi width-xsmall">포인트</th>
										<td>1522</td>
									</tr>

									<tr>
										<th class="hi width-xsmall">가입일</th>
										<td>${member.createdDate}<br></td>
									</tr>

									<tr>
										<th class="hi width-xsmall">최근 로그인</th>
										<td>${member.createdDate}</td>
									</tr>
								</tbody>
							</table>
	
						</div>
						<div class="col-sm-3">
							<h3>회원 정보</h3>
							<hr class="hi hr">


							<ul class="hi list-menu" style="">
								<li><input type='submit' value='변경' formaction='update'></li>
								<li><input type='submit' value='탈퇴' formaction='delete'></li>
								<li><input type='button' value='변경 취소' onclick='location.href="../index.jsp"'></li>
							</ul>

						</div>
					</div>
				
				</div>
				</form>
			</div>
	</section>
	<!-- End Why Us Section -->
	  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-4 col-md-12">
            <div class="footer-info">
              <h3>BOOGIE MOVIE</h3>
              <div class="social-links mt-3">
                <a href="https://www.netflix.com/kr/" class="netflix"><i class="bx bxs-movie-play"></i></a>
                <a href="https://watcha.com/home" class="watcha"><i class="bx bx-caret-right-square"></i></a>
                <a href="https://extmovie.com/" class="extremeMovie"><i class="bx bx-camera-movie"></i></a>
                <a href="https://www.youtube.com/channel/UC2NdmlV9bI7R33e1124Ao1w" class="youtube"><i class="bx bxl-youtube"></i></a>
                <a href="https://twitter.com/extmcommunity" class="twitter"><i class="bx bxl-twitter"></i></a>
              </div>
            </div>
          </div>

          <!-- <div class="col-lg-2 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
            </ul>
          </div> -->

          <div class="col-lg-4 col-md-8 footer-links" style="text-align: center;">
            <h4>Menus</h4>
            <ul style="text-align: center; display: inline-block;">
              <li><i class="bx bx-chevron-right"></i> <a href="../index.jsp">Home&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </a>
              <i class="bx bx-chevron-right"></i> <a href="#about">About</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">자유게시판</a>
              <i class="bx bx-chevron-right"></i> <a href="../list2">영화리뷰</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="../write.jsp">글쓰기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
              <i class="bx bx-chevron-right"></i> <a href="../member/update">마이페이지</a></li>
            </ul>
          </div>

          <div class="col-lg-4 col-md-6 footer-newsletter">
            <h4>영화 찾기</h4>
            <form action="" method="post">
              <input type="text" name="find"><input type="submit" value="검색"><br/>
            </form>
          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>Multi</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/multi-responsive-bootstrap-template/ -->
        Created by <a href="#">show me the 100 billion(천억죠)</a>
      </div>
    </div>
  </footer><!-- End Footer -->
	</main>
	<!-- End #main -->

	<div id="preloader"></div>
	<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

	<!-- Vendor JS Files -->
	<script src="../assets/vendor/jquery/jquery.min.js"></script>
	<script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="../assets/vendor/jquery.easing/jquery.easing.min.js"></script>
	<script src="../assets/vendor/php-email-form/validate.js"></script>
	<script src="../assets/vendor/waypoints/jquery.waypoints.min.js"></script>
	<script src="../assets/vendor/counterup/counterup.min.js"></script>
	<script src="../assets/vendor/venobox/venobox.min.js"></script>
	<script src="../assets/vendor/owl.carousel/owl.carousel.min.js"></script>
	<script src="../assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="../assets/vendor/aos/aos.js"></script>

	<!-- Template Main JS File -->
	<script src="../assets/js/main.js"></script>

</body>

</html>