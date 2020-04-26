package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Connection;
import java.sql.*;

public final class emparea_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("        <style>\n");
      out.write("\n");
      out.write("            td{border-right:0px;padding-bottom:10px;}\n");
      out.write("            table{padding:10px;}\n");
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
      out.write("                <a href=\"index.jsp\" style=\"text-decoration: none;\">  <i style=\"font-size:50px;margin-left:25px;text-shadow:4px 4px black;color:aqua;\">people<b style=\"font-size:30px;\">.in</b></i></a>\n");
      out.write("\n");
      out.write("                <i id=\"ad\" style=\"font-size:35px; color: aqua;\">Employee&nbsp;<b style=\"font-size:35px;\">Area</b></i>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div id=\"first\">\n");
      out.write("                <div id=\"nav\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"#\" class=\"active\">View Profile</a></li>\n");
      out.write("                        <li><a href=\"change.html\">Change Password</a></li>\n");
      out.write("                        <li><a href=\"emp_attendance.jsp\">Attendance</a></li>\n");
      out.write("                        <li><a href=\"emp_loan.jsp\">Loan</a></li>\n");
      out.write("                        <li><a href=\"emp_salary.jsp\">Salary</a></li>\n");
      out.write("                        <li><a href=\"emp_leaves.jsp\">Leaves</a></li>\n");
      out.write("                        <li><a href=\"emp_massage.jsp\">Status Loan/Leaves</a></li>\n");
      out.write("                        <li><a href=\"emp_resign.jsp\">Resignation</a></li>\n");
      out.write("                        <li><a href=\"stress manage/index.html\">Stress Management</a></li>\n");
      out.write("                        <li><a href=\"note.jsp\">Notification</a></li>\n");
      out.write("                        <li><a href=\"grevance.jsp\">Grievance/Suggestion</a></li>\n");
      out.write("                        <li><a href=\"index.jsp\">Logout</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div id=\"work\">\n");
      out.write("                    <CENTER>\n");
      out.write("\n");
      out.write("                        <form action=\"\" method=\"post\">\n");
      out.write("                            <table>\n");
      out.write("                                <caption>PERSONAL PROFILE</caption>\n");
      out.write("                                <tr><td>USER ID</td><td><input type=\"text\" name=\"contact\" value=\"");
      out.print(rs.getString(1));
      out.write("\"  disabled></td>\n");
      out.write("                                    <td>PASSWORD</td><td><input type=\"password\"value=\"");
      out.print(rs.getString(2));
      out.write("\" name=\"pass\" disabled></td>\n");
      out.write("                                <tr>\n");
      out.write("                            </table>\n");
      out.write("                            <table>\t\t\t\t   \n");
      out.write("                                <tr><td> NAME</td><td><input type=\"text\" value=\"");
      out.print(rs.getString(3));
      out.write("\"  name=\"name\" disabled></td>\n");
      out.write("                                    <td>FATHER NAME</td><td><input type=\"text\" name=\"fname\" readonly=\"\" value=\"");
      out.print(rs.getString(4));
      out.write("\" disabled></td></tr>\n");
      out.write("                                <tr><td>DATE OF BIRTH</td><td><input type=\"text\" name=\"dob\"   value=\"");
      out.print(rs.getString(6));
      out.write("\" disabled></td>\n");
      out.write("                                    <td>BLOOD GROUP</td><td><input type=\"text\" name=\"blood\" value=\"");
      out.print(rs.getString(8));
      out.write("\" disabled></td></tr>\n");
      out.write("                                <tr><td>NATIONALITY</td><td><input type=\"text\" name=\"nation\"  value=\"");
      out.print(rs.getString(9));
      out.write("\" disabled></td>\n");
      out.write("                                    <td></td><td></td></tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>GENDER</td><td><input type=\"text\"  name=\"sex\"  value=\"");
      out.print(rs.getString(7));
      out.write("\" disabled></td>\n");
      out.write("                                    <td>DESIGNATION</td><td><input type=\"text\" name=\"des\" readonly=\"\" value=\"");
      out.print(rs.getString(5));
      out.write("\" disabled></td>\n");
      out.write("                                </tr>\n");
      out.write("                            </table> \n");
      out.write("                            <table>\n");
      out.write("                                <tr><td>HOUSE/FLAT NO.</td><td><input type=\"text\" name=\"house\"  value=\"");
      out.print(rs.getInt(10));
      out.write("\" disabled></td>\n");
      out.write("                                    <td>STREET NAME</td><td><input type=\"text\" name=\"street\"  value=\"");
      out.print(rs.getString(11));
      out.write("\" disabled></td></tr>\n");
      out.write("                                <tr><td>CITY/TOWN</td><td><input type=\"text\" name=\"city\"   value=\"");
      out.print(rs.getString(12));
      out.write("\" disabled></td>\n");
      out.write("                                    <td>STATE</td><td><input type=\"text\" name=\"state\"   value=\"");
      out.print(rs.getString(13));
      out.write("\" disabled></td></tr>\n");
      out.write("                                <tr><td>PIN</td><td><input type=\"text\" name=\"pin\"  value=\"");
      out.print(rs.getInt(14));
      out.write("\"  disabled></td>\n");
      out.write("                                    <td>Email-id</td><td><input type=\"text\" value=\"");
      out.print(rs.getString(15));
      out.write("\" name=\"email\" disabled></td></tr>\n");
      out.write("                            </table>\n");
      out.write("                            ");


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
      out.write("                        </form>\t\t\n");
      out.write("\n");
      out.write("                    </CENTER>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
