import jakarta.servlet.ServletException;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.UUID;

public class SecondServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String days = request.getParameter("days");
			String per = request.getParameter("per");
			
			
			
			String uniqueID = UUID.randomUUID().toString();
			HttpSession session = request.getSession();
			session.setAttribute("token", uniqueID);			
			Cookie fn = new Cookie("fname",fname);
			response.addCookie(fn);
			Cookie ln = new Cookie("lname",lname);
			response.addCookie(ln);
			Cookie d = new Cookie("days",days);
			response.addCookie(d);
			Cookie p = new Cookie("per",per);
			response.addCookie(p);
			
						
			response.sendRedirect("final.jsp");
		} catch(Exception e) {
			System.out.print(e);
		}
	
	}

}
