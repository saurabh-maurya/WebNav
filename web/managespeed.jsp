<%-- 
    Document   : manage
    Created on : 8 Oct, 2018, 1:57:02 PM
    Author     : Rohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <style>
            #customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}

.dBM
    {
        font-size: 15px;
        outline: none;
        padding:5px;
    }
    
    .uBM
    {
        font-size: 15px;
        outline: none;
        margin-bottom: 8px;
        padding:5px;
    }
    
    h3
    {
        font-family: sans-serif;
        margin-bottom: 8px;
    }
    
    
    

        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table id="customers">
            <tr>
                <th>ID</th>
                <th>TITLE</th>
                <th>URL</th>
            </tr>
        <%! String caption=null,url=null;int id; %>
        <%  String username = session.getAttribute("username").toString();  %>
        <%  
                    Connection conns = null;
                    Statement stmts = null;
                    ResultSet resultSet;
                    if(username!=null){
                    try{
                        Class.forName("com.mysql.jdbc.Driver");
                        System.out.println("Connecting to database...");
                        conns = DriverManager.getConnection("jdbc:mysql://127.0.0.1/webnav","root","");
                        System.out.println("Creating statement...");
                        stmts = (Statement) conns.createStatement();
                        resultSet = stmts.executeQuery("SELECT * FROM `speeddial` WHERE username='"+username+"'");
                        while(resultSet.next()){
                            url = resultSet.getString("URL");
                            caption = resultSet.getString("title");
                            id = resultSet.getInt("id");
                        %>
                        <div style="margin-bottom: 20px;">
                            <tr>
                                <td><%=id %></td>
                                <td><%=caption %></td>
                                <td><%=url %></td>
                            </tr>
                        </div>
                    <% }
                     }catch(SQLException se){
                        out.print(se);
                     }catch(Exception e){
                        out.print(e);
                     } 
                } %>
        </table>
         <div style="margin-top: 40px; " >
            <h3 style="">Delete Speed Dial</h3>
            <form  class="deleteBookmark" action="deletespeed" method="POST">
                <input class="dBM" type="number" name="urldelete" placeholder="ID" required>
                <button style="margin-left:10px" class="dBM" type="submit" id="dlSub" class="btn btn-default btn-lg">DELETE</button>
            </form>
        </div>
        
        <div style="margin-top: 50px;">
            <h3 style="">Update Speed Dial</h3>
            <form class="updateBookmark" action="updateSpeed" method="POST">
                <input class="uBM" type="number" name="idno" placeholder="ID" required><br>
                <input class="uBM" type="text" name="titleBar" placeholder="TITLE" required> <br>
                <input type="text" class="uBM" name="urlBar" placeholder="URL" required > <br>
                <button style="margin-top:10px;" type="submit" class="uBM" id='upSub' class="btn btn-default btn-lg">UPDATE</button>
            </form>
        </div>
    </body>
</html>
