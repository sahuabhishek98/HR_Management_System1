<%-- 
    Document   : forget1
    Created on : Oct 30, 2018, 9:24:41 AM
    Author     : hp
--%>

<%@page import="java.util.Properties"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="javax.mail.Message"%>
<%@ page import="javax.mail.Message"%>
<%@ page import ="javax.mail.MessagingException"%>
<%@ page import ="javax.mail.PasswordAuthentication"%>
<%@ page import ="javax.mail.Session"%>
<%@ page import ="javax.mail.Transport"%>
<%@ page import ="javax.mail.internet.InternetAddress"%>
<%@ page import ="javax.mail.internet.MimeMessage"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; 
              charset=ISO-8859-1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="theme.css">
        <title>Reset password?</title>
        <style>

        </style>
    </head>
    <body>
        <%
            String id = (String) session.getAttribute("id");
            Connection con = null;
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmanage", "root", "");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from new_register where Phone='" + id + "'");
            if (rs.next()) {%>
        <div id="outer">
            <div id="header">
                <a href="index.jsp" style="text-decoration: none;">  <i style="font-size:50px;margin-left:25px;text-shadow:4px 4px black;color:aqua;">people<b style="font-size:30px;">.in</b></i></a>               
            </div>
            <div id="first">
                <div id="work">
                    <form action="getpass.jsp" method="post">
                        <CENTER>
                            <h1 style="font-size: 30px;">Forget Password</h1><hr>
                            <h3>We sent your code to:</h3><br>
                            <h4>********@gmail.com</h4><br>
                            <h4>Please check your email for a message with your code.</h4><br>
                            <h4>Your code is 6 digit long.</h4><br>
                            <a href="forget1.jsp">Didn't get a code?</a><br>
                            <label>Enter the 6-digit code.</label><br>
                            <input  type="text" name="otpvalue" placeholder="######" autocomplete="off"  /><br>
                              <input type="submit" value="Continue" name="sub" ><br>
                            <input type="button" value="Cancel" name="can" onclick="Redirect()" >
                        </center>
                

                    <%
                        int otp = (Integer) session.getAttribute("otp");
                            session.setAttribute("otp", otp);
                    %>
                    <%                            String tt = "your otp is.";
                            String t = String.valueOf(otp);
                            Properties props = new Properties();
                            props.put("mail.smtp.host", "smtp.gmail.com");
                            props.put("mail.smtp.socketFactory.port", "465");
                            props.put("mail.smtp.socketFactory.class",
                                    "javax.net.ssl.SSLSocketFactory");
                            props.put("mail.smtp.auth", "true");
                            props.put("mail.smtp.port", "465");

                            Session s = Session.getInstance(props,
                                    new javax.mail.Authenticator() {
                                protected PasswordAuthentication getPasswordAuthentication() {
                                    return new PasswordAuthentication("people2018.in@gmail.com", "project2018");
                                }
                            });

                            try {

                                Message message = new MimeMessage(s);
                                message.setFrom(new InternetAddress("people2018.in@gmail.com"));
                                message.setRecipients(Message.RecipientType.TO,
                                        InternetAddress.parse(rs.getString(15)));
                                message.setSubject(tt);
                                message.setText(t);

                                Transport.send(message);

                            } catch (MessagingException e) {
                                throw new RuntimeException(e);
                            }
                        }
                        
                    %> 
                        </form>
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
