package webapp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(urlPatterns = "/add-activity.do")
public class AddToDoServlet extends HttpServlet {

    ToDoList todolist = new ToDoList();


    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException {

        HttpSession session = req.getSession();
        String newToDo = req.getParameter("todoNewVal");
        String newCategory = req.getParameter("todoNewCat");
        String emailAct =  (String) session.getAttribute("email");
        String sql = "insert into activities (activity,category,email) values (?, ?, ?)";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","root123");
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,newToDo);
            ps.setString(2,newCategory);
            ps.setString(3,emailAct);
            ps.executeUpdate();

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        resp.sendRedirect("/activity-list.do");

    }
}