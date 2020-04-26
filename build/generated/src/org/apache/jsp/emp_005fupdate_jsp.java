package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class emp_005fupdate_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<head>\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\n");
      out.write("<style>\n");
      out.write("td{border-right:0px;padding-bottom:10px;}\n");
      out.write("table{padding:10px;}\n");
      out.write("#botn{margin-top:15px;background-color:black;color:white;width:90px;height:25px;}\n");
      out.write("@media screen and (max-width: 950px)\n");
      out.write("{table{padding:1px;}\n");
      out.write("caption{width:100%;}\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div id=\"outer\">\n");
      out.write("<div id=\"header\">\n");
      out.write("\n");
      out.write("<i style=\"font-size:50px;margin-left:25px;text-shadow:4px 4px black;color:silver;\">people<b style=\"font-size:30px;\">.in</b></i>\n");
      out.write("\n");
      out.write("<i id=\"ad\" style=\"font-size:35px;\">Admin<b style=\"font-size:35px;\">Area</b></i>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("<div id=\"first\">\n");
      out.write("<div id=\"nav\">\n");
      out.write("<ul>\n");
      out.write("<li class=\"dropdown\"><a  class=\"active\";>Manage Employee</a>\n");
      out.write("    <div class=\"dropdown-content\" >\n");
      out.write("<a href style=\"border-bottom:1px solid black;\">New Registration</a>\n");
      out.write(" <a href=\"#\" style=\"border-bottom:1px solid black;\">Search/delete Employee</a>\n");
      out.write(" </div>\n");
      out.write(" </li>\n");
      out.write("<li><a href=\"#\">Attendance</a></li>\n");
      out.write("<li><a href=\"#\">Loan</a></li>\n");
      out.write("<li><a href=\"#\">Manage Salary</a></li>\n");
      out.write("<li><a href=\"#\">Leaves</a></li>\n");
      out.write("<li><a href=\"#\">New Recruiter</a></li>\n");
      out.write("<li><a href=\"#\">Training & Event</a></li>\n");
      out.write("<li><a href=\"#\">Complaints</a></li>\n");
      out.write("<li><a href=\"#\">Announcement</a></li>\n");
      out.write("<li><a href=\"#\">Resignation</a></li>\n");
      out.write("<li><a href=\"#\">Stress Management</a></li>\n");
      out.write("<li><a href=\"#\">Logout</a></li>\n");
      out.write("</ul>\n");
      out.write("</div>\n");
      out.write("<div id=\"work\">\n");
      out.write("   <CENTER>\n");
      out.write("   \n");
      out.write("            <form action=\"\" method=\"post\">\n");
      out.write("               <table>\n");
      out.write("\t\t\t      <caption>EMPLOYEE PROFILE</caption>\n");
      out.write("\t\t\t      <tr><td>USER ID</td><td><input type=\"text\" name=\"id\"></td><td>PASSWORD</td><td><input type=\"password\" name=\"id\"></td>\n");
      out.write("\t\t\t\t   <td>\n");
      out.write("\t\t\t\t  <select name=\"des\" required=\"\">\n");
      out.write("                                            <option value=\"Employee\">Employee</option>\n");
      out.write("                                            <option value=\"HR\">HR</option>\n");
      out.write("                                            <option value=\"Developer\">Developer</option>\n");
      out.write("                                            <option value=\"Coder\">Coder</option>\n");
      out.write("                                            <option value=\"worker\">Worker</option>\n");
      out.write("\n");
      out.write("                                        </select> </td>\n");
      out.write("\t\t\t\t  <tr>\n");
      out.write("                   </table>\n");
      out.write("<table>\t\t\t\t   \n");
      out.write("\t\t\t\t <tr><td>EMPLOYEE NAME</td><td><input type=\"text\" name=\"id\"></td>\n");
      out.write("\t\t\t\t  <td>FATHER NAME</td><td><input type=\"text\" name=\"id\"></td></tr>\n");
      out.write("\t\t\t\t  <tr><td>DATE OF BIRTH</td><td><input type=\"text\" name=\"id\"></td>\n");
      out.write("\t\t\t\t  <td>BLOOD GROUP</td><td><input type=\"text\" name=\"id\"></td></tr>\n");
      out.write("\t\t\t\t  <tr><td>NATIONALITY</td><td><input type=\"text\" name=\"id\"></td>\n");
      out.write("\t\t\t\t  <td>SALARY</td><td><input type=\"text\" name=\"id\"></td></tr>\n");
      out.write("\t\t\t\t  <tr>\n");
      out.write("\t\t\t\t  <td>GENDER</td><td><input type=\"radio\" name=\"id\" value=\"hr manager\">Male</td>\n");
      out.write("\t\t\t\t  <td><input type=\"radio\" name=\"id\" value=\"developer\">Female</td>\n");
      out.write("\t\t\t\t  <td><input type=\"radio\" name=\"id\" value=\"accountant\">Transgender</td>\n");
      out.write("\t\t\t\t  </tr>\n");
      out.write("                  </table> \n");
      out.write("\t\t\t\t  <table>\n");
      out.write("\t\t\t\t   <tr><td>HOUSE/FLAT NO.</td><td><input type=\"text\" name=\"id\"></td>\n");
      out.write("\t\t\t\t  <td>STREET NAME</td><td><input type=\"text\" name=\"id\"></td></tr>\n");
      out.write("\t\t\t\t  <tr><td>CITY/TOWN</td><td><input type=\"text\" name=\"id\"></td>\n");
      out.write("\t\t\t\t  <td>STATE</td><td><input type=\"text\" name=\"id\"></td></tr>\n");
      out.write("\t\t\t\t  </table>\n");
      out.write("             </form>\t\t\n");
      out.write("                          <input type=\"submit\" value=\"submit\" id=\"botn\">\t\t\t \n");
      out.write("\t\t\t\t</CENTER>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</body>\n");
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
