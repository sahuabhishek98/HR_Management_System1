<%-- 
    Document   : emparea
    Created on : Oct 6, 2018, 2:47:22 AM
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
            #botn{margin-top:15px;background-color:black;color:white;width:90px;height:25px;}
            @media screen and (max-width: 950px)
            {table{padding:1px;}
             caption{width:100%;}
            }
            .iconwid{width: 25px;position: relative;}
        </style>
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
                        <li><a href="emparea.jsp" class="active"><i class="fa fa-file iconwid" aria-hidden="true"></i>View Profile</a></li>
                        <li><a href="change.html"><i class="fa fa-circle-o iconwid" aria-hidden="true"></i>Change Password</a></li>
                        <li><a href="emp_attendance.jsp"><i class="fa fa-font iconwid" aria-hidden="true"></i>Attendance</a></li>
                        <li ><a href="emp_loan.jsp"><i class="fa fa-handshake-o iconwid" aria-hidden="true"></i>Loan</a></li>
                        <li><a href="emp_salary.jsp"><i class="fa fa-money iconwid" aria-hidden="true"></i>Salary</a></li>
                        <li><a href="emp_leaves.jsp"><i class="fa fa-adjust iconwid" aria-hidden="true"></i>Leaves</a></li>
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
                                <caption>PERSONAL PROFILE</caption>
                                <tr><td>USER ID</td><td><input type="text" name="contact" value="<%=rs.getString(1)%>"  disabled></td>
                                    <td>PASSWORD</td><td><input type="password" value="<%=rs.getString(2)%>" name="pass" disabled></td>
                                <tr>
                            </table>
                            <table>				   
                                <tr><td> NAME</td><td><input type="text" value="<%=rs.getString(3)%>"  name="name" disabled></td>
                                    <td>FATHER NAME</td><td><input type="text" name="fname" readonly="" value="<%=rs.getString(4)%>" disabled></td></tr>
                                <tr><td>DATE OF BIRTH</td><td><input type="text" name="dob"   value="<%=rs.getString(6)%>" disabled></td>
                                    <td>BLOOD GROUP</td><td><input type="text" name="blood" value="<%=rs.getString(8)%>" disabled></td></tr>
                                <tr><td>NATIONALITY</td><td><input type="text" name="nation"  value="<%=rs.getString(9)%>" disabled></td>
                                    <td></td><td></td></tr>
                                <tr>
                                    <td>GENDER</td><td><input type="text"  name="sex"  value="<%=rs.getString(7)%>" disabled></td>
                                    <td>DESIGNATION</td><td><input type="text" name="des" readonly="" value="<%=rs.getString(5)%>" disabled></td>
                                </tr>
                            </table> 
                            <table>
                                <tr><td>HOUSE/FLAT NO.</td><td><input type="text" name="house"  value="<%=rs.getInt(10)%>" disabled></td>
                                    <td>STREET NAME</td><td><input type="text" name="street"  value="<%=rs.getString(11)%>" disabled></td></tr>
                                <tr><td>CITY/TOWN</td><td><input type="text" name="city"   value="<%=rs.getString(12)%>" disabled></td>
                                    <td>STATE</td><td><input type="text" name="state"   value="<%=rs.getString(13)%>" disabled></td></tr>
                                <tr><td>PIN</td><td><input type="text" name="pin"  value="<%=rs.getInt(14)%>"  disabled></td>
                                    <td>Email-id</td><td><input type="text" value="<%=rs.getString(15)%>" name="email" disabled></td></tr>
                            </table>
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
                        </form>		

                    </CENTER>
                </div>
            </div>
        </div>
                        <script>
function go() {
window.location.replace("logout.jsp",'window','toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');
self.close()
}</script>
    </body>
</html>