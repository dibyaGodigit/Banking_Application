<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.center {
  margin: auto;
  width: 50%;
  border: 3px solid black;
  padding: 10px;
  text-align: center;
}
</style>
<body>
	<div class="center">
<h3 align="center"><%session = request.getSession();
out.println("Amount of "+session.getAttribute("amount"));
%> Transaction Success <br> 
With Transaction ID :
<%
session = request.getSession();
out.println(session.getAttribute("tid"));
%>
</h3>
<br><br>
<a href="Home.jsp">Redirect</a>
</div>

</body>
</html>