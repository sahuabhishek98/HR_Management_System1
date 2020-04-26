<%-- 
    Document   : announce
    Created on : Oct 26, 2018, 9:17:24 AM
    Author     : hp
--%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="theme.css">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            #botn{margin-top:15px;background-color:black;color:white;width:90px;height:25px; cursor: pointer;}
            .iconwid{width: 25px;position: relative;}
        </style>
    </head>
    <body>
        <div id="outer">
            <div id="header">


                <i style="font-size:50px;margin-left:25px;text-shadow:4px 4px black; color:aqua;">people<b style="font-size:30px;">.in</b></i>

                <i id="ad" style="font-size:35px; color:aqua;">Admin<b style="font-size:35px; color:aqua;">Area</b></i>
            </div>
            <div id="first">
                <div id="nav">
                   <ul>
                        <li class="dropdown"><a ><i class="fa fa-file iconwid" aria-hidden="true"></i>Manage Employee</a>
                            <div class="dropdown-content" >
                                <a href="admin_newregistration.jsp" style="border-bottom:1px solid black;"><i class="fa fa-user-plus iconwid" aria-hidden="true"></i>New Registration</a>
                                <a href="admin_search.jsp" style="border-bottom:1px solid black;"><i class="fa fa-search iconwid" aria-hidden="true"></i>Search Employee</a>
                            </div>
                        </li>
                        <li><a href="attendance.jsp"><i class="fa fa-font iconwid"></i>Attendance</a></li>
                        <li><a href="admin_loan.jsp"><i class="fa fa-handshake-o iconwid" aria-hidden="true"></i>Loan</a></li>
                        <li><a href="admin_salary.jsp"><i class="fa fa-money iconwid" aria-hidden="true"></i>Manage Salary</a></li>
                        <li><a href="admin_leaves.jsp"><i class="fa fa-adjust iconwid" aria-hidden="true"></i>Leaves</a></li>
                        <li><a href="new_apply.jsp"><i class="fa fa-user-plus iconwid" aria-hidden="true"></i>New Recruiter</a></li>
                        <li><a href="training_register.jsp"><i class="fa fa-group iconwid" aria-hidden="true"></i>Training & Event</a></li>
                        <li><a href="complain.jsp" ><i class="fa fa-hand-paper-o iconwid" aria-hidden="true"></i>Complaints</a></li>
                        <li><a href="announce.jsp" class="active"><i class="fa fa-bullhorn iconwid" aria-hidden="true"></i>Announcement</a></li>
                        <li><a href="admin_resign.jsp"><i class="fa fa-crosshairs iconwid" aria-hidden="true"></i>Resignation</a></li>
                        <li><a href="stress manage/index.html"><i class="fa fa-heart-o iconwid" aria-hidden="true"></i>Stress Management</a></li>
                        <li><a href="index.jsp"><i class="fa fa-sign-out iconwid" aria-hidden="true"></i>Logout</a></li>
                    </ul>
                </div>
                <div id="work">
                    <center>
                        <form action="" >
                            <h1 style="font-size: 30px;">ANNOUNCEMENT</h1><hr>
                            <textarea style="width: 75%;height:220px;font-size: 18px;" name="know"></textarea>
                            <br><br>
                            <input type="submit" name="sub" value="SUBMIT" id="botn" style="margin-right: 15px;" onclick="alert('you Announce That Statement Properly.')">
                            <input type="reset" name="su" value="RESET" id="botn" >
                            <%
                                if (request.getParameter("sub") != null) {
                                    Connection con = null;
                                    String anc;
                                    int x;
                                    PreparedStatement pst;
                                    try {
                                        anc = request.getParameter("know");
                                        Class.forName("com.mysql.jdbc.Driver");
                                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmanage", "root", "");
                                        pst = con.prepareStatement("insert into anno(announcement) values(?)");
                                        pst.setString(1, anc);
                                        x = pst.executeUpdate();
                                        if (x == 1) {
                                             response.sendRedirect("announce.jsp");
                            %> 
     
                            <%
                                        }
                                        con.close();
                                    } catch (Exception e) {
                                        out.print(e);
                                    }
                                } else {

                                }
                            %>
                        </form>
                    </center>
                </div>
            </div>
        </div>
    </body>
</html>
