/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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

/**
 *
 * @author Rohit Totlani
 */
public class Retrive extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String idNo;
        Connection conns = null;
        Statement stmts = null;
        ResultSet resultSet;
        int id=0;
        idNo = request.getParameter("idno");
        String caption=null,url=null;
        if(!idNo.isEmpty())
            id = Integer.parseInt(idNo);
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Connecting to database...1234");
            conns = DriverManager.getConnection("jdbc:mysql://127.0.0.1/webnav","root","");
            System.out.println("Creating statement...");
            stmts = (Statement) conns.createStatement();
            resultSet = stmts.executeQuery("SELECT * FROM `savedata` WHERE id="+id);
            while(resultSet.next()){
                url = resultSet.getString("URL");
                caption = resultSet.getString("title");
            }
         }catch(SQLException se){
            out.print(se);
         }catch(Exception e){
            out.print(e);
         }
        String name = request.getSession().getAttribute("username").toString();
        request.setAttribute("username", name);
        request.setAttribute("url", url);
        request.setAttribute("caption", caption);
        response.sendRedirect("manage.jsp");
        
    }
}
