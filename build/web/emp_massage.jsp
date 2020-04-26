<%-- 
    Document   : emp_massage
    Created on : Oct 6, 2018, 7:31:09 PM
    Author     : hp
--%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="theme.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>
            table,th,td{
                border: 1px solid gray;
                border-collapse: collapse;
            }
            td{border-right:0px;padding-bottom:10px;}
            table{}
            #botn{margin-top:15px;background-color:black;color:white;width:90px;height:25px;}
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
                        <li><a href="emp_massage.jsp" class="active"><i class="fa fa-check-square iconwid" aria-hidden="true"></i>Status Loan/Leaves</a></li>
                        <li><a href="emp_resign.jsp"><i class="fa fa-crosshairs iconwid" aria-hidden="true"></i>Resignation</a></li>
                        <li><a href="note.jsp"><i class="fa fa-bell iconwid" aria-hidden="true"></i>Notification</a></li>
                        <li><a href="grevance.jsp"><i class="fa fa-twitter iconwid" aria-hidden="true"></i>Grievance/Suggestion</a></li>
                        <li><a href="stress manage/index.html"><i class="fa fa-heart-o iconwid" aria-hidden="true"></i>Stress Management</a></li>

                        <li><a href="javascript:go()"><i class="fa fa-sign-out iconwid" aria-hidden="true"></i>Logout</a></li>
                    </ul>
                </div>
                <div id="work">
                    <CENTER>

                        <table >
                            <caption>Information </caption>
                            <tr>
                                <th>Status About Loan/Leave</th>
                                <th>click here</th>

                            </tr>

                            <%
                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmanage", "root", "");
                                    st = con.createStatement();
                                    String sql = "select Mode from Loan where Loanid='" + un + "'";
                                    rs = st.executeQuery(sql);
                                    while (rs.next()) {%>
                            <tr style="font-size:18px;">
                                <td> your loan is:&nbsp;&nbsp; <span style="color:#4CAF50; font-size: 40px;"><%=rs.getString(1)%></span></td>
                                <td><form><input type="submit" name="loana" value="CLICK HARE" required="" onclick="alert('you are clicked.')"></form></td>
                                <!--end-->
                                <!--to delete loan area-->
                                <%
                                    if (request.getParameter("loana") != null) {
                                        try {
                                            Class.forName("com.mysql.jdbc.Driver");
                                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmanage", "root", "");
                                            st = con.createStatement();
                                            String sql2 = "delete  from Loan where Loanid='" + un + "'";
                                            int res = st.executeUpdate(sql2);
                                            if (res != 0) {%>
                            <strong style="color: green; font-size: 50px; text-align: right; ">Success!</strong>
                            <% response.sendRedirect("emp_massage.jsp");
                                }%>
                            <% } catch (Exception e) {
                                        out.println(e.toString());
                                    }
                                }
                            %>
                            </tr>
                            <% }%>
                            <% } catch (Exception e) {
                                    out.println(e.toString());
                                }
                            %>  
                            <!--end-->
                            <!--to get leave dtails-->
                            <%
                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmanage", "root", "");
                                    st = con.createStatement();
                                    String sql = "select Status from Leaves where Userid='" + un + "'";
                                    rs = st.executeQuery(sql);
                                    while (rs.next()) {%>
                            <tr style="font-size:18px;">
                                <td>You Leave is:&nbsp;&nbsp;<span style="color:#4CAF50; font-size: 40px;"><%=rs.getString(1)%></span></td>
                                <td><form><input type="submit" name="loab" value="CLICK HERE " required="" onclick="alert('are you click in.')"></form></td>
                                <!-- to delete leave-->
                                <%
                                    if (request.getParameter("loab") != null) {
                                        try {

                                            Class.forName("com.mysql.jdbc.Driver");
                                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmanage", "root", "");
                                            st = con.createStatement();
                                            String sql2 = "delete  from  Leaves where Userid='" + un + "'";
                                            int res = st.executeUpdate(sql2);
                                            if (res != 0) {%>
                            <strong style="color: green; font-size: 50px; text-align: right; ">Success!</strong>
                            <%   response.sendRedirect("emp_massage.jsp");%>
                            <% }%>
                            <% } catch (Exception e) {
                                        out.println(e.toString());
                                    }
                                }
                            %>
                            <!--end-->
                            </tr>
                        </table>
                        <% }%>
                        <% } catch (Exception e) {
                                out.println(e.toString());
                            }
                        %>     
                        <% try {
                                    if (con != null) {
                                        con.close();
                                    }
                                } catch (SQLException e) {
                                }
                            } else {
                                response.sendRedirect("index.jsp");
                            }%>

                        </table>
                    </CENTER>
                </div>
            </div>
        </div>
    </body>
</html>
