<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>글수정</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link
      href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
      rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
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
	<style>
    #inputimage { display:none; } 
  </style>

  <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
  <script>
      //이미지 클릭시 업로드창 실행
      $(function() {
        $('#preview').click(function (e) {
          e.preventDefault();
          $('#input-image').click();
        });
     
      function readImage(input) {
        // 인풋 태그에 파일이 있는 경우
        if(input.files && input.files[0]) {
            const reader = new FileReader()
            // 이미지가 로드가 된 경우
            reader.onload = e => {
                const previewImage = document.getElementById("preview")
                previewImage.src = e.target.result
            }
            // reader가 이미지 로드
            reader.readAsDataURL(input.files[0])
        }
    }
    // input file에 change 이벤트 부여
    const inputImage = document.getElementById("btn-inputimage")
    inputImage.addEventListener("change", e => {
        readImage(e.target)
    })

});
  </script>
  <body>

    <%@ include file="Header.jsp" %>
      <!-- ======= Contact Section ======= -->
      <section id="contact" class="contact section-bg">
        <div class="container">

          <div class="section-title">
            <h2>Contact</h2>
            <p></p>
            <p>리뷰 쓰기</p>
          </div>

    <form action="write" method="post" enctype="multipart/form-data" role="form" class="php-email-form">
          <div class="row">
              <div class="col-lg-6" style="height: 100%">
                <div class="row">
                  <div class="col-md-12">
                    <div class="info-box">
                      <div>
                        <img id="preview" src="assets/img/file_up.jpg" class="img-thumbnail ri-image-2-fill" alt="이미지 업로드영역">
                      </div>
                      <div style="margin-top: 10px;">
                        <input type="file" id="btn-inputimage" name="img_upload" style="display: block;" ><br />
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- 1번 문제 -->
              <div class="col-lg-6" style="height: 100%">
                <!--             <form action="write" method="post" role="form" class="php-email-form"> -->
                <div class="form-row">
                  <div class="col form-group">
  <select class="form-control" name="genre">
                      <option value="music">음악(영화)</option>
                      <option value="thriller">공포/스릴러</option>
                      <option value="documentary">다큐멘터리</option>
                      <option value="sf">sf/판타지</option>
                      <option value="romance">로맨스(영화)</option>
                      <option value="action">액션(영화)</option>
                      <div class="validate"></div>
                    </select>                  </div>
                  <div class="col form-group">
                    <input type="hidden" name="no" value="${no}">
                    <input type="text" class="form-control" name="movieTitle" id="movieTitle" placeholder="${board.movieTitle}"
                      data-msg="Please enter a valid email" />
                    <div class="validate"></div>
                  </div>
                  <div class="col form-group">
                    <input type="text" class="form-control" name="director" id="director" placeholder="${board.director}"
                      data-msg="Please enter a valid email" />
                    <div class="validate"></div>
                  </div>
                </div>
                <div class="form-group">
                  <div>
                    <input type="text" class="form-control" name="title" id="title" placeholder="${board.title }"
                      data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                  </div>
                  <div class="validate"></div>
                </div>
                <div class="form-group">
                  <textarea class="form-control" name="content" rows="23" data-rule="required"
                    data-msg="Please write something for us" placeholder="${board.content }"></textarea>
                  <div class="validate"></div>
                </div>
                <div class="mb-3">
                  <div class="loading">Loading</div>
                  <div class="error-message"></div>
                  <div class="sent-message">Your message has been sent. Thank you!</div>
                </div>
                <div class="text-center"><button type="submit">글쓰기</button></div>
              </div>
            </div>
        </div>
      </form>
        
      </section><!-- End Contact Section -->

      </main><!-- End #main -->

      <%@ include file="footer.jsp" %>

        <div id="preloader"></div>
        <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/jquery/jquery.min.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
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