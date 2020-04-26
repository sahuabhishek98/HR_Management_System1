<%-- 
    Document   : verifyforget
    Created on : Oct 30, 2018, 1:19:36 AM
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
        <title>verify password</title>
    </head>
    <body>
        <%

            String id = request.getParameter("id");
            session.setAttribute("id", id);
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
            </div> 
            <div id="first">
                <div id="work">
                    <form>
                        <center>
                            <h2 style="font-size: 30px;">Forget Password</h2><hr>
                            <h3>Get a code to reset your password</h3> <br>
                            NAME:  <%=rs.getString(3)%><br>
                            SEND: Send a otp to reset the password.<br><br>
                            <a href="forget.jsp?id=<%=rs.getString(1)%>">   <input type="button" value="Continue" name="sub" style="background: #4cae4c; cursor: pointer;"></a><br><br>
                              <input type="button" value="Not my account" onclick="Redirect()" style="background: #269abc;cursor: pointer;" >
                        </center>
                    </form>
                        
                </div>
            </div>
        </div>
        <%   } catch (Exception e) {
                out.println(e.toString());
            }
        %>
        <script>
            function Redirect() {
                window.location = "forgetpass.jsp";
            }
        </script>
    </body>
</html>
