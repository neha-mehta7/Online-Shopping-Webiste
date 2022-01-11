<%@ page import ="java.sql.*"%>
<%
  String user=request.getParameter("uname");
  String pwd=request.getParameter("pass");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","123456");
PreparedStatement ps=con.prepareStatement("insert into manager3 values(?,?,?,?,?)");
ps.setString(1,fname);
ps.setString(2,lname);
ps.setString(3,email);
ps.setString(4,user);
ps.setString(5,pwd);

int i=ps.executeUpdate();
if(i>0)
{
	response.sendRedirect("choice.html");
}
else
{
	response.sendRedirect("login.html");
	
}
%>