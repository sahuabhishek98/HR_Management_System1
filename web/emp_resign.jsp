<%-- 
    Document   : emp_resign
    Created on : Oct 9, 2018, 9:33:38 AM
    Author     : hp
--%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="theme.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>

            td{border-right:0px;padding-bottom:10px;}
            table{padding:10px;}
            #botn{margin-top:15px;background-color:black;color:white;width:90px;height:25px; cursor: pointer;}
            @media screen and (max-width: 950px)
            {table{padding:1px;}
             caption{width:100%;}
            }
            .iconwid{width: 25px;position: relative;}
        </style>
        <script>
            function go() {
                window.location.replace("logout.jsp", 'window', 'toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');
                self.close()
            }</script>
    </head>
    <body>
        <%
            if (session.getAttribute("username") != null) {
                String un = (String) session.getAttribute("username");
                Connection con = null;
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmanage", "root", "");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select * from new_register where Phone='" + un + "'");
                rs.next();%>
        <div id="outer">
            <div id="header">

                <a href="index.jsp" style="text-decoration: none;">  <i style="font-size:50px;margin-left:25px;text-shadow:4px 4px black;color:aqua;">people<b style="font-size:30px;">.in</b></i></a>

                <i id="ad" style="font-size:35px; color: aqua;">Employee&nbsp;<b style="font-size:35px;">Area</b></i>

            </div>
            <div id="first">
                <div id="nav">
                    <ul>
                        <li><a href="emparea.jsp" ><i class="fa fa-file iconwid" aria-hidden="true"></i>View Profile</a></li>
                        <li><a href="change.html"><i class="fa fa-circle-o iconwid" aria-hidden="true"></i>Change Password</a></li>
                        <li><a href="emp_attendance.jsp"><i class="fa fa-font iconwid" aria-hidden="true"></i>Attendance</a></li>
                        <li ><a href="emp_loan.jsp"><i class="fa fa-handshake-o iconwid" aria-hidden="true"></i>Loan</a></li>
                        <li><a href="emp_salary.jsp"><i class="fa fa-money iconwid" aria-hidden="true"></i>Salary</a></li>
                        <li><a href="emp_leaves.jsp"><i class="fa fa-adjust iconwid" aria-hidden="true"></i>Leaves</a></li>
                        <li><a href="emp_massage.jsp"><i class="fa fa-check-square iconwid" aria-hidden="true"></i>Status Loan/Leaves</a></li>
                        <li><a href="emp_resign.jsp" class="active"><i class="fa fa-crosshairs iconwid" aria-hidden="true"></i>Resignation</a></li>
                        <li><a href="note.jsp"><i class="fa fa-bell iconwid" aria-hidden="true"></i>Notification</a></li>
                        <li><a href="grevance.jsp"><i class="fa fa-twitter iconwid" aria-hidden="true"></i>Grievance/Suggestion</a></li>
                        <li><a href="stress manage/index.html"><i class="fa fa-heart-o iconwid" aria-hidden="true"></i>Stress Management</a></li>

                        <li><a href="javascript:go()"><i class="fa fa-sign-out iconwid" aria-hidden="true"></i>Logout</a></li>
                    </ul>
                </div>
                <div id="work">
                    <CENTER>

                        <form action="" method="post">
                            <table>
                                <caption>RESIGNATION</caption>
                                <tr>
                                    <td>USER ID</td><td><input type="text"  value="<%=rs.getString(1)%>" name="res" readonly=""></td>
                                </tr>
                                <tr><td>WHY ARE YOU RESIGNING?</td><td><input type="text" name="reason" required=""></td></tr>
                                <tr>
                                    <td>DO YOU REALLY WANT TO RESIGN</td><td><select name="yn"  required="" style="width:159px;" >
                                            <option value="yes">Yes</option>
                                            <option value="no">No</option>
                                        </select></td>
                                </tr>
                            </table>
                            <input type="submit" name="submit" value="submit" id="botn" onclick="alert('you are Resign This Organization.')" >
                            <input type="reset" value="RESET" id="botn">
                        </form>		
                        <%
                            if (request.getParameter("submit") != null) {
                                String rres, ryn, rreason;
                                int x;
                                PreparedStatement pst;
                                try {
                                    rres = request.getParameter("res");
                                    ryn = request.getParameter("yn");
                                    rreason = request.getParameter("reason");

                                    Class.forName("com.mysql.jdbc.Driver");
                                    pst = con.prepareStatement("insert into Eresign(Ruid,Rrea,RCon) values(?,?,?)");
                                    pst.setString(1, rres);
                                    pst.setString(2, rreason);
                                    pst.setString(3, ryn);
                                    x = pst.executeUpdate();
                                    if (x == 1) {
                        %><%
                                response.sendRedirect("index.jsp");
                            }
                        } catch (Exception xx) {
                            out.println(xx.getMessage());
                        %><strong style="color: red; font-size: 50px;">Alert!</strong> Record not inserted.....<%
                                }
                            }
                        %>
                        <%try {
                                    if (con != null) {
                                        con.close();
                                    }
                                } catch (SQLException e) {
                                }
                            } else {
                                response.sendRedirect("index.jsp");
                            }%>
                    </CENTER>
                </div>
            </div>
        </div>
    </body>
</html>
