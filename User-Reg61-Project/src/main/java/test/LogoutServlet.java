package test;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/Logout")
public class LogoutServlet extends HttpServlet{
  @Override
	protected void doGet(HttpServletRequest req,HttpServletResponse res)
      throws ServletException,IOException{
		Cookie c[]= req.getCookies();
		if(c==null) {
			req.setAttribute("msg","<h3>Session Expired ......</h1>");
		}else {
			
			req.removeAttribute("ubean");
			c[0].setMaxAge(0);
			req.setAttribute("msg","<h1>User Logged Out Successfully.....");
        }
		req.getRequestDispatcher("Msg.jsp").forward(req, res);
		
	}
}
