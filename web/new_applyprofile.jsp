<%-- 
    Document   : new_applyprofile
    Created on : Oct 24, 2018, 6:46:36 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            body{
                margin: 0;
            }
            #outer
            {
                width:100%;
                height:auto;
                color:white;
                background-color:teal ;
                border:2px solid black;
            }
            #area
            {
                width:100%;
                height:auto;
            }
            table{
                width:95%;
                border:2px solid white;
                margin-top:20px;
                font-size:15px;
                color:white;
                background-color:black;
            }

            th{ padding:3px;}
            #da{width:550px;}
            #na{margin-left:40px;}
            #botn{margin-top:15px;background-color:black;color:white;width:90px;height:25px; cursor: pointer;}
        </style>

        <title>Accepted/Rejected</title>
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
                String sql = "select * from new_apply where AMob='" + id + "'";
                rs = st.executeQuery(sql);
                rs.next();%>
        <div id="outer">
            <div id="area">
                <center>
                    <form action="#" method="post">

                        <table>
                            <caption>Personal Detail</caption>
                            <tr><td>FULL NAME</td><td><input type="text" placeholder="Name"  name="aname" value="<%=rs.getString(1)%>"   readonly></td>
                                <td>FATHER NAME</td><td><input type="text" placeholder="Father Name" value="<%=rs.getString(2)%>" name="afname"  readonly ></td></tr>
                            <tr><td>D.O.B.</td><td><input type="text" placeholder="dd/mm/yyyy"   name="adob" value="<%=rs.getString(3)%>" readonly="" ></td>
                                <td>BLOOD GROUP</td><td><input type="text" placeholder="AB+" readonly="" value="<%=rs.getString(4)%>"  name="ablood" ></td></tr>
                            <tr><td>RELIGION</td><td><input type="text" placeholder="Hindu/Muslim/Etc"  readonly="" value="<%=rs.getString(5)%>"  name="areligion" ></td>
                                <td>NATIONALITY</td><td><input type="text" placeholder="Indian/Etc"  readonly="" value="<%=rs.getString(6)%>" name="anation" ></td></tr>
                            <tr>
                                <td>LANGUAGE KNOWN</td>
                                <td><input name="alang" type="text" readonly="" value="<%=rs.getString(7)%>"  ></td>

                            <tr>
                            <tr>
                                <td>GENDER</td>
                                <td><input type="text" name="s" value="<%=rs.getString(8)%>" readonly="" ></td>

                            </tr>
                        </table>
                        <table id="one">
                            <caption>Qualification</caption>
                            <tr>
                                <th>S.no</th>
                                <th>Qualification</th>
                                <th>college/Institute</th>
                                <th>Board/university</th>
                                <th>Year</th>
                            </tr>
                            <tr>
                                <td>1.</td>
                                <td>High School</td>
                                <td id="da"><input type="text" id="da"  readonly="" name="acollhigh" value="<%=rs.getString(9)%>" placeholder="college name"></td>
                                <td > <input type="text" name="tgy" readonly="" value="<%=rs.getString(10)%>">
                                </td>
                                <td><input type="text"  placeholder="yyyy" id="na"   readonly="" value="<%=rs.getString(11)%>" name="ayearhigh"></td>
                            </tr>
                            <tr>
                                <td>2.</td>
                                <td>Intermediate</td>
                                <td id="da"><input type="text" id="da" readonly=""  value="<%=rs.getString(12)%>" name="acollinter" placeholder="college name"></td>
                                <td><input type="text" name="tgy" readonly="" value="<%=rs.getString(13)%>"></td>
                                <td><input type="text" placeholder="yyyy" id="na"   value="<%=rs.getString(14)%>"  readonly="" name="ayearinter"></td>
                            </tr>
                            <tr>
                                <td>3.</td>
                                <td>Graduation</td>
                                <td id="da"><input type="text" id="da" placeholder="college name" value="<%=rs.getString(15)%>"   name="acollgra"></td>
                                <td><input type="text" id="na" placeholder="university"   value="<%=rs.getString(16)%>" name="aboardgra"></td>
                                <td><input type="text"  placeholder="yyyy" id="na"  value="<%=rs.getString(17)%>" name="ayeargra"></td>
                            </tr><tr>
                                <td>4.</td>
                                <td>Post Graduation</td>
                                <td id="da"><input type="text" id="da" name="acollphd"  value="<%=rs.getString(18)%>" ></td>
                                <td><input type="text" id="na" name="aboardphd"  value="<%=rs.getString(19)%>"></td>
                                <td><input type="text" placeholder="yyyy" id="na" name="ayearphd" value="<%=rs.getString(20)%>"></td>
                            </tr>
                        </table>
                        <table>
                            <caption>Address & Contact details</caption>
                            <tr><td>E-MAIL</td><td><input type="email" name="aemail" readonly="" value="<%=rs.getString(21)%>"  ></td>
                                <td>MOBILE</td><td><input type="text" name="amob" readonly=""  value="<%=rs.getString(22)%>" ></td></tr>
                            <tr><td>HOUSE/FLAT NO.</td><td><input type="text" name="ahomeno" readonly="" value="<%=rs.getString(23)%>"></td>
                                <td>STREET NAME</td><td><input type="text" name="astreet" readonly="" value="<%=rs.getString(24)%>"></td></tr>
                            <tr><td>CITY/TOWN</td><td><input type="text" name="acity" readonly="" value="<%=rs.getString(25)%>" ></td>
                                <td>LANDMARK</td><td><input type="text" name="alandmark" readonly="" value="<%=rs.getString(26)%>"></td></tr>
                            <tr><td>STATE</td><td><input type="text" name="astate" readonly=""  value="<%=rs.getString(27)%>" ></td>
                                <td>PIN CODE</td><td><input type="text" name="apin"  readonly="" value="<%=rs.getString(30)%>"></td></tr>
                        </table>
                        <table>
                            <tr>
                                <td> Applying for post:</td>
                                <td><input type="text" name="hfh" readonly="" value="<%=rs.getString(28)%>">
                                </td><td>
                                    Have Experince
                                    <input type="text"  name="aexp" readonly="" value="<%=rs.getString(29)%>">    

                            </tr></table>
                        <br>

                        <br>		

                        <input type="submit" value="Accepted" id="botn"  name="acc" >
                        <input type="submit" value="Rejected" id="botn" name="rej">
                        <%
                            if (request.getParameter("acc") != null) {
                                String t = "Reply For Your Application..";

                                String ttt = "Hey" + " " + rs.getString(1) + " " + "You Are Selected For Our Reputed Comapany. Now you are  Login with userid=" + rs.getString(22) + "and  password=" + rs.getString(22) + ".After loged in Change The Password. Thankyou";

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
                                            InternetAddress.parse(rs.getString(21)));
                                    message.setSubject(t);
                                    message.setText(ttt);

                                    Transport.send(message);

                                    response.sendRedirect("admin_newregistration.jsp");

                                } catch (MessagingException e) {
                                    throw new RuntimeException(e);
                                }

                            }
                        %>
                        <%
                            if (request.getParameter("rej") != null) {
                                String t = "Reply For Your Application..";

                                String ttt = "Hey" + " " + rs.getString(1) + " " + "You Are  not Selected. Sorry";

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
                                            InternetAddress.parse(rs.getString(21)));
                                    message.setSubject(t);
                                    message.setText(ttt);

                                    Transport.send(message);

                                    response.sendRedirect("admin_newregistration.jsp");

                                } catch (MessagingException e) {
                                    throw new RuntimeException(e);
                                }

                            }
                        %>                          
                    </form>
                </center>
            </div>
        </div>
        <%                      } catch (Exception e) {
                out.println(e.toString());
            }
        %>
    </body>
</html>
