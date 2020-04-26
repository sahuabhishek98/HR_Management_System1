package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class note_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\n");
      out.write("        <style>\n");
      out.write("            table tr:nth-child(odd){background-color: slateblue;}\n");
      out.write("            table tr:nth-child(even){background-color:white;}\n");
      out.write("            #sahu{\n");
      out.write("                font-size: 20px;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
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
      out.write("                        <li><a href=\"note.jsp\">Notification</a></li>\n");
      out.write("                        <li><a href=\"grevance.jsp\">Grievance/Suggestion</a></li>\n");
      out.write("                        <li><a href=\"stress manage/index.html\">Stress Management</a></li>\n");
      out.write("\n");
      out.write("                        <li><a href=\"index.jsp\">Logout</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div id=\"work\">\n");
      out.write("                    <CENTER>\n");
      out.write("                        <table>\n");
      out.write("                            <tr>\n");
      out.write("                                <th>NOTIFICATION</th>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td id=\"sahu\">Abhishek sahu</td>\n");
      out.write("                            </tr>\n");
      out.write("                          \n");
      out.write("                        </table>\n");
      out.write("                    </center>\n");
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
