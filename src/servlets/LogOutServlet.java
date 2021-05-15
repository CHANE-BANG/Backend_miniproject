package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/auth/logout")
@SuppressWarnings("serial")
public class LogOutServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		Boolean loginChecker = (Boolean)session.getAttribute("loginChecker");
		loginChecker = false;
		session.setAttribute("loginChecker", loginChecker);
		session.invalidate();	// 세션 저장 객체 무효화
		// 다시 로그인 화면으로 이동
		resp.sendRedirect("login");
	}
}
















