<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>회원 정보 수정</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

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
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> -->

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


  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <ol>
          <li><a href="index.jsp">Home</a></li>
          <li><a href="list2">영화리뷰</li></a>
        </ol>
        <h2>${board.title}</h2>
        <div>
          <p>조회수:${board.hit} <span> 좋아요 </span></p>
        </div>
      </div>
    </section><!-- End Breadcrumbs -->

 <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">

      <div class="container">

        <div class="portfolio-details-container">

          <div>
          
          <c:if test="${board.imageUrl !=null}">
                  <img src="./upload/${board.imageUrl}" style="width: 100%; height:auto;">
        </c:if>

<!--                
         <img src="request.getSession().getServletContext().getRealPath("/")  + /upload/ + ${board.imageUrl}"/><br>
         http://localhost/upload/
         <img src="file:///D:/jsp/projects/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/jsp-project-v5/upload/${board.imageUrl}">
          -->
          </div>
      
          <!-- 옆의 작은 창 -->
          <div class="portfolio-info">
            <h3> ${board.movieTitle}</h3> 
            <ul>
              <li><strong>장르</strong>:  ${board.genre}</li>
              <li><strong>감독</strong>: ${board.director}</li>              
              <li><strong>작성자</strong>: ${board.writer}</li>
              <li><strong>작성일</strong>: ${board.writedate}</li>
            </ul>
          </div>

        </div>
        <!-- 글출력 되는 곳. 테이블로 넣어보나? -->
        <div class="portfolio-description">
          <table>
            <tr>
              <h2> ${board.title}</h2>
            </tr>
            <tr>
              <p>
              ${board.content}
              </p>
           </tr>
          </table>
        </div>
        <c:if test="${member.name == board.writer}">
        <button type="button" class="btn btn-dark mt-3" onclick="location.href='update?no=${board.no}'">글 수정하기</button>
        <button type="button" class="btn btn-dark mt-3" onclick="location.href='delete?no=${board.no}'">글 삭제하기</button>
        </c:if>
    </div>

        <!-- 댓글창 -->
      <div class="container">
        <div class="portfolio-description">
          <div class="card-header bg-light">
            <i class="fa fa-user"></i> 댓글
          </div>
          <div class="card-body">
            <ul class="list-group list-group-flush">
              <li class="list-group-item">
                <!-- <div class="form-inline mb-2 ">
                  <input type="text" class="form-control ml-2" placeholder="Enter yourId" id="replyId">
                  <label for="replyId"><i class="fa fa-user-circle-o fa-2x"></i></label>
                  <label for="replyPassword" class="ml-4"><i class="fa fa-unlock-alt fa-2x"></i></label>
                  <input type="password" class="form-control ml-2" placeholder="Enter password" id="replyPassword">
                </div> -->
                <div class="insert-group">
                  <input type="hidden" name="bno" value="${detail.bno}"/>
                  <textarea class="form-control" id="thisiscomment" rows="3"></textarea>
                  <span class="input-group-btn">
                    <button type="button" class="btn btn-dark mt-3" onClick="javascript:addReply();">post reply</button>
                  </span>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>

      <div class="container">
        <div class="commentList card mb-2">
          <div class="card-header bg-light">
            <i class="fa fa-user"></i> COMENT <span><strong>댓글수</strong></span>
          </div>
        <div class="input-group input-group-sm" role="group" style="text-align: left">
            <table class="table table-bordered table-hover table-sm" border="1" align="left">
              <!-- <c:forEach var="row" items="${map.list}"> -->
                <tr>
                  <td>
                    <ul style="list-style: none;">
                    <li>댓글번호 : ${row.rno}  닉네임 : ${row.user_id}</li>
                    <li>작성일자 : ${row.reg_date}</li>
                    <li>댓글 내용</li>
                    </ul>
                  </td>
                  <!-- <td colspan="5">작성일자 : ${row.reg_date} </td>
                </tr>
                <tr>
                  <td colspan="7">댓글 내용 : ${row.r_content}</td> -->
                </tr>
                <!-- 폼태그 안에 위쪽에 있는 자바스크립트 구문에 필요한 값들을 노출시키지 않게 하기 위해 hidden타입으로 값들을 전달한다. -->
                <!-- <form method="POST" id="form1">
                  <input type="hidden" id="rno" name="rno" value="${row.rno}">
                  <input type="hidden" id="user_id" name="user_id" value="${row.user_id}"> <input type="hidden" id="member_bno"
                    name="member_bno" value="${row.member_bno}">
                  <input type="hidden" id="curPage" name="curPage" value="${curPage}"> <input type="hidden" id="search_option"
                    name="search_option" value="${search_option}">
                  <input type="hidden" id="keyword" name="keyword" value="${keyword}">
            
                  <tr>
                    <td colspan="7">
                      <div style="">
                        <textarea class="form-control" placeholder="수정할 내용을 입력하세요" id="r_content" name="r_content" rows="4"
                          cols="80"></textarea>
                      </div>
                      <br>
                      <br>
                    </td>
                  </tr>
                </form> -->
            
                <!-- 본인일 경우에만 댓글 수정버튼과 댓글 삭제 버튼이 출력되도록 설정함 -->
            
                <!-- <div style="width: 700px; text-align: right;">
                  <c:if
                    test="${sessionScope.user_id == row.user_id or sessionScope.navername == row.user_id or sessionScope.kakaonickname == row.user_id or sessionScope.facebookname == row.user_id}">
                    <tr>
                      <td>
                        <div class="btn-group btn-group-sm" role="group" aria-label="...">
                          <div style="text-align: center;">
                            <button type="button" id="btn_reply_Update" class="btn btn-default">댓글 수정</button>
                            <button type="button" id="btn_reply_Delete" class="btn btn-default">댓글 삭제</button>
                          </div>
                        </div>
                      </td>
                    </tr>
                  </c:if> -->
            
                  <!-- 관리자아이디로 로그인했을 경우에 삭제버튼을 출력 -->
                  <!-- <c:if test="${sessionScope.admin_id != null}">
            
                    <tr>
                      <td>
                        <div class="btn-group btn-group-sm" role="group" aria-label="...">
                          <div style="text-align: center;">
                            <button type="button" id="btn_reply_Delete" class="btn btn-default">댓글 삭제</button>
                          </div>
                        </div>
                      </td>
                    </tr>
            
                  </c:if>
                </div>
                <br>
                <br>
                </td>
                </tr>
            
              </c:forEach> -->
            </table>
        </div>
      </div>
    </div>
      </div>
    </section><!-- End Portfolio Details Section -->

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