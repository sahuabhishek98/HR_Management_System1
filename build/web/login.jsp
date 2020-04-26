<%-- 
    Document   : login
    Created on : Oct 5, 2018, 6:38:50 PM
    Author     : hp
--%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    if (request.getParameter("b1") != null) {
        Connection con = null;
        Statement st;
        ResultSet rs;
        String un = request.getParameter("usr");
        String pw = request.getParameter("psd");
        if (un.equals("admin") && pw.equals("admin")) {
            session.setAttribute("admin", un);
            response.sendRedirect("admin_newregistration.jsp");
        } else {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmanage", "root", "");
                st = con.createStatement();
                String sql = "select * from new_register  where Phone='" + un + "' and passw='" + pw + "'";
                rs = st.executeQuery(sql);
                if (rs.next()) {
                    session.setAttribute("username", un);
                    response.sendRedirect("emparea.jsp");
                } else {


%>
<h2 style="color:red;">INVALID PASSWORD TRY AGAIN.</h2>


<%                                                }
            } catch (Exception e) {
                out.println(e.toString());
            }
        }
        try {
            if (con != null) {
                con.close();
            }
        } catch (SQLException e) {
            out.println(e);
        }
    }
%>
