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

@WebServlet(urlPatterns = "/delete-activity.do")
public class DeleteToDoServlet extends HttpServlet {

    ToDoList todolist = new ToDoList();
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException {

        String delAct = (String) req.getParameter("todo");
        String delCat = (String) req.getParameter("cag");

        System.out.println("Deleting act " + delAct + " cat + " + delCat);
        String sql = "delete from activities where activity = ? and category = ?";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","root123");
            PreparedStatement ps = conn.prepareStatement(sql);
            //System.out.println("name " + name + "email" + email + "password" + password);
            ps.setString(1,delAct);
            ps.setString(2,delCat);
            ps.executeUpdate();

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        resp.sendRedirect("/activity-list.do");
    }

}