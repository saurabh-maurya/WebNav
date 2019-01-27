
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SpeedDial extends HttpServlet {
@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("entering speeddial");
        String title2=null;String saveURL2=null;
        Connection conns = null;
        Statement stmts = null;
        ResultSet resultSet;
        String name = request.getSession().getAttribute("username").toString();
        title2 = request.getParameter("title_speed");
        saveURL2 = request.getParameter("saveURL_speed");
        System.out.println("data:-"+name+" "+title2+" "+saveURL2);
        if(title2!=null){
         try{
             Class.forName("com.mysql.jdbc.Driver");
             System.out.println("Connecting to database...1234");
             conns = DriverManager.getConnection("jdbc:mysql://127.0.0.1/webnav","root","");
             System.out.println("Creating statement...");
             stmts = (Statement) conns.createStatement();
             stmts.executeUpdate("INSERT INTO `speeddial`(`URL`, `title`, `username`) VALUES ('"+saveURL2+"','"+title2+"','"+name+"') ");
          }catch(SQLException se){
             System.out.print(se);
          }catch(ClassNotFoundException e){
             System.out.print(e);
          }
         response.sendRedirect("second.jsp");
       }
    }
}
