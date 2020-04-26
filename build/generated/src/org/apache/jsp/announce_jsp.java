package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class announce_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\n");
      out.write("           <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <div id=\"outer\">\n");
      out.write("            <div id=\"header\">\n");
      out.write("\n");
      out.write("               \n");
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
      out.write("                        <li><a href=\"admin_loan.jsp\" >Loan</a></li>\n");
      out.write("                        <li><a href=\"admin_salary.jsp\">Manage Salary</a></li>\n");
      out.write("                        <li><a href=\"admin_leaves.jsp\">Leaves</a></li>\n");
      out.write("                       <li><a href=\"new_apply.jsp\">New Recruiter</a></li>\n");
      out.write("                        <li><a href=\"training_register.jsp\">Training & Event</a></li>\n");
      out.write("                        <li><a href=\"\">Complaints</a></li>\n");
      out.write("                        <li><a href=\"\" class=\"active\">Announcement</a></li>\n");
      out.write("                        <li><a href=\"admin_resign.jsp\">Resignation</a></li>\n");
      out.write("                        <li><a href=\"stress manage/index.html\">Stress Management</a></li>\n");
      out.write("                        <li><a href=\"index.jsp\">Logout</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div id=\"work\">\n");
      out.write("                    <center>\n");
      out.write("                        <form action=\"\" >\n");
      out.write("                            <h1 style=\"font-size: 30px;\">ANNOUNCEMENT</h1>\n");
      out.write("                            <textarea style=\"width: 75%;height:50%\"></textarea>\n");
      out.write("                        </form>\n");
      out.write("                    </center>\n");
      out.write("                </div>\n");
      out.write("                </div>\n");
      out.write("             </div>\n");
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
