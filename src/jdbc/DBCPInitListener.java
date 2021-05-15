package jdbc;

import javax.naming.InitialContext;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.sql.DataSource;

import dao.BoardDao;
import dao.MemberDao;

public class DBCPInitListener implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		System.out.println("contextDestroyed 호출 - WebApp 종료");
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		try {
			System.out.println("contextInitialized 호출 - WebApp 시작");
			ServletContext sc = sce.getServletContext();
			
			// tomcat이 생성/관리하는 DataSource객체를 찾아온다
			InitialContext initialContext = 
					new InitialContext();
			DataSource ds = (DataSource)initialContext
					.lookup("java:comp/env/jdbc/studydb");
			
			MemberDao memberDao = new MemberDao();
			memberDao.setDataSource(ds);
		
			// 모든 서블릿이 사용할 수 있도록  memberDao를 공유한다. 공유 객체
			sc.setAttribute("memberDao", memberDao);
			
					
			BoardDao boardDao = new BoardDao();
			boardDao.setDataSource(ds);
			
			sc.setAttribute("boardDao", boardDao);

			
		}catch(Exception e) {
			e.printStackTrace();
		}

	}

}
