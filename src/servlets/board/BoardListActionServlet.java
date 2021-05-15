package servlets.board;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BoardDao;
import vo.Board;

@SuppressWarnings("serial")
@WebServlet("/list2")
public class BoardListActionServlet extends HttpServlet {
	 
	@Override
	   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	      ServletContext sc = this.getServletContext();
	      BoardDao boardDao = (BoardDao)sc.getAttribute("boardDao");
	      
	      try {         	  
	    	  ArrayList<Board> lists = new ArrayList<Board>();
		      final int pageSize = 6;   
		      int currentPage = 1;
		    
		      if(req.getParameter("page") != null) {
		    	  currentPage = Integer.parseInt(req.getParameter("page")); // 현재 페이지
		      } 
		      
		      lists = boardDao.selectAllBoards(currentPage, pageSize);
		     
		      int totalRow = boardDao.getBoardCount(); // 전체 글 갯수 구하기
		      int totalPage = (totalRow-1)/pageSize + 1; // 전체 페이지 갯수
		      int pagePerGroup = 3;  // 페이지 그룹화 [1][2][3] [4][5][6]
		      int startPage = ((currentPage-1)/pagePerGroup)*pagePerGroup+1; // int로 형변환 하기 때문에 앞에 ( )는 같은 그룹끼리는 같은 정수가 됨. 시작페이지 [1][4][7]
		      int endPage = startPage+pagePerGroup-1; // 끝페이지 
		      
		      if(endPage>totalPage) {endPage=totalPage;}
		      
	        
	         resp.setContentType("text/html; charset=UTF-8"); // 먼저 호출
	         
	         req.setAttribute("boardlist2", lists);
	         req.setAttribute("currentPage", currentPage);
	         req.setAttribute("totalRow", new Integer(totalRow));
	         req.setAttribute("totalPage", new Integer(totalPage));
	         req.setAttribute("startPage", new Integer(startPage));
	         req.setAttribute("endPage", new Integer(endPage));
	         
	         RequestDispatcher rd = 
	               req.getRequestDispatcher("portfolio.jsp");
	         rd.include(req, resp);
	         
	      }catch(Exception e) {
	         req.setAttribute("error", e);
	         RequestDispatcher rd = req.getRequestDispatcher("/Error.jsp");
	         rd.forward(req, resp);
	      }
	 }
}
