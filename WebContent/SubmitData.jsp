<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="bean.ResumeDataInsert" %>  

 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Data submitted</title>
</head>
<body>

<jsp:useBean id="obj" class="bean.DataFields"/>
<jsp:setProperty property="*" name="obj" /> 

<%

ResumeDataInsert.insert(obj);

out.println("Inserted into Database");
%>

<jsp:include page="Initial.html"/>
</body>
</html>