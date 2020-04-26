<%-- 
    Document   : newpassword
    Created on : Oct 31, 2018, 9:19:32 AM
    Author     : hp
--%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="theme.css">
        <title>Change password</title>
    </head>
    <body>
        <%
            String id = (String) session.getAttribute("id");
            Connection con = null;
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmanage", "root", "");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from new_register where Phone='" + id + "'");
            while (rs.next()) {%>
        <div id="outer">
            <div id="header">

                <a href="index.jsp" style="text-decoration: none;">  <i style="font-size:50px;margin-left:25px;text-shadow:4px 4px black;color:aqua;">people<b style="font-size:30px;">.in</b></i></a>
            </div>
            <div id="first">
                <div id="work">
                    <center>
                        <form action="newpassword.jsp" method="post">
                            <h1 style="font-size: 30px;">change password</h1><hr>
                            <label>
                                Enter the new password
                            </label><br>
                            <input type="password" name="pass" placeholder="New password" ><br><br>                           
                            <input type="submit" value="Submit" name="sub" style="background: #0072ff;" onclick="alert('Password change succesfully.')">&nbsp;
                            <input type="button" name="sec" value="Cancle" onclick="Redirect()">
                            <%
                                if (request.getParameter("sub") != null) {
                                    String ss = request.getParameter("pass");
                                    try{
                                    Statement st1 = con.createStatement();
                                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmanage", "root", "");
                                    int i = st1.executeUpdate("update new_register set passw='" + ss + "' where Phone='" + id + "'");
                                    response.sendRedirect("index.jsp");
                                    st1.close();
                                    con.close();
                                }catch(Exception e){
                                    out.print("Write something");
                                }
                                }
                                else{
                                   
                                }
                               }

                            %>
                        </form>
                    </center>
                </div>
            </div>
        </div>
                         <script>
            function Redirect() {
                window.location = "index.jsp";
            }
        </script>
    </body>
</html>
