<%-- 
    Document   : emp_leaves
    Created on : Oct 6, 2018, 7:03:25 PM
    Author     : hp
--%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.*" %>
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
                        <li><a href="emp_leaves.jsp" class="active"><i class="fa fa-adjust iconwid" aria-hidden="true"></i>Leaves</a></li>
                        <li><a href="emp_massage.jsp"><i class="fa fa-check-square iconwid" aria-hidden="true"></i>Status Loan/Leaves</a></li>
                        <li><a href="emp_resign.jsp"><i class="fa fa-crosshairs iconwid" aria-hidden="true"></i>Resignation</a></li>
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
                                <caption>LEAVE APPLY</caption>
                                <tr><td>EMPLOYEE ID</td><td><input type="text" name="empid"  readonly=""  value="<%=rs.getString(1)%>"></td>
                                    <td> E-MAIL ID</td><td><input type="text" name="mail"  value="<%=rs.getString(15)%>" readonly="" ></td></tr>
                                <tr><td> DESIGNATION</td><td><input type="text" name="desig"  readonly=""   value="<%=rs.getString(5)%>"></td>
                                    <td> NUMBER OF DAYS</td><td><input type="text" name="nd" ></td></tr>
                                <tr><td> STARTING DATE</td><td><input type="text"  name="fd" placeholder="dd/mm/yyyy" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01])/(0[1-9]|1[012])/[0-9]{4}"></td>
                                    <td> END DATE</td><td><input type="text" name="ed"   placeholder="dd/mm/yyyy" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01])/(0[1-9]|1[012])/[0-9]{4}" ></td></tr>
                                <tr><td> REASON</td><td><textarea  name="rsn" placeholder="Reason" style="height:25px;"></textarea></td></tr>

                                <tr><td>LEAVE PERIOD</td>

                                    <td><input type="radio" name="lp" value="Full Day">Full Day</td>
                                    <td><input type="radio"  name="lp" value="Half Day">Half Day</td>
                                    <td><input type="radio" name="lp" value="First Half">First Half</td>
                                    <td><input type="radio" name="lp" value="Second Half" >Second Half</td>
                                </tr>

                            </table>
                            <input type=submit  value="Apply" name="submit" onclick="alert('Your Leave Application Send To Be Admin.')" id="botn">

                        </form>		
                        <%

                            if (request.getParameter("submit") != null) {
                                PreparedStatement pst;
                                String dd = "0000-00-00";
                                int x = 0;
                                String lempid = request.getParameter("empid");
                                String lempmail = request.getParameter("mail");
                                String lfd = request.getParameter("fd");
                                String ldesig = request.getParameter("desig");
                                String lnd = request.getParameter("nd");
                                String led = request.getParameter("ed");
                                String llp = request.getParameter("lp");
                                String lrsn = request.getParameter("rsn");

                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmanage", "root", "");
                                    String strQuery = "SELECT COUNT(*) FROM Leaves where Userid='" + un + "'";
                                    ResultSet rs1 = st.executeQuery(strQuery);
                                    rs1.next();
                                    String Countrow = rs1.getString(1);

                                    if (Countrow.equals("0")) {
                                        pst = con.prepareStatement("insert into Leaves(Userid,Mail,Lfdo,Desig,Lnado,Lendo,Ltype,Lreason,Date)  values(?,?,?,?,?,?,?,?,?)");
                                        pst.setString(1, lempid);
                                        pst.setString(2, lempmail);
                                        pst.setString(3, lfd);
                                        pst.setString(4, ldesig);
                                        pst.setString(5, lnd);
                                        pst.setString(6, led);
                                        pst.setString(7, llp);
                                        pst.setString(8, lrsn);
                                        pst.setString(9, dd);
                                        x = pst.executeUpdate();
                                    } else {
                        %>
                        <h3 style="color:blue;">Your application is under processing</h3>

                        <%
                            }
                            if (x == 1) {
                                response.sendRedirect("emparea.jsp");  %> <%
                                    }
                                } catch (Exception xx) {
                                    out.println(xx.getMessage());
                        %><strong style="color: red; font-size: 50px;">Alert!</strong> Record not inserted.....<%
                                }
                            }
                        %>
                        <%
                                try {
                                    if (con != null) {
                                        con.close();
                                    }
                                } catch (SQLException e) {
                                }
                            } else {
                                response.sendRedirect("index.jsp");
                            }
                        %>
                    </CENTER>
                </div>
            </div>
        </div>
    </body>
</html>

