<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bean.*" %>  
<jsp:useBean id="obj" class="bean.ConnectionBean" scope="session"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<%
String user = request.getParameter("userID");
String password = request.getParameter("password");
obj.setUserID(user);
obj.setPassword(password);
if(obj.check())
{
	out.println("Succesfully logged in!");
	System.out.println(user);
	session.setAttribute("mailID", user);
%>
<br>
<br>
<br>
<br>
 <form action="Initial.jsp" method="post">
<input type="submit" value="Continue">
</form>
<!--  
<jsp:forward page="Initial.jsp">
<jsp:param  name="emailParam" value="<%=user %>"/>
</jsp:forward>-->
<%
}
else
{
	out.println("Incorrect match! Retry!");
		
}
%>
</body>
</html>