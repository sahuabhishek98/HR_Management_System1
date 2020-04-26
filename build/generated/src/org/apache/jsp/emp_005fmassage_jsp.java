package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.Connection;
import java.io.*;

public final class emp_005fmassage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\n");
      out.write("        <meta http-equiv=\"refresh\" content=\"1\">\n");
      out.write("        <style>\n");
      out.write("            table,th,td{\n");
      out.write("                 border: 1px solid gray;\n");
      out.write("                  border-collapse: collapse;\n");
      out.write("            }\n");
      out.write("            td{border-right:0px;padding-bottom:10px;}\n");
      out.write("            table{}\n");
      out.write("            #botn{margin-top:15px;background-color:black;color:white;width:90px;height:25px;}\n");
      out.write("            @media screen and (max-width: 950px)\n");
      out.write("            {table{padding:1px;}\n");
      out.write("             caption{width:100%;}\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            if (session.getAttribute("username") != null) {
                String un = (String) session.getAttribute("username");

                Connection con = null;
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmanage", "root", "");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select * from new_register where Phone='" + un + "'");
                rs.next();
      out.write("\n");
      out.write("        <div id=\"outer\">\n");
      out.write("            <div id=\"header\">\n");
      out.write("\n");
      out.write("                <a href=\"index.jsp\" style=\"text-decoration: none;\">  <i style=\"font-size:50px;margin-left:25px;text-shadow:4px 4px black;color:aqua;\">people<b style=\"font-size:30px;\">.in</b></i></a>\n");
      out.write("\n");
      out.write("                <i id=\"ad\" style=\"font-size:35px; color: aqua;\">Employee&nbsp;<b style=\"font-size:35px;\">Area</b></i>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div id=\"first\">\n");
      out.write("                <div id=\"nav\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"emparea.jsp\" >View Profile</a></li>\n");
      out.write("                        <li><a href=\"change.html\">Change Password</a></li>\n");
      out.write("                        <li><a href=\"emp_attendance.jsp\">Attendance</a></li>\n");
      out.write("                        <li><a href=\"emp_loan.jsp\">Loan</a></li>\n");
      out.write("                        <li><a href=\"emp_salary.jsp\">Salary</a></li>\n");
      out.write("                        <li><a href=\"emp_leaves.jsp\">Leaves</a></li>\n");
      out.write("                        <li><a href=\"emp_massage.jsp\" class=\"active\">Status Loan/Leaves</a></li>\n");
      out.write("                        <li><a href=\"emp_resign.jsp\">Resignation</a></li>\n");
      out.write("                        <li><a href=\"stress manage/index.html\">Stress Management</a></li>\n");
      out.write("                        <li><a href=\"index.jsp\">Logout</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div id=\"work\">\n");
      out.write("                    <CENTER>\n");
      out.write("\n");
      out.write("                        <table >\n");
      out.write("                            <caption>Information </caption>\n");
      out.write("                            <tr>\n");
      out.write("                                <th>Status About Loan/Leave</th>\n");
      out.write("                                <th>click here</th>\n");
      out.write("\n");
      out.write("                            </tr>\n");
      out.write("\n");
      out.write("                            ");

                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmanage", "root", "");
                                    st = con.createStatement();
                                    String sql = "select Mode from Loan where Loanid='" + un + "'";
                                    rs = st.executeQuery(sql);
                                    while (rs.next()) {
      out.write("\n");
      out.write("                            <tr style=\"font-size:18px;\">\n");
      out.write("                                <td> your loan is:&nbsp;&nbsp; <span style=\"color:#4CAF50; font-size: 40px;\">");
      out.print(rs.getString(1));
      out.write("</span></td>\n");
      out.write("                                <td><form><input type=\"submit\" name=\"loana\" value=\"CLICK HARE\" required=\"\"></form></td>\n");
      out.write("                                <!--end-->\n");
      out.write("                                <!--to delete loan area-->\n");
      out.write("                                ");

                                    if (request.getParameter("loana") != null) {
                                        try {
                                            Class.forName("com.mysql.jdbc.Driver");
                                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmanage", "root", "");
                                            st = con.createStatement();
                                            String sql2 = "delete  from Loan where Loanid='" + un + "'";
                                            int res = st.executeUpdate(sql2);
                                            if (res != 0) {
      out.write("\n");
      out.write("                            <strong style=\"color: green; font-size: 50px; text-align: right; \">Success!</strong>\n");
      out.write("                            ");
 }
      out.write("\n");
      out.write("                            ");
 } catch (Exception e) {
                                        out.println(e.toString());
                                    }
                                }
                            
      out.write("\n");
      out.write("                            </tr>\n");
      out.write("                            ");
 }
      out.write("\n");
      out.write("                            ");
 } catch (Exception e) {
                                    out.println(e.toString());
                                }
                            
      out.write("  \n");
      out.write("                            <!--end-->\n");
      out.write("                            <!--to get leave dtails-->\n");
      out.write("                            ");

                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmanage", "root", "");
                                    st = con.createStatement();
                                    String sql = "select Status from Leaves where Userid='" + un + "'";
                                    rs = st.executeQuery(sql);
                                    while (rs.next()) {
      out.write("\n");
      out.write("                            <tr style=\"font-size:18px;\">\n");
      out.write("                                <td>You Leave is:&nbsp;&nbsp;<span style=\"color:#4CAF50; font-size: 40px;\">");
      out.print(rs.getString(1));
      out.write("</span></td>\n");
      out.write("                                <td><form><input type=\"submit\" name=\"loab\" value=\"CLICK HERE \" required=\"\"></form></td>\n");
      out.write("                                <!-- to delete leave-->\n");
      out.write("                                ");

                                    if (request.getParameter("loab") != null) {
                                        try {

                                            Class.forName("com.mysql.jdbc.Driver");
                                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmanage", "root", "");
                                            st = con.createStatement();
                                            String sql2 = "delete  from  Leaves where Userid='" + un + "'";
                                            int res = st.executeUpdate(sql2);
                                            if (res != 0) {
      out.write("\n");
      out.write("                            <strong style=\"color: green; font-size: 50px; text-align: right; \">Success!</strong>\n");
      out.write("                            ");
 }
      out.write("\n");
      out.write("                            ");
 } catch (Exception e) {
                                        out.println(e.toString());
                                    }
                                }
                            
      out.write("\n");
      out.write("                            <!--end-->\n");
      out.write("                            </tr>\n");
      out.write("                        </table>\n");
      out.write("                        ");
 }
      out.write("\n");
      out.write("                        ");
 } catch (Exception e) {
                                out.println(e.toString());
                            }
                        
      out.write("     \n");
      out.write("                        ");
 try {
                                    if (con != null) {
                                        con.close();
                                    }
                                } catch (SQLException e) {
                                }
                            } else {
                                response.sendRedirect("index.jsp");
                            }
      out.write("\n");
      out.write("\n");
      out.write("                        </table>\n");
      out.write("                    </CENTER>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
