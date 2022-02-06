

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/FirstServlet")
public class FirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try {
			
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			String n=request.getParameter("uname");
			String p=request.getParameter("pass");
			
			if (n.equals("admin") && p.equals("12345"))
			{
			out.print("Session is Starting for "+n);
			
			HttpSession session=request.getSession();
			session.setAttribute("Username", n);
			
			response.sendRedirect("booking.html");
			
			}
			
			else {
				out.print("Error");
				response.sendRedirect("index.html");
			}
			
		}
		
		catch(Exception e)
		{
		System.out.print(e);
		}
		
	}

}
