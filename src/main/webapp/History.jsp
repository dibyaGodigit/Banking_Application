<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
<h1 align="center">
Transaction History
</h1>
<br><br>
<div class="center">
<% 
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/banking";
	String user = "root";
	String pass = "2023";
	
	Connection con = DriverManager.getConnection(url, user,pass);
	PreparedStatement prep = con.prepareStatement("Select * from transferstatus");
	ResultSet r = prep.executeQuery();
	while(r.next()){
		out.println("<h3>"+"Custumer ID : "+r.getInt(1)+"\t"+"<br><br> </h3>");
		
		out.println("BankName : "+r.getString(2)+"<br>");
		out.println("Sender IFSC code : "+r.getString(3)+"<br>");
		out.println("Sender Account No : "+r.getInt(4)+"<br>");
		out.println("Reciver IFSC code : "+r.getString(5)+"<br>");
		out.println("Reciver Account : "+r.getInt(6)+"<br>");
		out.println("Amount : "+r.getInt(7)+"<br>");
		out.println("<br><br>");
	}
}catch(Exception e){
	e.printStackTrace();
}
%>
<br><br>
<a href="Home.jsp">Redirect</a>
</div>





</body>
</html>