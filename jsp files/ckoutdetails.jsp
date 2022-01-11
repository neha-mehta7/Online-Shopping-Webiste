<%@ page import ="java.sql.*"%>
<%
  String user=request.getParameter("uname");
  String email=request.getParameter("email");
  String address=request.getParameter("add");
  String cityy=request.getParameter("city");
  String statee=request.getParameter("state");
  String zipp=request.getParameter("zip");
  
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","123456");
PreparedStatement ps=con.prepareStatement("insert into ck1 values(?,?,?,?,?,?)");

ps.setString(1,user);
ps.setString(2,email);
ps.setString(3,address);
ps.setString(4,cityy);
ps.setString(5,statee);
ps.setString(6,zipp);
int i=ps.executeUpdate();
if(i>0)
{
	response.sendRedirect("ordersuccess.jsp");
}
else
{
	response.sendRedirect("login.html");
	
}
%>