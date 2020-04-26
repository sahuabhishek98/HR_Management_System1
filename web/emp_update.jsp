<%-- 
    Document   : emp_update
    Created on : Oct 10, 2018, 9:27:24 AM
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

            String id = request.getParameter("id");
            Connection con = null;
            Statement st;
            ResultSet rs;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmanage", "root", "");
                st = con.createStatement();
                String sql = "select * from new_register where Phone='" + id + "'";
                rs = st.executeQuery(sql);
                rs.next();%>
        <div id="outer">
            <div id="header">

               <a href="index.jsp" style="text-decoration: none;">  <i style="font-size:50px;margin-left:25px;text-shadow:4px 4px black;color:aqua;">people<b style="font-size:30px;">.in</b></i></a>

                <i id="ad" style="font-size:35px; color: aqua;">Admin&nbsp;<b style="font-size:35px;">Area</b></i>
            </div>
            <div id="first">
                <div id="nav">
                     <ul>
                         <li class="dropdown"><a class="active" ><i class="fa fa-file iconwid" aria-hidden="true"></i>Manage Employee</a>
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
                        <li><a href="announce.jsp"><i class="fa fa-bullhorn iconwid" aria-hidden="true"></i>Announcement</a></li>
                        <li><a href="admin_resign.jsp"><i class="fa fa-crosshairs iconwid" aria-hidden="true"></i>Resignation</a></li>
                        <li><a href="stress manage/index.html"><i class="fa fa-heart-o iconwid" aria-hidden="true"></i>Stress Management</a></li>
                        <li><a href="index.jsp"><i class="fa fa-sign-out iconwid" aria-hidden="true"></i>Logout</a></li>
                    </ul>
                </div>
                <div id="work">
                    <CENTER>

                        <form action="" method="post">
                            <table>
                                <caption>EMPLOYEE PROFILE</caption>
                                <tr><td>USER ID</td><td><input type="text" name="contact" readonly="" value="<%=rs.getString(1)%>"></td>
                                    <td>PASSWORD</td><td><input type="password" readonly="" value="<%=rs.getString(2)%>" name="pass"></td>
                                    <td>
                                       <select name="des" required  >
                                            <option value="Employee">Employee</option>
                                            <option value="HR">HR</option>
                                            <option value="Developer">Developer</option>
                                            <option value="Coder">Coder</option>
                                            <option value="worker">Worker</option>
                                        </select> </td>
                                <tr>
                            </table>
                            <table>				   
                                <tr><td>EMPLOYEE NAME</td><td><input type="text" value="<%=rs.getString(3)%>"  name="name"  pattern="[A-Za-z ]{3,25}"></td>
                                    <td>FATHER NAME</td><td><input type="text" name="fname" required="" value="<%=rs.getString(4)%>" pattern="[A-Za-z ]{3,25}"></td></tr>
                                <tr><td>DATE OF BIRTH</td><td><input type="text" name="dob"  value="<%=rs.getString(6)%>" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01])/(0[1-9]|1[012])/[0-9]{4}"  required=""></td>
                                    <td>BLOOD GROUP</td><td><input type="text" name="blood" value="<%=rs.getString(8)%>"  pattern="[A-Za-o-+]{1,3}"></td></tr>
                                <tr><td>NATIONALITY</td><td><input type="text" required="" name="nation"  value="<%=rs.getString(9)%>" pattern="[A-Za-z ]{3,10}"></td>
                                </tr>
                                <tr>
                                    <td>GENDER</td><td><input type="text"  name="sex"  value="<%=rs.getString(7)%>" required=""  pattern="[f,m]{1,1}"/></td>

                                </tr>
                            </table> 
                            <table>
                                <tr><td>HOUSE/FLAT NO.</td><td><input type="text" name="house" value="<%=rs.getInt(10)%>" pattern="[123456][0-9]{2}"></td>
                                    <td>STREET NAME</td><td><input type="text" name="street"  value="<%=rs.getString(11)%>" pattern="[A-Za-z ]{3,15}"></td></tr>
                                <tr><td>CITY/TOWN</td><td><input type="text" name="city" required=""  value="<%=rs.getString(12)%>" pattern="[A-Za-z ]{3,20}"></td>
                                    <td>STATE</td><td><input type="text" name="state" required=""  value="<%=rs.getString(13)%>" pattern="[A-Za-z ]{2}"></td></tr>
                                <tr><td>PIN</td><td><input type="text"  name="pin" required="" value="<%=rs.getInt(14)%>"  pattern="[2][0-9]{5}"  ></td>
                                    <td>EMAIL</td><td><input type="email"  value="<%=rs.getString(15)%>" name="email"></td>
                                </tr>
                            </table>

                            <input type="submit" name="submit" value="submit" id="botn" />	
                            <%
                                if (request.getParameter("submit") != null) {
                                    String regpass, regname, regfname, regdes, regdob, regsex, regphone, regblood, regnat, regstreet, regcity, regstate, regemail;
                                    int reghouseno, regpin, x;
                                    regphone = request.getParameter("contact");
                                    regpass = request.getParameter("pass");
                                    regname = request.getParameter("name");
                                    regfname = request.getParameter("fname");
                                    regdes = request.getParameter("des");
                                    regdob = request.getParameter("dob");
                                    regsex = request.getParameter("sex");
                                    regblood = request.getParameter("blood");
                                    regnat = request.getParameter("nation");
                                    reghouseno = Integer.parseInt(request.getParameter("house"));
                                    regstreet = request.getParameter("street");
                                    regcity = request.getParameter("city");
                                    regstate = request.getParameter("state");
                                    regpin = Integer.parseInt(request.getParameter("pin"));
                                    regemail = request.getParameter("email");
                                    sql = "update new_register  set Phone='" + regphone + "',passw='" + regpass + "',Name='" + regname + "',Fname='" + regfname + "',Desi='" + regdes + "',Dob='" + regdob + "' ,Sex='" + regsex + "' ,Blood='" + regblood + "' ,National='" + regnat + "' ,Flat=" + reghouseno + " ,Street='" + regstreet + "' ,City='" + regcity + "' ,State='" + regstate + "',Pin= " + regpin + " ,Email='" + regemail + "' where Phone='" + regphone + "'";
                                    int res = st.executeUpdate(sql);
                                if (res != 0) {%>
                            <div class="alert">
                                <strong style="color: #4CAF50; font-size: 25px; ">Successfully updated!</strong> 

                            </div>   <% } else
                                    out.println("No Record Updated");
                            %>
                        </form>
                        <%                    } else {
                                }
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
