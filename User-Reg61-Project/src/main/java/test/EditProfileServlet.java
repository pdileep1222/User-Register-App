package test;
import java.io.IOException;

import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
@SuppressWarnings("serial")
@WebServlet("/edit")
public class EditProfileServlet extends HttpServlet
{
	@Override
  protected void doGet(HttpServletRequest req, HttpServletResponse res)throws IOException,ServletException
  {
	  Cookie c[]= req.getCookies();
	 if(c==null) {
		 req.setAttribute("msg","<h1>Edit Session Expired......</h1>");
		 req.getRequestDispatcher("Msg.jsp").forward(req, res);
	 }else {
		 String fName = c[0].getValue();
		 req.setAttribute("name", fName);
		 req.getRequestDispatcher("EditProfile.jsp").forward(req, res);
	 }
  }
}
