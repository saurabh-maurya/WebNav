import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class deleteURL extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id=0;
        String title;
        Connection conns = null;
        Statement stmts = null;
        ResultSet resultSet;
        title = request.getParameter("urldelete");
        if(!title.isEmpty())
            id = Integer.parseInt(title);
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Connecting to database...1234");
            conns = DriverManager.getConnection("jdbc:mysql://127.0.0.1/webnav","root","");
            System.out.println("Creating statement...");
            stmts = (Statement) conns.createStatement();
            stmts.executeUpdate("DELETE FROM `savedata` WHERE id="+id);
         }catch(SQLException se){
            out.print(se);
         }catch(Exception e){
            out.print(e);
         }
        String name = request.getSession().getAttribute("username").toString();
        request.setAttribute("username", name);
        response.sendRedirect("manage.jsp");
    }
}
