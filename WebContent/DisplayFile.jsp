<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.io.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Details</title>
</head>
<body>
<center>

<form action="SubmitData.jsp" method="post">
<table border="1" align="center">
<th>Fields</th><th>Data</th>
<%
   Enumeration paramNames = request.getParameterNames();

   while(paramNames.hasMoreElements())
   {
      String paramName = (String)paramNames.nextElement();
      out.print("<tr><td>" + paramName + "</td>\n");
      String paramValue = request.getParameter(paramName);
      out.println("<td> " + paramValue + "</td></tr>\n");
   }
%>
</table>
<input type="submit" value="Proceed"/>
</form>

<form action="FormFile.jsp" method="post">
<input type="submit" value="Edit">
</form>
</center>
</body>
</html>