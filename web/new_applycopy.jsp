<%-- 
    Document   : new_applycopy
    Created on : Oct 25, 2018, 10:48:50 AM
    Author     : hp
--%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <%

            String id = request.getParameter("id");
            Connection con = null;
            Statement st;
            ResultSet rs1;
            PreparedStatement pst;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmanage", "root", "");
                st = con.createStatement();
                int sal = 0, x;
                String dd = "0000-00-00";
                String sql1 = "select * from new_apply where AMob='" + id + "'";
                rs1 = st.executeQuery(sql1);
                rs1.next();%>
        <%
            pst = con.prepareStatement("insert into new_register(Phone,Passw,Name,Fname,Desi,Dob,Sex,Blood,National,Flat,Street,City,State,Pin,Email,Date,Salary)  values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            pst.setString(1, rs1.getString(22));
            pst.setString(2, rs1.getString(22));
            pst.setString(3, rs1.getString(1));
            pst.setString(4, rs1.getString(2));
            pst.setString(5, rs1.getString(28));
            pst.setString(6, rs1.getString(3));
            pst.setString(7, rs1.getString(8));
            pst.setString(8, rs1.getString(4));
            pst.setString(9, rs1.getString(6));
            pst.setString(10, rs1.getString(23));
            pst.setString(11, rs1.getString(24));
            pst.setString(12, rs1.getString(25));
            pst.setString(13, rs1.getString(27));
            pst.setString(14, rs1.getString(30));
            pst.setString(15, rs1.getString(21));
            pst.setString(16, dd);
            pst.setInt(17, sal);
            x = pst.executeUpdate();
            if (x == 1) {
         response.sendRedirect("new_applycopy.jsp");      
           }
        } catch (Exception xx) {
           response.sendRedirect("new_applycopy.jsp");
        %><%
            }


        %>
    </body>
</html>
