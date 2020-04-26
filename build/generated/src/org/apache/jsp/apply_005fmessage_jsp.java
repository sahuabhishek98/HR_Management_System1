package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class apply_005fmessage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\n");
      out.write("        <style>\n");
      out.write("            #work1\n");
      out.write("            {     border:2px solid black;\n");
      out.write("                  width:1115px;\n");
      out.write("                  height:200px;\n");
      out.write("                  background-color:azure;\n");
      out.write("                  float:right;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            #header1\n");
      out.write("            {\n");
      out.write("                border:2px solid black;\n");
      out.write("                width:1334px;\n");
      out.write("                height:70px;\n");
      out.write("                background-color:DarkOliveGreen;\n");
      out.write("            }\n");
      out.write("            @media screen and (max-width: 950px){\n");
      out.write("                #work1{width:100%;height:auto;border:0px solid black}\n");
      out.write("                #header1 i{\n");
      out.write("                    position: absolute;\n");
      out.write("                    display: block;\n");
      out.write("                    text-align: center;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div id=\"outer\">\n");
      out.write("            <div id=\"header1\">\n");
      out.write("                <i style=\"font-size:50px;margin-left:25px;text-shadow:4px 4px black;color:aqua;\">people<b style=\"font-size:30px;\">.in</b></i>\n");
      out.write("\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div>\n");
      out.write("\n");
      out.write("                <div id=\"work1\">\n");
      out.write("                    <p style=\"color: orange; font-size: 35px;\">your Application Forwarded To H.R Wait H.R Mail.........</p>\n");
      out.write("                    <span style=\"float: right; font-size: 25px;\">CLICK HERE: <a href=\"index.jsp\" >Home</a></span>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
