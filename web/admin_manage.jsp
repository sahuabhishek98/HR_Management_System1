<%-- 
    Document   : admin_manage
    Created on : Oct 6, 2018, 12:26:49 AM
    Author     : hp
--%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="theme.css">
        <style>
            td{border-right:0px;padding-bottom:10px;}
            table{padding:10px;}
            #botn{margin-top:15px;background-color:black;color:white;width:90px;height:25px; cursor: pointer;}
            @media screen and (max-width: 950px)
            {table{padding:1px;}
             caption{width:100%;}
            }
            .lii{
                text-decoration: none;
               color:#4caf50;
               
            }
            
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
            
            <div id="first">
                
                <div id="work">
                    <CENTER>

                        <form action="" method="post">
                            <table>
                                <caption>EMPLOYEE SALARY</caption>
                                <tr><td>USER ID</td><td><input type="text"readonly="" name="contact" value="<%=rs.getString(1)%>"  ></td>
                                    <td>PASSWORD</td><td><input type="password" readonly="" value="<%=rs.getString(2)%>" name="pass"></td>
                                    <td>Designation:
                                        <input type="text"  name="des" required="" value="<%=rs.getString(5)%>"  readonly=""></td>
                                <tr>
                            </table>
                            <table>				   
                                <tr><td>EMPLOYEE NAME</td><td><input type="text" value="<%=rs.getString(3)%>"  name="name"  readonly=""></td>
                                    <td>FATHER NAME</td><td><input type="text" name="fname" readonly="" value="<%=rs.getString(4)%>"></td></tr>                               
                                <tr>
                                    <td>SALARY</td><td><input type="text" name="pin" required="" value="<%=rs.getString(18)%>" pattern="[467891][0-9]{4,5,6}" ></td>
                                </tr>                                                              
                            </table>                              		
                            <input type="submit" name="submit" value="submit" onclick="alert('Salary Is Editied.')"  id="botn">	
                        </form>
                    </CENTER>
                                <%
                if (request.getParameter("submit") != null) {
                    String regpass, regname, regfname, regdes, regphone, regsal;
                    int x;
                    regphone = request.getParameter("contact");
                    regname = request.getParameter("name");
                    regfname = request.getParameter("fname");
                    regdes = request.getParameter("des");
                    regsal = request.getParameter("pin");
                    sql = "update new_register  set Phone='" + regphone + "',Name='" + regname + "',Fname='" + regfname + "',Salary= '" + regsal + "'  where Phone='" + regphone + "'";
                    int res = st.executeUpdate(sql);
                                        if (res != 0) {%>
            <div class="alert">
                <strong style="color:darkgreen; font-size: 25px; ">Salary is fixed......</strong>
                    <%response.sendRedirect("admin_newregistration.jsp");%>
            </div>   <% } else
                    out.println("No Record Updated");

            %>
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
           
            
                </div>
            </div>
            
        </div>

    </body>
</html>