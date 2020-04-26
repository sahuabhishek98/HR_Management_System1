package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Connection;
import java.sql.*;

public final class admin_005fnewregistration_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("        <style>\r\n");
      out.write("            td{border-right:0px;padding-bottom:10px;}\r\n");
      out.write("            table{padding:10px;}\r\n");
      out.write("            #botn{margin-top:15px;background-color:black;color:white;width:90px;height:25px; cursor: pointer;}\r\n");
      out.write("            @media screen and (max-width: 950px)\r\n");
      out.write("            {table{padding:1px;}\r\n");
      out.write("             caption{width:100%;}\r\n");
      out.write("            }\r\n");
      out.write("             .iconwid{width: 25px;position: relative;}\r\n");
      out.write("        </style>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        ");

            if (session.getAttribute("admin") != null) {
                String un = (String) session.getAttribute("admin");
                Connection con = null;
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmanage", "root", "");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select * from new_register where Phone='" + un + "'");
                rs.next();
      out.write("\r\n");
      out.write("        <div id=\"outer\">\r\n");
      out.write("            <div id=\"header\">\r\n");
      out.write("\r\n");
      out.write("                \r\n");
      out.write("                <i style=\"font-size:50px;margin-left:25px;text-shadow:4px 4px black; color:aqua;\">people<b style=\"font-size:30px;\">.in</b></i>\r\n");
      out.write("\r\n");
      out.write("                <i id=\"ad\" style=\"font-size:35px; color:aqua;\">Admin<b style=\"font-size:35px; color:aqua;\">Area</b></i>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div id=\"first\">\r\n");
      out.write("                <div id=\"nav\">\r\n");
      out.write("                    <ul>\r\n");
      out.write("                        <li class=\"dropdown\"><a class=\"active\"><i class=\"fa fa-file iconwid\" aria-hidden=\"true\"></i>Manage Employee</a>\r\n");
      out.write("                            <div class=\"dropdown-content\" >\r\n");
      out.write("                                <a href=\"admin_newregistration.jsp\" style=\"border-bottom:1px solid black;\"><i class=\"fa fa-user-plus iconwid\" aria-hidden=\"true\"></i>New Registration</a>\r\n");
      out.write("                                <a href=\"admin_search.jsp\" style=\"border-bottom:1px solid black;\"><i class=\"fa fa-search iconwid\" aria-hidden=\"true\"></i>Search Employee</a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li><a href=\"attendance.jsp\"><i class=\"fa fa-font iconwid\"></i>Attendance</a></li>\r\n");
      out.write("                        <li><a href=\"admin_loan.jsp\"><i class=\"fa fa-handshake-o iconwid\" aria-hidden=\"true\"></i>Loan</a></li>\r\n");
      out.write("                        <li><a href=\"admin_salary.jsp\"><i class=\"fa fa-money iconwid\" aria-hidden=\"true\"></i>Manage Salary</a></li>\r\n");
      out.write("                        <li><a href=\"admin_leaves.jsp\"><i class=\"fa fa-adjust iconwid\" aria-hidden=\"true\"></i>Leaves</a></li>\r\n");
      out.write("                        <li><a href=\"new_apply.jsp\"><i class=\"fa fa-user-plus iconwid\" aria-hidden=\"true\"></i>New Recruiter</a></li>\r\n");
      out.write("                        <li><a href=\"training_register.jsp\"><i class=\"fa fa-group iconwid\" aria-hidden=\"true\"></i>Training & Event</a></li>\r\n");
      out.write("                        <li><a href=\"complain.jsp\" ><i class=\"fa fa-hand-paper-o iconwid\" aria-hidden=\"true\"></i>Complaints</a></li>\r\n");
      out.write("                        <li><a href=\"announce.jsp\"><i class=\"fa fa-bullhorn iconwid\" aria-hidden=\"true\"></i>Announcement</a></li>\r\n");
      out.write("                        <li><a href=\"admin_resign.jsp\"><i class=\"fa fa-crosshairs iconwid\" aria-hidden=\"true\"></i>Resignation</a></li>\r\n");
      out.write("                        <li><a href=\"stress manage/index.html\"><i class=\"fa fa-heart-o iconwid\" aria-hidden=\"true\"></i>Stress Management</a></li>\r\n");
      out.write("                        <li><a href=\"index.jsp\"><i class=\"fa fa-sign-out iconwid\" aria-hidden=\"true\"></i>Logout</a></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div id=\"work\">\r\n");
      out.write("                    <CENTER>\r\n");
      out.write("\r\n");
      out.write("                        <form action=\"\" method=\"post\">\r\n");
      out.write("                            <table>\r\n");
      out.write("                                <caption>EMPLOYEE PROFILE</caption>\r\n");
      out.write("                                <tr><td>USER ID</td><td><input type=\"text\" placeholder=\"mob no:\" required=\"\" name=\"contact\"   pattern=\"[6789][0-9]{9}\"></td>\r\n");
      out.write("                                    <td>PASSWORD</td><td>\r\n");
      out.write("                                        <input type=\"password\" placeholder=\"Your Password\"  required=\"\" name=\"pass\" ></td>\r\n");
      out.write("                                    <td>Designation:\r\n");
      out.write("                                        <select name=\"des\" required=\"\">\r\n");
      out.write("                                            <option value=\"Employee\">Employee</option>\r\n");
      out.write("                                            <option value=\"HR\">HR</option>\r\n");
      out.write("                                            <option value=\"Developer\">Developer</option>\r\n");
      out.write("                                            <option value=\"Coder\">Coder</option>\r\n");
      out.write("                                            <option value=\"worker\">Worker</option>\r\n");
      out.write("\r\n");
      out.write("                                        </select> </td>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                            </table>\r\n");
      out.write("                            <table>\t\t\t\t   \r\n");
      out.write("                                <tr><td>EMPLOYEE NAME</td><td><input type=\"text\" required=\"\"  name=\"name\" placeholder=\"employee Name\" pattern=\"[A-Za-z ]{3,25}\"></td>\r\n");
      out.write("                                    <td>FATHER NAME</td><td><input type=\"text\"  name=\"fname\" required=\"\" placeholder=\"father name\" pattern=\"[A-Za-z ]{3,25}\"></td></tr>\r\n");
      out.write("                                <tr><td>DATE OF BIRTH</td><td><input type=\"text\" name=\"dob\" pattern=\"(0[1-9]|1[0-9]|2[0-9]|3[01])/(0[1-9]|1[012])/[0-9]{4}\" placeholder=\"dd/mm/yyyy\" required=\"\"></td>\r\n");
      out.write("                                    <td>BLOOD GROUP</td><td><input type=\"text\" name=\"blood\" placeholder=\"AB+/O/O+/O-\" pattern=\"[A-Za-o-+]{1,3}\"></td></tr>\r\n");
      out.write("                                <tr><td>NATIONALITY</td><td><input type=\"text\" required=\"\" name=\"nation\" placeholder=\"Indian\" pattern=\"[A-Za-z ]{3,10}\"></td>\r\n");
      out.write("                                    <td>GENDER</td><td><input type=\"text\" name=\"sex\" required=\"\" placeholder=\"m/f/t\" pattern=\"[f,m,t]{1,1}\"></td></tr>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                <h3 style=\"color:red;\">Userid is your phone number.</h3>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                                <!--    <tr>\r\n");
      out.write("                                    <td>GENDER</td><td><input type=\"radio\" name=\"id\" value=\"hr manager\">Male</td>\r\n");
      out.write("                                    <td><input type=\"radio\" name=\"id\" value=\"developer\">Female</td>\r\n");
      out.write("                                    <td><input type=\"radio\" name=\"id\" value=\"accountant\">Transgender</td>\r\n");
      out.write("                                </tr>  -->\r\n");
      out.write("                            </table> \r\n");
      out.write("                            <table>\r\n");
      out.write("                                <tr><td>HOUSE/FLAT NO.</td><td><input type=\"text\"  placeholder=\"\" name=\"house\" pattern=\"[123456][0-9]{2,3,4}\"></td>\r\n");
      out.write("                                    <td>STREET NAME</td><td><input type=\"text\"  placeholder=\"Street Name\" name=\"street\"  pattern=\"[A-Za-z ]{3,15}\" ></td></tr>\r\n");
      out.write("                                <tr><td>CITY/TOWN</td><td><input type=\"text\" name=\"city\" required=\"\" placeholder=\"Allahabad\"  pattern=\"[A-Za-z ]{3,20}\"></td>\r\n");
      out.write("                                    <td>STATE</td><td><input type=\"text\"  name=\"state\" required=\"\" placeholder=\"Like UP/Mp\"  pattern=\"[A-Za-z ]{2}\" ></td></tr>\r\n");
      out.write("                                <tr><td>PIN</td><td><input type=\"text\"  name=\"pin\" required=\"\" placeholder=\" Like 210427\" pattern=\"[2][0-9]{5}\" ></td>\r\n");
      out.write("                                    <td>EMAIL</td><td><input type=\"email \"  name=\"email\" placeholder=\"@gmail.com\"/></td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                            </table>\r\n");
      out.write("\r\n");
      out.write("                            <input type=\"submit\" name=\"sub\" value=\"submit\" id=\"botn\" />\t\r\n");
      out.write("                        </form>\t\r\n");
      out.write("                    </CENTER>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        ");

            if (request.getParameter("sub") != null) {
                String regpass, regname, regfname, regdes, regdob, regsex, regphone, regblood, regnat, regstreet, regcity, regstate, regemail;
                String dd = "0000-00-00";
                int sal = 0;
                int reghouseno, regpin, x;
                PreparedStatement pst;
                try {
                    regphone = request.getParameter("contact");
                    regpass = request.getParameter("pass");
                    regname = request.getParameter("name");
                    regfname = request.getParameter("fname");
                    regdes = request.getParameter("des");
                    regdob = request.getParameter("dob");
                    regsex = request.getParameter("sex");
                    regblood = request.getParameter("blood");
                    regnat = request.getParameter("nation");
                    reghouseno = Integer.parseInt(request.getParameter("house"));
                    regstreet = request.getParameter("street");
                    regcity = request.getParameter("city");
                    regstate = request.getParameter("state");
                    regpin = Integer.parseInt(request.getParameter("pin"));
                    regemail = request.getParameter("email");
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrmanage", "root", "");
                    pst = con.prepareStatement("insert into new_register(Phone,Passw,Name,Fname,Desi,Dob,Sex,Blood,National,Flat,Street,City,State,Pin,Email,Date,Salary)  values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    pst.setString(1, regphone);
                    pst.setString(2, regpass);
                    pst.setString(3, regname);
                    pst.setString(4, regfname);
                    pst.setString(5, regdes);
                    pst.setString(6, regdob);
                    pst.setString(7, regsex);
                    pst.setString(8, regblood);
                    pst.setString(9, regnat);
                    pst.setInt(10, reghouseno);
                    pst.setString(11, regstreet);
                    pst.setString(12, regcity);
                    pst.setString(13, regstate);
                    pst.setInt(14, regpin);
                    pst.setString(15, regemail);
                    pst.setString(16, dd);
                    pst.setInt(17, sal);
                    x = pst.executeUpdate();
                    if (x == 1) {
        
      out.write("<strong style=\"color: green; font-size: 50px; text-align: right; \">Employee is Register....</strong> \r\n");
      out.write("       \r\n");
      out.write("        ");

            }
        } catch (Exception xx) {
            out.println(xx.getMessage());
        
      out.write("<strong style=\"color: red; font-size: 50px;\">Alert!</strong> Record not inserted.....");

                    }
                }
            } else {
                response.sendRedirect("login.jsp");
            }
      out.write("\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
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
