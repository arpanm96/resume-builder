<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="bean.RegisterUser" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>

<%
String user = request.getParameter("userR");
String pass = request.getParameter("passR");
RegisterUser.insertUser(user,pass);
System.out.println("Register " + user + " , " + pass);
%>
<jsp:forward page="InitialPage.html"></jsp:forward>
</body>
</html>