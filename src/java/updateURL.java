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

public class updateURL extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id=0;
        String idno,title,URL;
        Connection conns = null;
        Statement stmts = null;
        ResultSet resultSet;
        
        idno = request.getParameter("idno");
        title =request.getParameter("titleBar");
        URL = request.getParameter("urlBar");
        if(!idno.isEmpty())
            id = Integer.parseInt(idno);
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Connecting to database...1234");
            conns = DriverManager.getConnection("jdbc:mysql://127.0.0.1/webnav","root","");
            System.out.println("Creating statement...");
            stmts = (Statement) conns.createStatement();
            stmts.executeUpdate("UPDATE `savedata` SET `URL`= '"+URL+"' ,`title`= '"+title+"' WHERE id="+id);
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
