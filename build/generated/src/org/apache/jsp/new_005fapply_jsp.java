package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Connection;
import java.sql.*;

public final class new_005fapply_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>new people</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        <style>\n");
      out.write("            table,th,td{\n");
      out.write("                font-family: arial, sans-serif;\n");
      out.write("                border: 1px solid gray;\n");
      out.write("                border-collapse: collapse;\n");
      out.write("            }\n");
      out.write("            #uj{\n");
      out.write("                color:darkgreen;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            if (session.getAttribute("admin") != null) {
                String un = (String) session.getAttribute("admin");
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
      out.write("                <i style=\"font-size:50px;margin-left:25px;text-shadow:4px 4px black; color:aqua;\">people<b style=\"font-size:30px;\">.in</b></i>\n");
      out.write("\n");
      out.write("                <i id=\"ad\" style=\"font-size:35px; color:aqua;\">Admin<b style=\"font-size:35px; color:aqua;\">Area</b></i>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"first\">\n");
      out.write("                <div id=\"nav\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li class=\"dropdown\"><a>Manage Employee</a>\n");
      out.write("                            <div class=\"dropdown-content\" >\n");
      out.write("                                <a href=\"admin_newregistration.jsp\" style=\"border-bottom:1px solid black;\">New Registration</a>\n");
      out.write("                                <a href=\"admin_search.jsp\" style=\"border-bottom:1px solid black;\">Search/delete Employee</a>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                        <li><a href=\"attendance.jsp\" >Attendance</a></li>\n");
      out.write("                        <li><a href=\"admin_loan.jsp\">Loan</a></li>\n");
      out.write("                        <li><a href=\"admin_salary.jsp\" class=\"active\">Manage Salary</a></li>\n");
      out.write("                        <li><a href=\"admin_leaves.jsp\">Leaves</a></li>\n");
      out.write("                        <li><a href=\"new_apply.jsp\">New Recruiter</a></li>\n");
      out.write("                        <li><a href=\"training_register.jsp\">Training & Event</a></li>\n");
      out.write("                        <li><a href=\"\">Complaints</a></li>\n");
      out.write("                        <li><a href=\"\">Announcement</a></li>\n");
      out.write("                        <li><a href=\"admin_resign.jsp\">Resignation</a></li>\n");
      out.write("                        <li><a href=\"stress manage/index.html\">Stress Management</a></li>\n");
      out.write("                        <li><a href=\"index.jsp\">Logout</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div id=\"work\">\n");
      out.write("                    <CENTER>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <table>\n");
      out.write("                            <caption>Employee's Salray Details</caption>\n");
      out.write("                            <tr>\n");
      out.write("                                <th>User-id</th>\n");
      out.write("                                <th>Name</th>\n");
      out.write("                                <th>Designation</th>\n");
      out.write("                                <th>Edit</th>\n");
      out.write("\n");
      out.write("                            </tr>\n");
      out.write("                            ");


                                int x;
                                ResultSet rst;
                                try {
                                    Class.forName("com.mysql.jdbc.Driver");

                                    st = con.createStatement();
                                    String sql = "select Phone,Name,Desi from new_register";
                                    rst = st.executeQuery(sql);
                                    while (rst.next()) {
                            
      out.write("\n");
      out.write("\n");
      out.write("                            <tr style=\"font-size:18px;\">\n");
      out.write("\n");
      out.write("                                <td align=\"center\">");
      out.print(rst.getString(1));
      out.write("</td>\n");
      out.write("                                <td align=\"center\">");
      out.print(rst.getString(2));
      out.write("</td>\n");
      out.write("                                <td align=\"center\">");
      out.print(rst.getString(3));
      out.write("</td>\n");
      out.write("                                <td align=\"center\"> <a href=\"admin_manage.jsp?id=");
      out.print(rst.getString(1));
      out.write("\"><i  id=\"uj\" class=\"fa fa-edit\"></i></a> </td>\n");
      out.write("                            </tr>\n");
      out.write("                            ");

                                }
                            
      out.write("\n");
      out.write("                        </table>\n");
      out.write("                        ");

                                    try {
                                        if (con != null) {
                                            con.close();
                                        }
                                    } catch (SQLException e) {
                                    }
                                } catch (Exception e) {
                                    out.print("Emlpoyee Is Not Found.");
                                }
                            } else {
                                response.sendRedirect("login.jsp");
                }
      out.write("\n");
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
