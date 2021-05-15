<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<%@ page import="dao.BoardDao" %>
<%@ page import="vo.Board" %>
<%@ page import="java.util.List" %>


<%
ServletContext sc = this.getServletContext();
BoardDao boardDao = (BoardDao)sc.getAttribute("boardDao");
try {
   List<Board> boardList = boardDao.selectList();
   pageContext.setAttribute("boardlist", boardList);
} catch (Exception e) {
   // TODO Auto-generated catch block
   e.printStackTrace();
}
%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>게시판</title>
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
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
   rel="stylesheet">
<link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css"
   rel="stylesheet">
<link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
<link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
<link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css"
   rel="stylesheet">
<link href="assets/vendor/aos/aos.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: Sailor - v2.3.1
  * Template URL: https://bootstrapmade.com/sailor-free-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

   <%@ include file="Header.jsp"%>

   <main id="main">

      <!-- ======= Breadcrumbs ======= -->
      <section id="breadcrumbs" class="breadcrumbs">
         <div class="container">

            <div class="d-flex justify-content-between align-items-center">
               <h2>MOVIE REVIEW</h2>
               <ol>
                  <li><a href="index.hsp">Home</a></li>
                  <li>MOVIE REVIEW</li>
               </ol>
            </div>

         </div>
      </section>
      <!-- End Breadcrumbs -->
      <!-- ======= Portfolio Section ======= -->
      <%--  <section id="portfolio" class="portfolio"> 
      <div class="container">
        <div class="row">
          <div class="col-lg-12 d-flex justify-content-center">
            <ul id="portfolio-flters">
              <li data-filter="*" class="filter-active">All</li>
              <li data-filter=".filter-app">App</li>
              <li data-filter=".filter-card">Card</li>
              <li data-filter=".filter-web">Web</li>
            </ul>
          </div>
        </div>
      
        <div class="row portfolio-container">      
        <c:forEach var="post" items="${boardlist}">
                
          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src="assets/img/portfolio/portfolio-3.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>${post.title}</h4>
                <p> ${post.content}</p>
                <div class="portfolio-links">
                  <a href="assets/img/portfolio/movie_image-2.jpg" data-gall="portfolioGallery" class="venobox" title="App 1"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" data-gall="portfolioDetailsGallery" data-vbtype="iframe" class="venobox" title="Portfolio Details"><i class="bx bx-link"></i></a>
                </div>
              </div>
            </div>
          </div>
       
       </c:forEach>
      </div> 
    </section><!-- End Portfolio Section --> --%>

      <section id="portfolio" class="portfolio">
         <div class="container">
            <div class="row">
               <div class="col-lg-12 d-flex justify-content-center">
                 <ul id="portfolio-flters">
                     <li data-filter="*" class="filter-active">All</li>
                     <li data-filter=".filter-music">음악</li>
                     <li data-filter=".filter-thriller">공포/스릴러</li>
                     <li data-filter=".filter-documentary">다큐멘터리</li>
                     <li data-filter=".filter-sf">판타지</li>
                     <li data-filter=".filter-romance">로맨스</li>
                     <li data-filter=".filter-action">액션</li>
                  </ul>
               </div>
            </div>


          		
            <div class="row portfolio-container">
               <c:forEach var="board" items="${boardlist2}">
                  <a href="detail?no=${board.no}">
                  <div class="col-lg-4 col-md-6 portfolio-item filter-${board.genre }">
                     <div class="portfolio-wrap">
                     <img src="${pageContext.request.contextPath}/upload/${board.imageUrl}"
                         class="img-fluid" alt=""/>   
                        <c:if test="${board.imageUrl !=null}">
                        </c:if>   
                                 
                     <div class="portfolio-info">
                           <h4>${board.title}</h4>
                           <p style="overflow-x:hidden; max-height:150px;">${board.content}</p>
                           <div class="portfolio-links">
                              <a href="${pageContext.request.contextPath}/upload/${board.imageUrl}"
                                 data-gall="portfolioGallery" class="venobox" title="${board.genre} ${board.no}">
                                 <i class="bx bx-plus"></i></a> <a href="detail"
                                 data-gall="portfolioDetailsGallery" data-vbtype="iframe"
                                 class="venobox" title="Portfolio Details"><i
                                 class="bx bx-link"></i></a>
                           </div>
                        </div> 
                     </div>
                  </div>
               </c:forEach>
            </div>
               <!-- 페이징  -->
               <div style="text-align:center;" >
                  <c:if test="${startPage!=1 }">
                     <a  href="list2?page=${startPage-1}">[이전]</a>
                  </c:if>
                  <c:forEach var="i" begin="${startPage}" end="${endPage}"
                     varStatus="cnt">
                     <a href="list2?page=${i}"> [<font color="#000000" /> 
                         <c:if test="${currentPage ==i }">
                           <font color="#bbbbbb" />
                        </c:if>
                         ${i} </font> ]
                     </a>
                  </c:forEach>

                  <c:if test="${endPage!=totalPage }">
                     <a href="list2?page=${endPage+1}">[다음]</a>
                  </c:if>
               </div>

         </div>      
      </section>
      
      <!-- End Portfolio Section -->

   </main>
   <!-- End #main -->

   <%@ include file="footer.jsp"%>

   <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

   <!-- Vendor JS Files -->
   <script src="assets/vendor/jquery/jquery.min.js"></script>
   <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
   <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
   <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
   <script src="assets/vendor/venobox/venobox.min.js"></script>
   <script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
   <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>

   <!-- Template Main JS File -->
	
   <script src="assets/js/sub.js"></script>

</body>

</html>