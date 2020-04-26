<%-- 
    Document   : note
    Created on : Oct 26, 2018, 2:10:38 PM
    Author     : hp
--%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="theme.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            table tr:nth-child(odd){background-color: rgb(194,134,255);}
            table tr:nth-child(even){background-color:white;}
            #sahu{
                font-size: 20px;
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
                ResultSet rs = st.executeQuery("select * from anno");
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
                        <li><a href="emp_resign.jsp"><i class="fa fa-crosshairs iconwid" aria-hidden="true"></i>Resignation</a></li>
                        <li><a href="note.jsp"  class="active"><i class="fa fa-bell iconwid" aria-hidden="true"></i>Notification<span style="color:red; display: inline-block; float: right;"><%
                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmanage", "root", "");
                            ResultSet rp = st.executeQuery("select count(*) from anno");
                            String Countrow = "";
                            while (rp.next()) {
                                Countrow = rp.getString(1);
                                out.println(Countrow);
                            }
                                    %></span></a> </li>
                        <li><a href="grevance.jsp"><i class="fa fa-twitter iconwid" aria-hidden="true"></i>Grievance/Suggestion</a></li>
                        <li><a href="stress manage/index.html"><i class="fa fa-heart-o iconwid" aria-hidden="true"></i>Stress Management</a></li>

                        <li><a href="javascript:go()"><i class="fa fa-sign-out iconwid" aria-hidden="true"></i>Logout</a></li>
                    </ul>
                </div>
                <div id="work">
                    <CENTER>
                        <table>
                            <tr>
                                <th>NOTIFICATION</th>
                            </tr>
                            <%                                ResultSet rst;
                                try {
                                    Class.forName("com.mysql.jdbc.Driver");

                                    st = con.createStatement();
                                    String sql = "select announcement from anno";
                                    rst = st.executeQuery(sql);
                                    while (rst.next()) {
                            %>
                            <tr>
                                <td id="sahu"><%=rst.getString(1)%></td>
                            </tr> 

                            <%
                                }
                            %>
                        </table>
                        <%
                                    try {
                                        if (con != null) {
                                            con.close();
                                        }
                                    } catch (SQLException e) {
                                    }
                                } catch (Exception e) {
                                    out.print(e);
                                }
                            } else {
                                response.sendRedirect("index.jsp");
                            }%>
                    </CENTER>
                </div>
            </div>
        </div>
                    <script>
            function go() {
                window.location.replace("logout.jsp", 'window', 'toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');
                self.close()
            }</script>
    </body>
</html>
