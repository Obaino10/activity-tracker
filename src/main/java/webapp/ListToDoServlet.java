package webapp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.TreeSet;

@WebServlet(urlPatterns = "/activity-list.do")
public class ListToDoServlet extends HttpServlet {

    ArrayList<ToDo> todo = new ArrayList<ToDo>();

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException {
        HttpSession session = req.getSession();
        String emailAct =  (String) session.getAttribute("email");
        String sql = "select * from activities where email = ? ";
        try {
            todo.clear();
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb","root","root123");
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,emailAct);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String act=rs.getString("activity");
                String cat=rs.getString("category");
                String mail=rs.getString("email");
                System.out.println("act -- " + act + " cat -- " + cat + " mail -- " + mail);
                todo.add(new ToDo(act, cat,mail));
            }
            if(todo.isEmpty()){
                req.setAttribute("empMsg","Current there is no activity, Add activity");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("todo", todo);
        req.getRequestDispatcher("/WEB-INF/views/todo.jsp").forward(req, resp);

    }

}