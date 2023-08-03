<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
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
<h3>
<%
session = request.getSession();
out.println("Hii , Your Avialable Balance is... <br><br>Balance = "+session.getAttribute("balance")+"/-");
%>
<br><br>
<a href="Home.jsp">GoBack</a>
</h3>
</div>
</body>
</html>