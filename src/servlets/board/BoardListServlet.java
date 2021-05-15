package servlets.board;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BoardDao;
import vo.Board;


@SuppressWarnings("serial")
@WebServlet("/list")
public class BoardListServlet extends HttpServlet{
   
   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      ServletContext sc = this.getServletContext();
      BoardDao boardDao = (BoardDao)sc.getAttribute("boardDao");
      
      try {         
         List<Board> boardlist = boardDao.selectList();
         
         resp.setContentType("text/html; charset=UTF-8"); // 먼저 호출
   
         req.setAttribute("boardlist", boardlist);
         
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





