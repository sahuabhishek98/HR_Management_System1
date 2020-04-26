<%-- 
    Document   : forgetpass
    Created on : Oct 30, 2018, 12:24:08 AM
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
        <title>forget password</title>
        <style>

        </style>
    </head>
    <body>
        <div id="outer">
            <div id="header">
                <a href="index.jsp" style="text-decoration: none;">  <i style="font-size:50px;margin-left:25px;text-shadow:4px 4px black;color:aqua;">people<b style="font-size:30px;">.in</b></i></a>               
            </div> 
            <div id="first">

                <div id="work">
                    <form>
                        <center>
                            <h1 style="font-size: 30px;">Forget Password</h1><hr>
                            <label>Enter your userid or email address </label> <br>
                            <input type="text" name="aa" placeholder="userid or email adress"><br>
                            <input type="submit" value="search" name="sub" style="background: #4cae4c; cursor: pointer;">
                            <input type="button" value="Cancel" name="can" onclick="Redirect()" style="background: #269abc;cursor: pointer;">
                        </center>
                    </form>

                    <%
                        if (request.getParameter("sub") != null) {
                            String esearch;
                            Connection con = null;
                            Statement st;
                            int x;
                            ResultSet rst;
                            try {
                                esearch = request.getParameter("aa");
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmanage", "root", "");
                                st = con.createStatement();
                                String sql = "select Phone,Name from new_register where Phone='" + esearch + "' || Email='" + esearch + "'";
                                rst = st.executeQuery(sql);
                                while (rst.next()) {
                    %>
                    <table>
                        <caption>Employee Record</caption>
                        <tr>
                            <th>User-id</th>
                            <th>Name</th>
                            <th>Edit</th>
                        </tr>
                        <tr style="font-size:18px;">

                            <td align="center" style="color:blue;"><%=rst.getString(1)%></td>
                            <td align="center" style="color:blue;"><%=rst.getString(2)%></td>

                            <td align="center" ><a href="verifyforget.jsp?id=<%=rst.getString(1)%>"><input type="button" name="des" value="It's Me"></a></td>
                        </tr> 
                        <%
                            }

                        %>
   


                        <%                                  
                                    try {
                                        if (con != null) {
                                            con.close();
                                        }
                                    } catch (SQLException e) {
                                    }
                                } catch (Exception e) {
                                    out.print("No serch found.");
                                }
                            }

  
                        %>
                    </table>
                </div>
            </div>        
        </div>
        <script>
            function Redirect() {
                window.location = "forgetpass.jsp";
            }
        </script>
    </body>
</html>
