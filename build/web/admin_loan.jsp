<%-- 
    Document   : admin_loan
    Created on : Oct 5, 2018, 11:39:55 PM
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
            table,th,td{
                font-family: arial, sans-serif;
                border: 1px solid gray;
                border-collapse: collapse;
                padding: 5px;
            }
            .item-des{
                display: none;
            }
            #ese{
                display: inline-block;
            }
            #ss{
                font-size: 17px;
            }
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
                        <li><a href="admin_loan.jsp"  class="active"><i class="fa fa-handshake-o iconwid" aria-hidden="true"></i>Loan</a></li>
                        <li><a href="admin_salary.jsp"><i class="fa fa-money iconwid" aria-hidden="true"></i>Manage Salary</a></li>
                        <li><a href="admin_leaves.jsp"><i class="fa fa-adjust iconwid" aria-hidden="true"></i>Leaves</a></li>
                        <li><a href="new_apply.jsp"><i class="fa fa-user-plus iconwid" aria-hidden="true"></i>New Recruiter</a></li>
                        <li><a href="training/index.html"><i class="fa fa-group iconwid" aria-hidden="true"></i>Training & Event</a></li>
                        <li><a href="complain.jsp"><i class="fa fa-hand-paper-o iconwid" aria-hidden="true"></i>Complaints</a></li>
                        <li><a href="announce.jsp"><i class="fa fa-bullhorn iconwid" aria-hidden="true"></i>Announcement</a></li>
                        <li><a href="admin_resign.jsp"><i class="fa fa-crosshairs iconwid" aria-hidden="true"></i>Resignation</a></li>
                        <li><a href="stress manage/index.html"><i class="fa fa-heart-o iconwid" aria-hidden="true"></i>Stress Management</a></li>
                        <li><a href="index.jsp"><i class="fa fa-sign-out iconwid" aria-hidden="true"></i>Logout</a></li>
                    </ul>
                </div>
                <div id="work">
                    <CENTER>


                        <table>
                            <caption>Employee Loan Record</caption>
                            <tr>
                                <th>User-id</th>
                                <th>Type of Loan</th>
                                <th>Recovery Date</th>
                                <th>Amount</th>
                                <th>Interest</th>
                                <th>Approved/Rejected</th>
                            </tr>
                            <%
                                Connection con = null;
                                Statement st;
                                ResultSet rs;
                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmanage", "root", "");
                                    st = con.createStatement();
                                    String sql = "select * from Loan where Date != CURDATE()";
                                    rs = st.executeQuery(sql);
                                    while (rs.next()) {%>
                            <tr style="font-size:18px;">
                                <td><%=rs.getString("Loanid")%></td>
                                <td><%=rs.getString("Tyloan")%></td>         
                                <td><%=rs.getString("Startre")%></td>
                                <td><%=rs.getString("Ploanamt")%></td>
                                <td><%=rs.getString("Noinsre")%>%</td>


                                <td>
                                    <form action="" method="post">
                                        <ul class="list" id="ese"  >
                                            <li id="ese">
                                                <input type="radio"  name="selector1" value="Approve">
                                                <label for="a-option">Approved </label>
                                                <div class="check"></div>
                                            </li>
                                            <li id="ese">
                                                <input type="radio" name="selector1" value="Reject">
                                                <label for="b-option">Reject</label>
                                                <div class="check"></div>
                                            </li>
                                        </ul>
                                        <input type="submit" value="submit" name="loan" id="ss"> 
                                        <input class="item-des"  name="myatten" value='<%=rs.getString("Loanid")%>'>
                                    </form> 
                                </td>
                            </tr>

                            <%  } %>
                            <%                    if (request.getParameter("loan") != null) {
                                    String n1, n2;
                                    int x;
                                    try {
                                        PreparedStatement pst;

                                        Class.forName("com.mysql.jdbc.Driver");
                                        n2 = request.getParameter("myatten");

                                        n1 = request.getParameter("selector1");
                                        pst = con.prepareStatement("update loan set Mode='" + n1 + "',Date=CURDATE() where Loanid='" + n2 + "'");
                                        //pst.setString(1, n1);
                                        x = pst.executeUpdate();
                                        if (x == 1) {
                            %><strong style="color: green;">Success!</strong> Record Inserted Successfully.....<%
                                    response.sendRedirect("admin_loan.jsp");
                                }
                            } catch (Exception xx) {
                            %><strong style="color: red;">Alert!</strong>Record Doesn't Inserted.....<%
                                    }
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
                                out.println(e.toString());
                            }
                        %>
                    </CENTER>
                </div>
            </div>
        </div>
    </body>
</html>
