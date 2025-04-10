package test;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/view")
public class ViewProfileServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		Cookie c[] = req.getCookies();
		if (c == null) {
			req.setAttribute("msg", "<h1>Session Expired.....</h1><br>");
			req.getRequestDispatcher("Msg>jsp").forward(req, res);
		} else {
			String fName = c[0].getValue();
			req.setAttribute("name", fName);
			req.getRequestDispatcher("ViewProfile.jsp").forward(req, res);
		}

	}
}
