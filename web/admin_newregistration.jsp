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
    </head>
    <body>
        <%
            if (session.getAttribute("admin") != null) {
                String un = (String) session.getAttribute("admin");
                Connection con = null;
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmanage", "root", "");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select * from new_register where Phone='" + un + "'");
                rs.next();%>
        <div id="outer">
            <div id="header">

                
                <i style="font-size:50px;margin-left:25px;text-shadow:4px 4px black; color:aqua;">people<b style="font-size:30px;">.in</b></i>

                <i id="ad" style="font-size:35px; color:aqua;">Admin<b style="font-size:35px; color:aqua;">Area</b></i>
            </div>
            <div id="first">
                <div id="nav">
                    <ul>
                        <li class="dropdown"><a class="active"><i class="fa fa-file iconwid" aria-hidden="true"></i>Manage Employee</a>
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
                        <li><a href="training/index.html"><i class="fa fa-group iconwid" aria-hidden="true"></i>Training & Event</a></li>
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
                                <tr><td>USER ID</td><td><input type="text" placeholder="mob no:" required="" name="contact"   pattern="[6789][0-9]{9}"></td>
                                    <td>PASSWORD</td><td>
                                        <input type="password" placeholder="Your Password"  required="" name="pass" ></td>
                                    <td>Designation:
                                        <select name="des" required="">
                                            <option value="Employee">Employee</option>
                                            <option value="HR">HR</option>
                                            <option value="Developer">Developer</option>
                                            <option value="Coder">Coder</option>
                                            <option value="worker">Worker</option>

                                        </select> </td>
                                <tr>
                            </table>
                            <table>				   
                                <tr><td>EMPLOYEE NAME</td><td><input type="text" required=""  name="name" placeholder="employee Name" pattern="[A-Za-z ]{3,25}"></td>
                                    <td>FATHER NAME</td><td><input type="text"  name="fname" required="" placeholder="father name" pattern="[A-Za-z ]{3,25}"></td></tr>
                                <tr><td>DATE OF BIRTH</td><td><input type="text" name="dob" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01])/(0[1-9]|1[012])/[0-9]{4}" placeholder="dd/mm/yyyy" required=""></td>
                                    <td>BLOOD GROUP</td><td><input type="text" name="blood" placeholder="AB+/O/O+/O-" pattern="[A-Za-o-+]{1,3}"></td></tr>
                                <tr><td>NATIONALITY</td><td><input type="text" required="" name="nation" placeholder="Indian" pattern="[A-Za-z ]{3,10}"></td>
                                    <td>GENDER</td><td><input type="text" name="sex" required="" placeholder="m/f/t" pattern="[f,m,t]{1,1}"></td></tr>
                                <tr>
                                <h3 style="color:red;">Userid is your phone number.</h3>
                                </tr>
                                <!--    <tr>
                                    <td>GENDER</td><td><input type="radio" name="id" value="hr manager">Male</td>
                                    <td><input type="radio" name="id" value="developer">Female</td>
                                    <td><input type="radio" name="id" value="accountant">Transgender</td>
                                </tr>  -->
                            </table> 
                            <table>
                                <tr><td>HOUSE/FLAT NO.</td><td><input type="text"  placeholder="" name="house" pattern="[123456][0-9]{2,3,4}"></td>
                                    <td>STREET NAME</td><td><input type="text"  placeholder="Street Name" name="street"  pattern="[A-Za-z ]{3,15}" ></td></tr>
                                <tr><td>CITY/TOWN</td><td><input type="text" name="city" required="" placeholder="Allahabad"  pattern="[A-Za-z ]{3,20}"></td>
                                    <td>STATE</td><td><input type="text"  name="state" required="" placeholder="Like UP/Mp"  pattern="[A-Za-z ]{2}" ></td></tr>
                                <tr><td>PIN</td><td><input type="text"  name="pin" required="" placeholder=" Like 210427" pattern="[2][0-9]{5}" ></td>
                                    <td>EMAIL</td><td><input type="email "  name="email" placeholder="@gmail.com"/></td>
                                </tr>
                            </table>

                            <input type="submit" name="sub" value="submit" id="botn" />	
                        </form>	
                    </CENTER>
                </div>
            </div>
        </div>
        <%
            if (request.getParameter("sub") != null) {
                String regpass, regname, regfname, regdes, regdob, regsex, regphone, regblood, regnat, regstreet, regcity, regstate, regemail;
                String dd = "0000-00-00";
                int sal = 0;
                int reghouseno, regpin, x;
                PreparedStatement pst;
                try {
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
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmanage", "root", "");
                    pst = con.prepareStatement("insert into new_register(Phone,Passw,Name,Fname,Desi,Dob,Sex,Blood,National,Flat,Street,City,State,Pin,Email,Date,Salary)  values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    pst.setString(1, regphone);
                    pst.setString(2, regpass);
                    pst.setString(3, regname);
                    pst.setString(4, regfname);
                    pst.setString(5, regdes);
                    pst.setString(6, regdob);
                    pst.setString(7, regsex);
                    pst.setString(8, regblood);
                    pst.setString(9, regnat);
                    pst.setInt(10, reghouseno);
                    pst.setString(11, regstreet);
                    pst.setString(12, regcity);
                    pst.setString(13, regstate);
                    pst.setInt(14, regpin);
                    pst.setString(15, regemail);
                    pst.setString(16, dd);
                    pst.setInt(17, sal);
                    x = pst.executeUpdate();
                    if (x == 1) {
        %><strong style="color: green; font-size: 50px; text-align: right; ">Employee is Register....</strong> 
       
        <%
            }
        } catch (Exception xx) {
            out.println(xx.getMessage());
        %><strong style="color: red; font-size: 50px;">Alert!</strong> Record not inserted.....<%
                    }
                }
            } else {
                response.sendRedirect("index.jsp");
            }%>

    </body>
</html>