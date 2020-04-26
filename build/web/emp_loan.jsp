<%-- 
    Document   : emp_loan
    Created on : Oct 6, 2018, 12:35:44 PM
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
                        <li><a href="emparea.jsp"><i class="fa fa-file iconwid" aria-hidden="true"></i>View Profile</a></li>
                        <li><a href="change.html"><i class="fa fa-circle-o iconwid" aria-hidden="true"></i>Change Password</a></li>
                        <li><a href="emp_attendance.jsp"><i class="fa fa-font iconwid" aria-hidden="true"></i>Attendance</a></li>
                        <li ><a href="emp_loan.jsp" class="active"><i class="fa fa-handshake-o iconwid" aria-hidden="true"></i>Loan</a></li>
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
                                <caption>LOAN APPEAL</caption>
                                <tr><td>USER ID</td><td><input type="text"  name="eid"  value="<%=rs.getString(1)%>" readonly=""></td>
                                    <td> DESIGNATION</td><td><input type="text" name="desig"    value="<%=rs.getString(5)%>" disabled></td></tr>
                                <tr><td>DATE OF APPLICATION</td><td><input class="input1" type="text" name="doa" required="" placeholder="dd/mm/yyyy" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01])/(0[1-9]|1[012])/[0-9]{4}"></td></tr>
                                <tr><td> TYPE OF LOAN</td><td><input type="text" name="loantype"  required="" placeholder="home/gold/car"  pattern="[A-Za-z ]{3,4}"></td>
                                    <td> PROPOSED AMOUNT</td><td><input type="text" name="plo"  placeholder="upto(100000-999999)" pattern="[123456789][0-9]{3,4,5}" required=""></td></tr>
                                <tr><td> INTEREST RATE%</td><td><input type="text" name="ir"  required="" placeholder="Interest Rate" pattern="[12345][0-5]{1,2}" ></td>
                                    <td> PURPOSE</td><td><textarea class="input1" name="pol" placeholder="Purpose of Loan"  required="" ></textarea></td></tr>
                                <tr><td> LAST RECOVERY DATE</td><td><input type="text" name="sdr" style="margin-left:0px;"  placeholder="dd/mm/yyyy" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01])/(0[1-9]|1[012])/[0-9]{4}" ></td>
                                    <td> NUMBER OF INSTALLMENT</td><td><input type="text" name="noi" required="" placeholder="Minimum 15 Days" pattern="[1][0-5]{1,2,}" ></td>
                                </tr >
                            </table>
                            <input type="submit" name="submit" value="submit" onclick="alert('Your Application To Be Transfer Admin...')" id="botn" >
                            <input type="reset" name="reset" value="Reset All"  id="botn">

                            <%
                                if (request.getParameter("submit") != null) {
                                    String lid, tloan, dateapp, amount, insrec, startrec, res, intrest;
                                    String dd = "0000-00-00";
                                    int x = 0;
                                    PreparedStatement pst;
                                    try {
                                        lid = request.getParameter("eid");
                                        tloan = request.getParameter("loantype");
                                        dateapp = request.getParameter("doa");
                                        amount = request.getParameter("plo");
                                        insrec = request.getParameter("noi");
                                        startrec = request.getParameter("sdr");
                                        res = request.getParameter("pol");
                                        intrest = request.getParameter("ir");
                                        Class.forName("com.mysql.jdbc.Driver");
                                        String strQuery = "SELECT COUNT(*) FROM loan where Loanid='" + un + "'";
                                        ResultSet rs1 = st.executeQuery(strQuery);
                                        rs1.next();
                                        String Countrow = rs1.getString(1);
                                        if (Countrow.equals("0")) {
                                            pst = con.prepareStatement("insert into loan(Loanid,Tyloan,Dofapp,Ploanamt,Noinsre,Startre,Reason,Inrate,Date)  values(?,?,?,?,?,?,?,?,?)");
                                            pst.setString(1, lid);
                                            pst.setString(2, tloan);
                                            pst.setString(3, dateapp);
                                            pst.setString(4, amount);
                                            pst.setString(5, insrec);
                                            pst.setString(6, startrec);
                                            pst.setString(7, res);
                                            pst.setString(8, intrest);
                                            pst.setString(9, dd);
                                            x = pst.executeUpdate();
                                        } else {
                            %>
                            <h3 style="color:blue;">Already apply for loan!.....</h3>
                            <%
                                }
                                if (x == 1) {
                                    response.sendRedirect("emparea.jsp");
                            %> <%
                                }
                            } catch (Exception xx) {
                            %><strong style="color: red; font-size: 50px;">Alert!</strong> Your Userid is not Match<%
                                    }
                                }
                            %>
                            <!--end-->


                            <% try {
                                        if (con != null) {
                                            con.close();
                                        }
                                    } catch (SQLException e) {
                                    }
                                } else {
                                    response.sendRedirect("index.jsp");
                                }%>

                        </form>
                    </CENTER>
                </div>
            </div>
        </div>
    </body>
</html>
