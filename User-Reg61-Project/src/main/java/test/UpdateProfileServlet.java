package test;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/update")
public class UpdateProfileServlet extends HttpServlet  {
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException, ServletException
	{
		Cookie c[] = req.getCookies();
		if(c==null) {
			req.setAttribute("msg", "<h2>Update is Session Expired.......</h2><br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}else {
			String fName = c[0].getValue();
			req.setAttribute("name", fName);
			ServletContext sct = req.getServletContext();
	        UserBean ub = (UserBean)sct.getAttribute("ubean");
	        
	        
	        ub.setlName(req.getParameter("lname"));
	        ub.setAddr(req.getParameter("addr"));
	        ub.setmId(req.getParameter("mid"));
	        ub.setPhNo(Long.parseLong(req.getParameter("phno")));
	        
	        int k = new UpdateProfileDAO().update(ub);
	        if(k>0) {
				req.setAttribute("msg", "<h1>Profile Update Successufylly.......</h1><br>");
				req.getRequestDispatcher("UpdateProfile.jsp").forward(req, res);
			}
		}	
	}
}
