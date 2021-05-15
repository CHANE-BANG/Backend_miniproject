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
@WebServlet("/detail")
public class BoardDetailServlet extends HttpServlet{
	
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ServletContext sc = this.getServletContext();
		BoardDao boardDao = (BoardDao)sc.getAttribute("boardDao");
		try {
			
			int postId = Integer.parseInt(req.getParameter("no"));
			  
			  Board board = boardDao.selectOne(postId);
			  boardDao.updateCount(postId);
			  req.setAttribute("board", board);
			  
			  resp.setContentType("text/html; charset=UTF-8");	
			  
		      HttpSession session = (HttpSession)req.getSession();
			  Member member = (Member)session.getAttribute("member");     
			  req.setAttribute("member", member);
			  
			  RequestDispatcher rd = req.getRequestDispatcher("portfolio-details.jsp");
			  rd.forward(req, resp);
			  
		}catch(Exception e) {
			//resp.sendRedirect("/portfolio.jsp");		
		}
	}
		
	
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			ServletContext sc = this.getServletContext();
			BoardDao boardDao = (BoardDao)sc.getAttribute("boardDao");

			boardDao.insert(new Board()
			        .setNo(Integer.parseInt(req.getParameter("no"))));
			
			resp.sendRedirect("/portfolio-details.jsp");		
			
		}catch(Exception e) {
			//throw new ServletException(e);
			e.printStackTrace();
			req.setAttribute("error", e);
			RequestDispatcher rd = req.getRequestDispatcher("/portfolio.jsp");
			rd.forward(req, resp);
		}
	}
}
