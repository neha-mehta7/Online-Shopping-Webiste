<%
session.setAttribute("userid",null);
session.invalidate();
response.sendRedirect("try.html");
%>