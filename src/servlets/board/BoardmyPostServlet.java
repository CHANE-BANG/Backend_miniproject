package servlets.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.BoardDao;
import vo.Board;
import vo.Member;

@SuppressWarnings("serial")
@WebServlet("/mypost")
public class BoardmyPostServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ServletContext sc = this.getServletContext();
		BoardDao boardDao = (BoardDao)sc.getAttribute("boardDao");
		try {  
			  HttpSession session = (HttpSession)req.getSession();
			  Member member = (Member)session.getAttribute("member");
			  req.setAttribute("member", member);
			  
//			  System.out.println("member:" + member);
			  
			  int userId = member.getNo();
//			  System.out.println("userId(no)" + userId);
			  //int userId = 1;
			  
			  List<Board> mypostlist = boardDao.selectMyPost(userId);
//			  boardDao.updateCount(userId);
			  req.setAttribute("mypostlist", mypostlist);
			  
			  resp.setContentType("text/html; charset=UTF-8");	

			 // req.setAttribute("boardlist", mypostlist);
			  
			  RequestDispatcher rd = req.getRequestDispatcher("mypost.jsp");
			  rd.include(req, resp);
			  
		}catch(Exception e) {
			resp.sendRedirect("mypost.jsp");		
		}
	}
}
