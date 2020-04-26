package org.apache.jsp.otp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Random;
import java.util.*;

public final class otp_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;\n         charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/animate.css\">\n");
      out.write("    \n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; \n");
      out.write("              charset=ISO-8859-1\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        <title>Almost There !</title>\n");
      out.write("        <style>\n");
      out.write("        img.background {\n");
      out.write("    width: 100%;\n");
      out.write("    height: 100%;\n");
      out.write("    position: absolute;\n");
      out.write("    left: 0px;\n");
      out.write("    top: 0px;\n");
      out.write("    z-index: -1;\n");
      out.write("    -webkit-filter: blur(35px); /* Safari 6.0 - 9.0 */\n");
      out.write("    filter: blur(15px);\n");
      out.write("}\n");
      out.write("        .button {\n");
      out.write("    background-color: #4CAF50; /* Green */\n");
      out.write("    border: none;\n");
      out.write("    color: white;\n");
      out.write("    padding: 8px 24px;\n");
      out.write("    text-align: center;\n");
      out.write("    text-decoration: none;\n");
      out.write("    display: inline-block;\n");
      out.write("    font-size: 16px;\n");
      out.write("    margin: 4px 2px;\n");
      out.write("    -webkit-transition-duration: 0.4s; /* Safari */\n");
      out.write("    transition-duration: 0.4s;\n");
      out.write("    cursor: pointer;\n");
      out.write("            border-radius:10px;\n");
      out.write("}\n");
      out.write("        .submit {\n");
      out.write("    background-color: white;\n");
      out.write("    color: black;\n");
      out.write("    border: 2px solid #e7e7e7;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".submit:hover {background-color: #e7e7e7;}\n");
      out.write("    </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <img class=\"background\" src=\"../5.jpg\" alt=\"background\" width=100% height=100%>\n");
      out.write("    <div style=\"margin-top:-1%; margin-left: 72%;position: absolute\"><a href=\"../index.html\" class=\"fa fa-close\" style=\"text-decoration: none;color:black\"></a></div>\n");
      out.write("        <div class=\"animated fadeInDown\" style=\"background-color:#c9d7e8;height: 38%;width: 40%;border-radius: 25px;padding:50px;margin-left:25%;text-align: center;margin-top:10%;opacity:0.8\">\n");
      out.write("            <div><center><i class=\"fa fa-warning\" style=\"font-size:48px;color:red\"></i></center></div>\n");
      out.write("            <div><br/>Before you proceed...</div><div>Lets check its you !</div>\n");
      out.write("            <form action=\"otpprocess.jsp\" method=\"post\">\n");
      out.write("                <div><br/><input style=\"text-align: center; border-radius:10px;padding: 8px 24px;border:none; border-bottom: 2px solid blue;backface-visibility: visible \" type=\"text\" name=\"otpvalue\" placeholder=\"Enter The No. BELOW\" autocomplete=\"off\" /></div>\n");
      out.write("                <div><br/>");

                   int otp= (Integer)session.getAttribute("otp");
                      out.println(otp);
                        
      out.write("</div>\n");
      out.write("                <div><br/><input class=\"button submit\" type=\"submit\" value=\"submit\" /></div>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html> \n");
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
