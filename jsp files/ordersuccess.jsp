<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
  background-image: url('resources/images/hback.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
</style>
</head>
<body>

<h1><p style="text-align:center">We have recieved your order!</p></h1>

<h1><p style="text-align:center">Thanks for shopping with FlairEnVogue</p></h1>

<script>  

function randomNumber(min, max) {  
    min = Math.ceil(min); 
    max = Math.floor(max); 
    return Math.floor(Math.random() * (max - min + 1)) + min; 
}  

document.write('<h1 style="text-align: center;">Your order number is:</h1>');
var x=randomNumber(100, 1000)
document.write("<h1  style='text-align: center'> <span style='font-weight:bold'>"+x+"</span></h3>\r\n"); 
</script>
<img src="resources/images/tick.jpg" style="width:15%;margin:auto;display:block">
<br>
<h1><p style="text-align:center">Please direct any questions you have to the store owner.</p></h1>
<br>
<br>
 <a href="logout.jsp"><input type="button" value="Logout" style="background-color:orange;color:white;width:200px;height:40px;font-size:17px;margin:auto;display:block"></a>
</body>
</html>