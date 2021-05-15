package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDao;
import vo.Member;

@SuppressWarnings("serial")
@WebServlet("/auth/login")
public class LogInServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 로그인 경로로 들어왔을 때 로그인 화면을 보여주자
		RequestDispatcher rd = req.getRequestDispatcher
						("/auth/LogInForm.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
		      ServletContext sc = this.getServletContext();
		      MemberDao memberDao = (MemberDao) sc.getAttribute("memberDao"); 
		      Boolean loginChecker = true;
		      Member member = memberDao.exist(
		    		  req.getParameter("email"), 
		    		  req.getParameter("password"));
		      if (member != null) {
		        HttpSession session = req.getSession();
		        session.setAttribute("member", member);
		        session.setAttribute("loginChecker", loginChecker);
		        resp.sendRedirect("../index.jsp");

		      } else {
		        RequestDispatcher rd = req.getRequestDispatcher(
		            "/auth/LogInFail.jsp");
		        rd.forward(req, resp);
		      }
		}catch(Exception e) {
			throw new ServletException(e);
		}
	}
}










