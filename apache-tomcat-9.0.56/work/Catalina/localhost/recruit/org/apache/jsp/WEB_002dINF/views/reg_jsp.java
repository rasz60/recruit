/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.56
 * Generated at: 2022-05-30 04:44:23 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class reg_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(6);
    _jspx_dependants.put("jar:file:/Users/sixt/git/recruit/README.md/apache-tomcat-9.0.56/wtpwebapps/recruit_project/WEB-INF/lib/jstl-1.2.jar!/META-INF/fmt.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1645234482345L));
    _jspx_dependants.put("jar:file:/Users/sixt/git/recruit/README.md/apache-tomcat-9.0.56/wtpwebapps/recruit_project/WEB-INF/lib/jstl-1.2.jar!/META-INF/x.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("jar:file:/Users/sixt/git/recruit/README.md/apache-tomcat-9.0.56/wtpwebapps/recruit_project/WEB-INF/lib/jstl-1.2.jar!/META-INF/sql.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("jar:file:/Users/sixt/git/recruit/README.md/apache-tomcat-9.0.56/wtpwebapps/recruit_project/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("jar:file:/Users/sixt/git/recruit/README.md/apache-tomcat-9.0.56/wtpwebapps/recruit_project/WEB-INF/lib/jstl-1.2.jar!/META-INF/fn.tld", Long.valueOf(1153352682000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP?????? ?????? GET, POST ?????? HEAD ??????????????? ???????????????. Jasper??? OPTIONS ????????? ?????? ???????????????.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, false, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("  \n");
      out.write(" \n");
      out.write("   \n");
      out.write("  \n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"ko\">\n");
      out.write("<head>\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css\">\n");
      out.write("<script src=\"https://kit.fontawesome.com/b4e02812b5.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js\"></script>\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("<title>recruit</title>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<section class=\"container border\">\n");
      out.write("\n");
      out.write("	<p class=\"mt-2 font-italic display-4 text-center\">Recruit</p>\n");
      out.write("	\n");
      out.write("	<hr />\n");
      out.write("	\n");
      out.write("	<form action=\"reg_info\" method=\"post\">\n");
      out.write("	\n");
      out.write("		<div class=\"form-group\">		\n");
      out.write("			<label for=\"cname\">?????????</label>\n");
      out.write("			<input type=\"text\" class=\"form-control\" id=\"cname\" name=\"cname\" required />\n");
      out.write("		</div>\n");
      out.write("		\n");
      out.write("		<div class=\"form-group\">		\n");
      out.write("			<label for=\"rlink\">??????</label>\n");
      out.write("			<input type=\"text\" class=\"form-control\" id=\"rlink\" name=\"rlink\" required />\n");
      out.write("		</div>\n");
      out.write("\n");
      out.write("		<div class=\"form-group\">		\n");
      out.write("			<label for=\"interview\" style=\"width: 100%\">????????????</label>\n");
      out.write("			<select name=\"interview\" id=\"interview\" class=\"custom-select\" style=\"width: 100%\">\n");
      out.write("				<option value=\"paper\">????????????</option>\n");
      out.write("				<option value=\"codingtest\">???????????????</option>\n");
      out.write("				<option value=\"1st\">1???</option>\n");
      out.write("				<option value=\"2nd\">2???</option>\n");
      out.write("				<option value=\"fuck\">?????????</option>\n");
      out.write("				<option value=\"final\">??????</option>\n");
      out.write("			</select>\n");
      out.write("		</div>\n");
      out.write("				\n");
      out.write("		<div class=\"form-group row mx-0\">\n");
      out.write("			<div class=\"col-6\">\n");
      out.write("				<label for=\"rdate\">?????????</label>\n");
      out.write("				<input type=\"date\" class=\"form-control\" id=\"rdate\" name=\"rdate\" required />\n");
      out.write("			</div>\n");
      out.write("		\n");
      out.write("			<div class=\"col-6\">\n");
      out.write("				<label for=\"enddate\">?????????</label>\n");
      out.write("				<input type=\"date\" class=\"form-control\" id=\"enddate\" name=\"enddate\" required />\n");
      out.write("			</div>\n");
      out.write("		</div>\n");
      out.write("\n");
      out.write("		<div class=\"form-group row mx-0\">		\n");
      out.write("			<div class=\"col-4\">\n");
      out.write("				<label for=\"rPosition\">?????????</label>\n");
      out.write("				<input type=\"text\" class=\"form-control\" id=\"rPosition\" name=\"rPosition\" />\n");
      out.write("			</div>\n");
      out.write("		\n");
      out.write("			<div class=\"col-4\">\n");
      out.write("				<label for=\"rLocation\">????????????</label>\n");
      out.write("				<input type=\"text\" class=\"form-control\" id=\"rLocation\" name=\"rLocation\" />\n");
      out.write("			</div>\n");
      out.write("			\n");
      out.write("			<div class=\"col-4\">\n");
      out.write("				<label for=\"pay\">????????????</label>\n");
      out.write("				<input type=\"number\" class=\"form-control\" id=\"pay\" name=\"pay\" />\n");
      out.write("			</div>\n");
      out.write("			\n");
      out.write("			<div class=\"col-12 mt-3\">\n");
      out.write("				<p class=\"mb-1\">????????????</p>\n");
      out.write("				<label>\n");
      out.write("					<input type=\"checkbox\" name=\"chk1\" class=\"mr-2\" value=\"open\" />&nbsp;??????\n");
      out.write("				</label>\n");
      out.write("				\n");
      out.write("				<label>\n");
      out.write("					<input type=\"checkbox\" name=\"chk2\" class=\"mr-2\" value=\"codingtest\" />&nbsp;???????????????\n");
      out.write("				</label>\n");
      out.write("				\n");
      out.write("				\n");
      out.write("				<label>\n");
      out.write("					<input type=\"checkbox\" name=\"chk3\" class=\"mr-2\" value=\"1st\" />&nbsp;1??? ??????\n");
      out.write("				</label>\n");
      out.write("				\n");
      out.write("				<label>\n");
      out.write("					<input type=\"checkbox\" name=\"chk4\" class=\"mr-2\" value=\"2nd\" />&nbsp;2??? ??????\n");
      out.write("				</label>\n");
      out.write("			</div>\n");
      out.write("			\n");
      out.write("			<div class=\"col-12\">\n");
      out.write("				<label for=\"reveiw\">?????? ??? ????????????</label>\n");
      out.write("				<textarea name=\"review\" id=\"reveiw\" rows=\"10\" class=\"form-control\"></textarea>\n");
      out.write("			</div>\n");
      out.write("		</div>\n");
      out.write("		\n");
      out.write("		<hr />\n");
      out.write("		\n");
      out.write("		<div class=\"form-group row mx-0\">\n");
      out.write("			<input type=\"submit\" id=\"complete\" class=\"btn btn-sm btn-primary col-6 border-white\" value=\"??????\"/>\n");
      out.write("			<a href=\"/recruit\" id=\"goback\" class=\"btn btn-sm btn-secondary col-6 border-white\">??????</a>			\n");
      out.write("		</div>\n");
      out.write("\n");
      out.write("	</form>\n");
      out.write("	\n");
      out.write("</section>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
