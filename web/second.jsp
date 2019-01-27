<%-- 
    Document   : index
    Created on : 25 Sep, 2018, 9:30:51 PM
    Author     : Rohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@ page autoFlush="true" buffer="1094kb"%>
<!DOCTYPE html>
<html>
    <head>

        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script>


            $(document).ready(function () {

                $('#download').hide();
                $("#icon1").mouseenter(function () {
                    $('#icon2 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $('#icon3 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $('#icon4 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $('#icon5 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $("#video").slideUp('fast');
                    $("#music").slideUp('fast');
                    $("#code").slideUp('fast');
                    $("#social").slideUp('fast');
                    $("#download").slideToggle('fast');
                    $('#icon1 img').css({'transform': 'scale(1.3,1.3)', 'transition': '0.3s'});
                });
            });

            $(document).ready(function () {
                $('#main').hide();
                $(".sidemenu").mouseenter(function () {
                    $("#main").slideToggle('fast');
                    $(".sidemenu").fadeOut();
                });
            });

            $(document).ready(function () {
                $('#main').hide();
                $("#main").mouseleave(function () {
                    $("#main").slideToggle('fast');
                    $('.sidemenu').fadeIn();
                });
            });

            $(document).ready(function () {
                $('#download').hide();
                $("#download").mouseleave(function () {
                    $("#download").slideUp('fast');
                    $('#icon1 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                });
            });

            $(document).ready(function () {

                $('#video').hide();
                $("#icon2").mouseenter(function () {
                    $('#icon1 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $('#icon3 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $('#icon4 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $('#icon5 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $("#download").slideUp('fast');
                    $("#music").slideUp('fast');
                    $("#code").slideUp('fast');
                    $("#social").slideUp('fast');
                    $("#video").slideToggle('fast');
                    $('#icon2 img').css({'transform': 'scale(1.3,1.3)', 'transition': '0.3s'});
                });
            });

            $(document).ready(function () {
                $('#video').hide();
                $("#video").mouseleave(function () {
                    $("#video").slideUp('fast');
                    $('#icon2 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                });
            });

            $(document).ready(function () {

                $('#music').hide();
                $("#icon3").mouseenter(function () {
                    $('#icon1 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $('#icon2 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $('#icon4 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $('#icon5 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $("#download").slideUp('fast');
                    $("#video").slideUp('fast');
                    $("#code").slideUp('fast');
                    $("#social").slideUp('fast');
                    $("#music").slideToggle('fast');
                    $('#icon3 img').css({'transform': 'scale(1.3,1.3)', 'transition': '0.3s'});
                });
            });

            $(document).ready(function () {
                $('#music').hide();
                $("#music").mouseleave(function () {
                    $("#music").slideUp('fast');
                    $('#icon3 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                });
            });

            $(document).ready(function () {

                $('#code').hide();
                $("#icon4").mouseenter(function () {
                    $('#icon1 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $('#icon2 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $('#icon3 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $('#icon5 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $("#download").slideUp('fast');
                    $("#music").slideUp('fast');
                    $("#video").slideUp('fast');
                    $("#social").slideUp('fast');
                    $("#code").slideToggle('fast');
                    $('#icon4 img').css({'transform': 'scale(1.3,1.3)', 'transition': '0.3s'});
                });
            });

            $(document).ready(function () {
                $('#code').hide();
                $("#code").mouseleave(function () {
                    $("#code").slideUp('fast');
                    $('#icon4 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                });
            });

            $(document).ready(function () {

                $('#social').hide();
                $("#icon5").mouseenter(function () {
                    $('#icon1 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $('#icon2 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $('#icon3 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $('#icon4 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $("#download").slideUp('fast');
                    $("#music").slideUp('fast');
                    $("#code").slideUp('fast');
                    $("#video").slideUp('fast');
                    $("#social").slideToggle('fast');
                    $('#icon5 img').css({'transform': 'scale(1.3,1.3)', 'transition': '0.3s'});
                });
            });

            $(document).ready(function () {
                $('#social').hide();
                $("#social").mouseleave(function () {
                    $("#social").slideUp('fast');
                    $('#icon5 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                });
            });

            $(document).ready(function () {
                $('.searchAndIcons').mouseleave(function () {
                    $('#icon1 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $('#icon2 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $('#icon3 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $('#icon4 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $('#icon5 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $("#download").slideUp('fast');
                    $("#music").slideUp('fast');
                    $("#social").slideUp('fast');
                    $("#code").slideUp('fast');
                    $("#video").slideUp('fast')
                });
            });

            $(document).ready(function () {
                $('#search').mouseenter(function () {
                    $('#icon1 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $('#icon2 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $('#icon3 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $('#icon4 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $('#icon5 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $("#download").slideUp('fast');
                    $("#music").slideUp('fast');
                    $("#social").slideUp('fast');
                    $("#code").slideUp('fast');
                    $("#video").slideUp('fast')
                });
            });
            
            $(document).ready(function () {
                $('.box').mouseenter(function () {
                    $('#icon1 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $('#icon2 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $('#icon3 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $('#icon4 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $('#icon5 img').css({'transform': 'scale(1,1)', 'transition': '0.3s'});
                    $("#download").slideUp('fast');
                    $("#music").slideUp('fast');
                    $("#social").slideUp('fast');
                    $("#code").slideUp('fast');
                    $("#video").slideUp('fast')
                });
            });


        </script>

        <style>

            body
            {
                background-image: url("images/bg3.jpg");
                background-attachment:fixed;
                background-size:cover;
                background-repeat:no-repeat;
            }

            #search:hover
            {
                box-shadow:0px 7px 15px rgba(150,150,150,1);
            }

            #search:focus
            {
                box-shadow:0px 7px 15px rgba(150,150,150,1);
            }

            #search
            {
                text-align:center;
                width:100%;
                background-color:rgba(255,255,255,0.8);
                padding:7px;
                margin-left:auto;
                margin-right:auto;
                border-radius:30px;
                border:0;
                align:center;
                font-size:20px;
                outline:none;
                transition:0.2s;
                box-shadow:0px 2px 7px rgba(150,150,150,1);
                
                width:100%;
                position: relative;
                margin-top:25px;
                margin-bottom: 10px;
                align:center;
                display:block;
            }

            #logo
            {
                position:relative;
                left:590px;
                display:block;
            }
            #webnav
            {
                font-family:sans-serif;
                font-weight:bold;
                font-size:25px;
                position:absolute;
                left:660px;
                top:0;
                text-align:center;
            }

            .sidemenu
            {
                position:absolute;
                top:9px;
                left:13px;
                z-index:6;
            }
            #main
            {
                position:absolute;
                background-color:transparent;
                top:0;
                margin-top:30px;
                margin-left:5px;
                color:white;
                left:0;
                padding-left:0;
                padding-right:10px;
                border-radius:0;
                z-index:5;
                overflow:auto;
                display:block;
            }

            #download
            {
                position:absolute;
                background:linear-gradient(0deg,#000,#262626);
                top:240px;
                color:white;
                left:357px;
                padding-right:8px;
                border-radius:5px;
                z-index:100;
                overflow:auto;
                transition: box-shadow 0.25s;
            }

            #download:hover
            {
                box-shadow:3px 3px 10px black;
            }

            #download ul li
            {
                padding:5px;
                text-align:center;
            }

            #download a
            {
                text-decoration:none;
                color:white;
                font-family:sans-serif;
                font-size:14px;
                transition:0.2s;
            }

            #download a:hover
            {
                padding:5px;
                background-color:#f7f4f4;
                color:black;
                font-weight:bold;
                font-size:16px;
                border-radius:5px;
            }

            #video
            {
                position:absolute;
                background:linear-gradient(0deg,#000,#262626);
                top:240px;
                color:white;
                left:490px;
                padding-right:8px;
                border-radius:5px;
                z-index:100;
                overflow:auto;
                transition: box-shadow 0.5s;
            }

            #video:hover
            {
                box-shadow:3px 3px 10px black;
            }

            #video ul li
            {
                padding:5px;
                text-align:center;
            }

            #video a
            {
                text-decoration:none;
                color:white;
                font-family:sans-serif;
                font-size:14px;
                transition:0.2s;
            }

            #video a:hover
            {
                padding:5px;
                background-color:#f7f4f4;
                color:black;
                font-weight:bold;
                font-size:16px;
                border-radius:5px;
            }


            #music
            {
                position:absolute;
                background:linear-gradient(0deg,#000,#262626);
                top:240px;
                color:white;
                left:638px;
                padding-right:8px;
                border-radius:5px;
                z-index:100;
                overflow:auto;
                transition: box-shadow 0.5s;
            }

            #music:hover
            {
                box-shadow:3px 3px 10px black;
            }

            #music ul li
            {
                padding:5px;
                text-align:center;
            }

            #music a
            {
                text-decoration:none;
                color:white;
                font-family:sans-serif;
                font-size:14px;
                transition:0.2s;
            }

            #music a:hover
            {
                padding:5px;
                background-color:#f7f4f4;
                color:black;
                font-weight:bold;
                font-size:16px;
                border-radius:5px;
            }

            #code
            {
                position:absolute;
                background:linear-gradient(0deg,#000,#262626);
                top:240px;
                color:white;
                left:764px;
                padding-right:8px;
                border-radius:5px;
                z-index:100;
                overflow:auto;
                transition: box-shadow 0.5s;
            }

            #code:hover
            {
                box-shadow:3px 3px 10px black;
            }

            #code ul li
            {
                padding:5px;
                text-align:center;
            }

            #code a
            {
                text-decoration:none;
                color:white;
                font-family:sans-serif;
                font-size:14px;
                transition:0.2s;
            }

            #code a:hover
            {
                padding:5px;
                background-color:#f7f4f4;
                color:black;
                font-weight:bold;
                font-size:16px;
                border-radius:5px;
            }


            #social
            {
                position:absolute;
                background:linear-gradient(0deg,#000,#262626);
                top:240px;
                color:white;
                left:908px;
                padding-right:8px;
                border-radius:5px;
                z-index:100;
                overflow:auto;
                transition: box-shadow 0.5s;
            }

            #social:hover
            {
                box-shadow:3px 3px 10px black;
            }

            #social ul li
            {
                padding:5px;
                text-align:center;
            }

            #social a
            {
                text-decoration:none;
                color:white;
                font-family:sans-serif;
                font-size:14px;
                transition:0.2s;
            }

            #social a:hover
            {
                padding:5px;
                background-color:#f7f4f4;
                color:black;
                font-weight:bold;
                font-size:16px;
                border-radius:5px;
            }


            #main li
            {
                font-size:20px;
                margin-bottom:30px;
                box-sizing:border-box;
                display:list-item;
                clear:both;
                z-index:5;
            }

            #main li a
            {
                font-family:sans-serif;
                font-width:bold;
                background-color:white;
                border-radius:5px;
                padding:10px;
                color:black;
                text-decoration:none;
                transition: color 0.2s, background-color 0.2s, padding 0.2s, margin 0.2s;
                z-index:5;
                transition-timing-function:ease-out;
                box-shadow:2px 2px 7px rgba(43,44,45,0.8);
            }
            #main li a:hover
            {
                color:white;
                background-color:#02bb71;
                padding:15px;
                font-weight:bold;
                margin:13px;
            }


            td
            {
                padding-bottom:7px;
                text-align:center;
            }

            .searchAndIcons
            {
                margin-top:-15px;
            }

            .tablecolumn
            {
                padding-bottom:20px;
            }
            .modal-header, h4, .close {
                background-color: #5cb85c;
                color:white !important;
                text-align: center;
                font-size: 30px;
            }
            .modal-footer {
                background-color: #f9f9f9;
            }
            
.box
{
    position:relative;
    text-align: center;
    padding-top: 30px;
    background: rgba(1,1,1,0.6);
    box-sizing: border-box;
    overflow: hidden;
    box-shadow: 0 6px 8px rgba(0,0,0,0.5);
    width:160px;
    border: 2px solid rgba(0,0,0,0.5);
    height: 150px;
	border-radius:10px;
}
    
.box::before
{
    content:'';
    position:absolute;
    top:0;
    left:-100%;
    width: 100%;
    height: 100%;
    background: rgba(255,255,255,0.1);
    transition:0.25s;
    pointer-events: none;
}
    
.box:hover::before
{
    left: -40%;
    transform: skewX(-5deg);
    box-shadow: 0 0 0;
}
 
.box .content
{
    position: absolute;
    top:10px;
    left: 10px;
    right:10px;
    bottom:10px;
    padding:10px;
    border-radius:10px;
    text-align: center;
    
}    
    
.box a
{
    text-decoration: none;
    color:#fff;
    font-size: 15px;
}

.box a h3
{
    margin-top: 25px;
    color:#fff;
    font-size: 16px;
}


.box img
{
    margin-bottom: -10px;
    margin-top: -10px;
}
            .modal-header, h4, .close {
                background-color: #5cb85c;
                color:white !important;
                text-align: center;
                font-size: 30px;
            }
            .modal-footer {
                background-color: #f9f9f9;
            }
            .dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    right: 0;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1;}
.dropdown:hover .dropdown-content {display: block;}
.dropdown:hover .dropbtn {background-color: #3e8e41;}

     </style>
    </head>
    <body>



        <div class='logo' style="position: relative;top: 5px;">
            <span class="mainlogo">
                <img id='logo' src="images\webnav2.png" width=60px height=60px>
                <h2 id='webnav'> WebNav</h2>
            </span>    
            <div style="position: absolute;top: 5px; right: 10px">
                <button type="button" class="btn btn-default btn-lg" id="myBtn"><img src='images/addbookmark.png' width='25px' height='25px' style='margin:-5px'></button>
                <button type="button" class="btn btn-default btn-lg speed" id="myBtn2"><img src='images/addspeed.png' width='25px' height='25px' style='margin:-5px' style='background:black'></button>
                <div class="dropdown" style="float:right; margin-left: 20px;">
                <button class="btn btn-default btn-lg">Manager</button>
                
                <div class="dropdown-content">
                    <form action="manage.jsp">
                        <button type="submit" class="btn btn-default btn-lg">Manage Bookmark</button>                        
                    </form>
                    <form action='managespeed.jsp'>
                        <button type="submit" class="btn btn-default btn-lg">Manage Speed Dial</button>
                    </form>    
                <%! String caption=null,url=null; %>
                <%   String username = session.getAttribute("username").toString(); %>
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
                        resultSet = stmts.executeQuery("SELECT * FROM `savedata` WHERE username='"+username+"'");
                        while(resultSet.next()){
                            url = resultSet.getString("URL");
                            caption = resultSet.getString("title");
                        %>
                        <a href="<%=url %>" target='_blank'><%=caption %></a>
                    <% }
                     }catch(SQLException se){
                        out.print(se);
                     }catch(Exception e){
                        out.print(e);
                     } 
                } %>
                
                
                
                </div>
</div>
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times</button>
          <h2>Add Bookmark</h2>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
            <form role="form" action="SaveUrl" method="POST">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Title</label>
              <input type="text" class="form-control" id="usrname" placeholder="Enter title" name="title">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> URL</label>
              <input type="text" class="form-control" id="psw" placeholder="Enter URL" name="saveURL">
            </div>
                <button type="submit" class="btn btn-success btn-block" style="margin-top: 20px;"><span class="glyphicon glyphicon-off"></span> Save</button>
            </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
        </div>
      </div>
      
    </div>
  </div> 
  
  
  
 
  <div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times</button>
          <h2>Add Speed Dial</h2>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
            <form role="form" action="SpeedDial" method="POST">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Title</label>
              <input type="text" class="form-control" id="usrname" placeholder="Enter title" name="title_speed">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> URL</label>
              <input type="text" class="form-control" id="psw" placeholder="Enter URL" name="saveURL_speed">
            </div>
                <button type="submit" class="btn btn-success btn-block" style="margin-top: 20px;"><span class="glyphicon glyphicon-off"></span> Save</button>
            </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
        </div>
      </div>
      
    </div>
  </div>
  
<script>
$(document).ready(function(){
    $("#myBtn").click(function(){
        $("#myModal").modal();
    });
});

$(document).ready(function(){
    $("#myBtn2").click(function(){
        $("#myModal2").modal();
    });
});
</script>
</div>
            
        </div>

                        <div class='sidemenu'  >
                            <span class="menu" >
                                <img class='menu' src="images\menu3.png" width=30px height=30px>
                            </span>
                        </div>

                        <div class="searchAndIcons" style="margin-top: 10px;">

                            <table align='center' style='width:50%;'>
                                <tr>
                                    <td colspan='5'>
                                        <form role='form' action='search1' method="POST">
                                        <input type="text" id="search" 
                                               onfocus="javascript:addClass('mainContainer','input-active');" 
                                               onblur="javascript:removeClass('mainContainer','input-active');" 
                                               onkeydown="javascript:handleQuery(event,this.value);"
                                               placeholder="Google"
                                               name='searchBar'>
                                        <input type='submit' id='searchSubmit' name='searchButton' hidden='true'>
                                        </form>
                     
                                        
                                    </td>
                                </tr>
                                <tr id='iconrow'>
                                    <td class='tablecolumn' style="padding-top: 10px;">
                                        <span id='icon1'>
                                            <img id='jkjk' src='images\download.png' width=60px height=60px>
                                        </span>
                                    </td>
                                    <td class='tablecolumn' style="padding-top: 10px;">
                                        <span id='icon2'>
                                            <img src='images\video2.png' width=60px height=60px>
                                        </span>
                                    </td >
                                    <td class='tablecolumn' style="padding-top: 10px;">
                                        <span id='icon3'>
                                            <img src='images\shop.png' width=60px height=60px>
                                        </span>
                                    </td>
                                    <td class='tablecolumn' style="padding-top: 10px;">
                                        <span id='icon4'>
                                            <img src='images\code.png' width=60px height=60px>
                                        </span>
                                    </td>
                                    <td class='tablecolumn' style="padding-top: 10px;">
                                        <span id='icon5'>
                                            <img src='images\social.png' width=60px height=60px>
                                        </span>
                                    </td>
                                </tr>	
                            </table>

                            <div id='download' >
		<ul style='padding-top:10px; list-style-type:none; margin:0;padding-left:5px; list-spacing:10px;'>
			<li class="menu-link-item"><a href="https://1337x.to" target="_blank">1337x</a></li>
			<li class="menu-link-item"><a href="https://www.netflix.com" target="_blank">RARBG</a></li>
			<li class="menu-link-item"><a href="https://yifymovieonline.com" target="_blank">Yify</a></li>
			<li class="menu-link-item"><a href="https://sci.libgen.pw" target="_blank">LibGen</a></li>
			<li class="menu-link-item"><a href="https://soundcloud.com" target="_blank">SoundCloud</a></li>
			<li class="menu-link-item"><a href="https://store.dckap.com" target="_blank">MegaSearch</a></li>
			<li class="menu-link-item"><a href="https://www.soundclick.com" target="_blank">SoundClick</a></li>
			<li class="menu-link-item"><a href="https://ytmp3.cc" target="_blank">YouTubemp3</a></li>
			<li class="menu-link-item"><a href="https://thepiratebay3.org" target="_blank">PirateBay</a></li>
			<li class="menu-link-item"><a href="https://www.zoogle.com" target="_blank">zoogle</a></li>
			<li class="menu-link-item"><a href="https://www.free-ebooks.net" target="_blank">ebooks</a></li>
		</ul>	
	</div>	
	
	<div id='video'>
		<ul style='padding-top:10px; list-style-type:none; margin:0;padding-left:5px; list-spacing:10px;'>
			<li class="menu-link-item"><a href="https://www.youtube.com" target="_blank">YouTube</a></li>
			<li class="menu-link-item"><a href="https://m..com" target="_blank">Netflix</a></li>
			<li class="menu-link-item"><a href="https://www.twitch.tv" target="_blank">Twitch</a></li>
			<li class="menu-link-item"><a href="https://open.spotify.com" target="_blank">Spotify</a></li>
			<li class="menu-link-item"><a href="https://soundcloud.com" target="_blank">SoundCloud</a></li>
			<li class="menu-link-item"><a href="https://sendit.gg" target="_blank">Send It</a></li>
			<li class="menu-link-item"><a href="https://scr.cr" target="_blank">StreamCR</a></li>
			<li class="menu-link-item"><a href="https://ololo.to" target="_blank">Ololo</a></li>
			<li class="menu-link-item"><a href="https://9anime.is" target="_blank">9Anime</a></li>
			<li class="menu-link-item"><a href="https://www.watchcartoononline.com" target="_blank">WatchCartoon</a></li>
			<li class="menu-link-item"><a href="https://swatchseries.to" target="_blank">WatchSeries</a></li>
		</ul>
	</div>
	
	<div id='music'>
		<ul style='padding-top:10px; list-style-type:none; margin:0;padding-left:5px; list-spacing:10px;'>
			<li class="menu-link-item"><a href="https://flipkart.com" target="_blank">FlipKart</a></li>
			<li class="menu-link-item"><a href="https://www.amazon.in/home" target="_blank">Amazon</a></li>
			<li class="menu-link-item"><a href="https://m.snapdeal.com" target="_blank">SnapDeal</a></li>
			<li class="menu-link-item"><a href="https://www.myntra.com" target="_blank">Myntra</a></li>
			<li class="menu-link-item"><a href="https://m.jabong.com" target="_blank">Jabong</a></li>
			<li class="menu-link-item"><a href="https://www.olx.in" target="_blank">OLX</a></li>
			<li class="menu-link-item"><a href="https://m.ebay.com" target="_blank">ebay</a></li>
			<li class="menu-link-item"><a href="https://m.hm.com" target="_blank">H&M</a></li>
			<li class="menu-link-item"><a href="https://m.nike.com" target="_blank">Nike</a></li>
			<li class="menu-link-item"><a href="https://www.lifestylestores.com" target="_blank">Lifestyle</a></li>
			<li class="menu-link-item"><a href="https://m.voonik.com" target="_blank">Voonik</a></li>
		</ul>
	</div>
	
	<div id='code'>
		<ul style='padding-top:10px; list-style-type:none; margin:0;padding-left:5px; list-spacing:10px;'>
			<li class="menu-link-item"><a href="https://www.codeacademy.com" target="_blank">codeacademy</a></li>
			<li class="menu-link-item"><a href="https://in.udacity.com" target="_blank">Udacity</a></li>
			<li class="menu-link-item"><a href="https://github.com" target="_blank">GitHub</a></li>
			<li class="menu-link-item"><a href="https://open.w3school.com" target="_blank">w3school</a></li>
			<li class="menu-link-item"><a href="https://www.futurelearn.com" target="_blank">Futurelearn</a></li>
			<li class="menu-link-item"><a href="https://www.udemy.com" target="_blank">Udemy</a></li>
			<li class="menu-link-item"><a href="https://jscompress.com" target="_blank">JSCompress</a></li>
			<li class="menu-link-item"><a href="https://www.skillshare.com" target="_blank">Skillshare</a></li>
			<li class="menu-link-item"><a href="https://codepen.io" target="_blank">CodePen</a></li>
			<li class="menu-link-item"><a href="https://com.ultravfx.qirina.com" target="_blank">UltraVFX</a></li>
			<li class="menu-link-item"><a href="https://hackr.io" target="_blank">Hackr</a></li>
		</ul>
	</div>
	
	<div id='social'>
		<ul style='padding-top:10px; list-style-type:none; margin:0;padding-left:5px; list-spacing:10px;'>
			<li class="menu-link-item"><a href="https://m.facebook.com" target="_blank">Facebook</a></li>
			<li class="menu-link-item"><a href="https://www.instgram.com" target="_blank">Instagram</a></li>
			<li class="menu-link-item"><a href="https://twitter.com" target="_blank">Twitter</a></li>
			<li class="menu-link-item"><a href="https://www.linkedin.com" target="_blank">LinkedIn</a></li>
			<li class="menu-link-item"><a href="https://office.live.com" target="_blank">Outlook</a></li>
			<li class="menu-link-item"><a href="https://www.google.com" target="_blank">GoogleMail</a></li>
			<li class="menu-link-item"><a href="https://www.blogger.com" target="_blank">Blogger</a></li>
			<li class="menu-link-item"><a href="https://in.pinterest.com" target="_blank">Pinterest</a></li>
			<li class="menu-link-item"><a href="https://www.snapchat.com" target="_blank">Snapchat</a></li>
			<li class="menu-link-item"><a href="https://www.tumblr.com" target="_blank">Tumblr</a></li>
			<li class="menu-link-item"><a href="https://login.yahoo.com" target="_blank">YahooMail</a></li>
		</ul>
	</div>

        <div id='main'>
                            <ul style='padding-left:0;padding-top:30px; list-style-type:none; margin:0;padding-left:5px; list-spacing:10px;'>
                                <li><a href='https://www.timesofindia.com'>News</a></li>
                                <li><a href='https://www.techburner.com' target='_blank'>Tech</a></li>
                                <li><a href='#'target='_blank'>Radio</a></li>
                                <li><a href='https://www.bitcoin.org'target='_blank'>Crypto</a></li>
                                <li><a href='#' target='_blank'>Weather</a></li>
                                <li><a href='#'target='_blank'>Games</a></li>
                                <li><a href='#'target='_blank'>Technical</a></li>
                            </ul>
                        </div>

                        <br />    
<div class='speed-dial' style='margin-left:105px;margin-right: 10px;'>
    
            
         
              <%   String caption_speed=null,url_speed=null;char letter; %>
                <%   String username_speed = session.getAttribute("username").toString(); %>
                <% 
                    Connection conn = null;
                    Statement stmt = null;
                    ResultSet result;
                    if(username_speed!=null){
                    try{
                        Class.forName("com.mysql.jdbc.Driver");
                        System.out.println("Connecting to database...");
                        conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1/webnav","root","");
                        System.out.println("Creating statement...");
                        stmt = (Statement) conn.createStatement();
                        result = stmt.executeQuery("SELECT * FROM `speeddial` WHERE username='"+username_speed+"'");
                        while(result.next()){
                            
                            url_speed = result.getString("URL");
                            
                            caption_speed = result.getString("title");
                            letter = caption_speed.charAt(0);
                            
                            
                %>
               
                <center>
                <div class='box' style='float:left;margin-right:89px;margin-bottom: 50px'>
                       
                         <a href='<%=url_speed %>' target='_blank'>
                            <img src='images/<%=letter %>.png' height='75px' width='75px'>
                       <h3><%=caption_speed %></h3></a>
                      
                </div>    
                </center>
           
                    <% 
               
                    }
                     }catch(SQLException se){
                        out.print(se);
                     }catch(Exception e){
                        out.print(e);
                     } 
                } %>
                
                
</div>
        
</body>
</html>


