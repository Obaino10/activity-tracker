package webapp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/logout.do")
public class LogoutServlet extends HttpServlet{

	UserValid uservalid = new UserValid();
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException {
		req.getSession().invalidate();
		req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req,resp);
	}
}