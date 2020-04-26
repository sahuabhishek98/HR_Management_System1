<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
    if (request.getParameter("by") != null) {
        String currentPassword = request.getParameter("current");
        String Newpass = request.getParameter("new");
        String conpass = request.getParameter("confirm");
        String connurl = "jdbc:mysql://localhost:3306/hrmanage";
        Connection con = null;
        String pass = "";
        String id = "0";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(connurl, "root", "");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from new_register where passw='" + currentPassword + "'");
            while (rs.next()) {
                id = rs.getString(1);
                pass = rs.getString(2);
            }
            System.out.println(id + " " + pass);
            if (pass.equals(currentPassword)) {
                Statement st1 = con.createStatement();
                int i = st1.executeUpdate("update new_register set passw='" + Newpass + "' where Phone='" + id + "'");
                out.println("Password changed successfully");
                response.sendRedirect("emparea.jsp");
                st1.close();
                con.close();
            } else {
                out.println("Invalid Current Password");
            }
        } catch (Exception e) {
            response.sendRedirect("login.jsp");
        }
     
    }
%> 
