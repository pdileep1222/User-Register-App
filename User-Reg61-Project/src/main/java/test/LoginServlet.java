package test;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/log")
public class LoginServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws
   IOException,ServletException
   {
	   UserBean ub = new LoginDAO().Login(req.getParameter("uname"),req.getParameter("pword"));
	      if(ub==null) {
	    	  req.setAttribute("msg", "<h1>Invalid Login Process....<br>");
	    	  req.getRequestDispatcher("Msg.jsp").forward(req, res);
	      }else {
	    	  ServletContext sct = req.getServletContext(); //Accessing Context Object reference
	    	  sct.setAttribute("ubean", ub); //UserBean object reference add to context
	    	  Cookie ck = new Cookie("fname", ub.getfName()); //creating cookie
	    	  res.addCookie(ck); //
	    	  req.getRequestDispatcher("LoginSuccess.jsp").forward(req, res);
	    	  
	      }
	   
   }
}
