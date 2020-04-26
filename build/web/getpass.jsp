<%-- 
    Document   : getpass
    Created on : Oct 30, 2018, 7:59:22 PM
    Author     : hp
--%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
     <%  
                            try {
                                out.print("sahu");
                                int otp = (Integer) session.getAttribute("otp");
                                 out.print("sahu");
                                String otpvalues = request.getParameter("otpvalue");
                                 out.print("sahu");
                                int enterOtp = Integer.parseInt(otpvalues);
                                 out.print("sahu");
                                if (otp == enterOtp) {
                                    response.sendRedirect("newpassword.jsp");
                                } else {
                                  response.sendRedirect("newpassword123.jsp");
                                }
                            } catch (Exception ee) {
                                out.print(ee);
                            }
                        
%>
    </body>
</html>
