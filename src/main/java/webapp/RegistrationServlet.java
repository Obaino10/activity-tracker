package webapp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(urlPatterns = "/Registration")
public class RegistrationServlet extends HttpServlet{

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException {
		req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req,resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException {
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		System.out.println("Within first most " + name + "email" + email + "password" + password);
		String sql = "insert into registration (name,email,password) values (?, ?, ?)";
		System.out.println("Within first name " + name + "email" + email + "password" + password);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","root123");
			PreparedStatement ps = conn.prepareStatement(sql);
			System.out.println("name " + name + "email" + email + "password" + password);
			ps.setString(1,name);
			ps.setString(2,email);
			ps.setString(3,password);
			ps.executeUpdate();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		req.setAttribute("mesg", "Successfully Registration , Please login!!");
		req.getRequestDispatcher("/login.do").forward(req, resp);
	}

}