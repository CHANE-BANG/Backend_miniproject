<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Boogie Movie</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="../assets/img/favicon.png" rel="icon">
  <link href="../assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Multi - v2.2.1
  * Template URL: https://bootstrapmade.com/multi-responsive-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

<%@ include file="Header.jsp" %>

  <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div id="heroCarousel" class="carousel slide carousel-fade" data-ride="carousel">

      <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

      <div class="carousel-inner" role="listbox">

        <!-- Slide 1 -->
        <div class="carousel-item active" style="background-image: url(assets/img/slide/slide-3-1.jpeg)">
          <div class="carousel-container">
            <div class="container">
              <h2 class="animate__animated animate__fadeInDown">Boogie<span> Up!</span></h2>
              <p class="animate__animated animate__fadeInUp">지금 보신 영화에 관해<br/>
                                                            함께 이야기할 누군가를 찾고 있나요?<br/>
                                                            Boogie영화와 함께 즐겨요! 😃</p>
              <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Click</a>
            </div>
          </div>
        </div>
        
        <!-- Slide 2 -->
        <div class="carousel-item" style="background-image: url(assets/img/slide/slide-1.webp)">
          <div class="carousel-container">
            <div class="container">
              <h2 class="animate__animated animate__fadeInDown">감동을 나누는 리뷰와 컬렉션</h2>
              <p class="animate__animated animate__fadeInUp">소소한 생각부터 진지한 평론까지<br/>
                                                            좀비 영화 컬렉션부터 인생 영화 컬렉션까지<br/>
                                                            콘텐츠의 감동을 기록하고 나누세요! 🍿</p>
              <a href="portfolio.jsp" class="btn-get-started animate__animated animate__fadeInUp scrollto">Click</a>
            </div>
          </div>
        </div>

        <!-- Slide 3 -->
        <div class="carousel-item" style="background-image: url(assets/img/slide/slide-2.jpg)">
          <div class="carousel-container">
            <div class="container">
              <h2 class="animate__animated animate__fadeInDown">나만의 콘텐츠 보관함</h2>
              <p class="animate__animated animate__fadeInUp">재미있게 본 영화나 나중에 꼭 보고 싶은 영화<br/>
                                                            모두 기록해 주세요, 저희가 보관해 드릴게요! 🎁</p>
              <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Click</a>
                 <!-- 마이페이지-스크랩 링크 -->
            </div>
          </div>
        </div>

      </div>

      <a class="carousel-control-prev" href="#heroCarousel" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon icofont-simple-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>

      <a class="carousel-control-next" href="#heroCarousel" role="button" data-slide="next">
        <span class="carousel-control-next-icon icofont-simple-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>

    </div>
  </section><!-- End Hero -->

  <main id="main">
    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>About</h2>
          <p>About Us</p>
        </div>

        <div class="row content">
          <div class="col-lg-6">
            <p>
              어떻게 영화를 즐기고 계신가요?<br/>
              Boogie영화는 영화로 즐거워지는 다양한 방법을 제안합니다.<br/>
              영화 콘텐츠에 대해 평가하고 자유롭게 의견을 나눌 수 있어요!
            </p>
            <ul>
              <li><i class="ri-check-double-line"></i> 1. 검색탭에서 영화를 검색해주세요 </li>
              <li><i class="ri-check-double-line"></i> 2. 방금 본 영화에 대한 리뷰를 남겨주세요</li>
              <li><i class="ri-check-double-line"></i> 3. 다른 사람들과 영화에 대해 소통해요</li>
            </ul>
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0">
            <p>Boogie영화와 함께할 준비가 되셨나요?</p>
            &nbsp;&nbsp;
            <a href="./member/add" class="btn-learn-more">회원가입 </a> &nbsp;&nbsp;&nbsp;&nbsp;
            <a href="./auth/login" class="btn-learn-more">로그인</a>
            <br/><br/>
            <p>부귀영화를 처음 방문해주셨다면 회원가입을,<br/>
            기존 회원이라면 로그인을 진행해주세요.</p>
          </div>
        </div>

      </div>
    </section><!-- End About Section -->

    <!-- ======= Counts Section ======= -->
    <section id="counts" class="counts">
      <div class="container" data-aos="fade-up">

        <div class="row no-gutters">

          <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
            <div class="count-box">
              <i class="icofont-simple-smile"></i>
              <span data-toggle="counter-up">${boardDao.getUserCount()}</span>
              <p><strong>명의 회원</strong> 들이 Boogie와 함께 하고 있습니다!</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
            <div class="count-box">
              <i class="icofont-document-folder"></i>
              <span data-toggle="counter-up">${boardDao.getBoardCount()}</span>
              <p><strong>개의 리뷰</strong> 가 작성되고 있어요!</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
            <div class="count-box">
              <i class="icofont-live-support"></i>
              <span data-toggle="counter-up">${boardDao.getHitCount()}</span>
              <p><strong>개의 총 조회수</strong>를 기록하고 있습니다!!</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
            <div class="count-box">
              <i class="icofont-users-alt-5"></i>
              <span data-toggle="counter-up">123</span>
              <p><strong>개의 댓글</strong>을 작성해주셨어요! 짝짝!</p>
            </div>
          </div>   
          
        </div>
      </div>
    </section><!-- End Counts Section -->

    <!-- ======= Why Us Section ======= -->
    <section id="why-us" class="why-us section-bg">
      <div class="container-fluid" data-aos="fade-up">

        <div class="row">

          <div class="col-lg-5 align-items-stretch video-box" style='background-image: url("assets/img/eximage-1.jpeg");' data-aos="zoom-in" data-aos-delay="100">
            <a href="https://www.youtube.com/watch?v=K8euyfUUbyA" class="venobox play-btn mb-4" data-vbtype="video" data-autoplay="true"></a>
          </div>

          <div class="col-lg-7 d-flex flex-column justify-content-center align-items-stretch">

            <div class="content">
              <h3> 부귀영화 <strong> Review </strong></h3>
              <p>
                명예의 전당 <부귀영화>에 선정된 베스트 1, 2, 3 리뷰를 소개합니다!
              </p>
            </div>

            <div class="accordion-list">
              <ul>
                <li>
                  <a data-toggle="collapse" class="collapse" href="#accordion-list-1"><span>01</span> <b>분노의 질주: 더 얼티메이트</b> / 2021.05 <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                  <div id="accordion-list-1" class="collapse show" data-parent=".accordion-list">
                    <p>
                      기다림은 끝났다!<br/>
                      전 세계가 기다려온 단 하나의 액션블록버스터!<br/><br/>

                      도미닉(빈 디젤)은 자신과 가장 가까웠던 형제 제이콥(존 시나)이 사이퍼(샤를리즈 테론)와 연합해 전 세계를 위기로 빠트릴 위험천만한 계획을 세운다는 사실을 알게 되고, 이를 막기 위해 다시 한 번 패밀리들을 소환한다.<br/><br/>

                      가장 가까운 자가 한순간, 가장 위험한 적이 된 상황. 도미닉과 패밀리들은 이에 반격할 놀라운 컴백과 작전을 세우고 지상도, 상공도, 국경도 경계가 없는 불가능한 대결이 시작되는데…
                      <a href="#">Review 보기 &raquo;</a>
                    </p>
                  </div>
                </li>

                <li>
                  <a data-toggle="collapse" href="#accordion-list-2" class="collapsed"><span>02</span> <b>미나리</b> / 2021.03 <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                  <div id="accordion-list-2" class="collapse" data-parent=".accordion-list">
                    <p>
                       "미나리는 어디서든 잘 자라" <br/>  

                      낯선 미국, 아칸소로 떠나온 한국 가족들에게 뭔가 해내는 걸 보여주고 싶은 아빠 '제이콥'(스티븐 연)은 자신만의 농장을 가꾸기 시작하고 엄마 '모니카'(한예리)도 다시 일자리를 찾는다. <br/>
                      아직 어린아이들을 위해 ‘모니카’의 엄마 ‘순자’(윤여정)가 함께 살기로 하고 가방 가득 고춧가루, 멸치, 한약 그리고 미나리씨를 담은 할머니가 도착한다. <br/>
                      의젓한 큰딸 '앤'(노엘 케이트 조)과 장난꾸러기 막내아들 '데이빗'(앨런 김)은 여느 그랜마같지 않은 할머니가 영- 못마땅한데… <br/><br/>

                      함께 있다면, 새로 시작할 수 있다는 희망으로 <br/>
                      하루하루 뿌리 내리며 살아가는<br/>
                      어느 가족의 아주 특별한 여정이 시작된다!
                      <a href="portfolio-details.html">Review 보기 &raquo;</a>
                    </p>
                  </div>
                </li>

                <li>
                  <a data-toggle="collapse" href="#accordion-list-3" class="collapsed"><span>03</span> <b>더 스파이</b> / 2021.04 <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                  <div id="accordion-list-3" class="collapse" data-parent=".accordion-list">
                    <p>
                      전운이 감도는 1960년 냉전시대, 소련 군사정보국 ‘올레그 대령’은 정부의 눈을 피해 핵전쟁 위기를 막을 중대 기밀을 CIA에 전하고자 한다. <br/>
                      CIA는 MI6와 협력하여 소련의 기밀 문서를 입수하기 위해 영국 사업가 ‘그레빌 윈’을 스파이로 고용해 잠입에 성공한다. <br/><br/>

                      정체를 감춘 채 런던과 모스크바를 오가는 ‘그레빌 윈’과 ‘올레그 대령’의 은밀하고 위험한 관계가 계속될수록 KGB의 의심은 커져가는데...
                      <a href="#">Review 보기 &raquo;</a>
                    </p>
                  </div>
                </li>

              </ul>
            </div>

          </div>

        </div>

      </div>
    </section><!-- End Why Us Section -->

  </main><!-- End #main -->

 <%@ include file="footer.jsp" %>

  <div id="preloader"></div>
  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="assets/vendor/counterup/counterup.min.js"></script>
  <script src="assets/vendor/venobox/venobox.min.js"></script>
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>