import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;


public class ThirdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			HttpSession session = request.getSession(false);
			String UID = (String)session.getAttribute("token");
			out.print("Unique ID - "+UID+"<br>");
			out.println("<br>");
			
			jakarta.servlet.http.Cookie[] c = request.getCookies();
			
			out.print("First Name - "+c[1].getValue()+"<br>");
			out.print("Second Name - "+c[2].getValue()+"<br>");
			out.print("Number of days - "+c[0].getValue()+"<br>");
			out.print("Number of People - "+c[3].getValue()+"<br>");
			
			out.println("<br>");
			out.print("<a href='final.jsp'>Go to Confirmation Page</a>");
			out.close();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}