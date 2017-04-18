<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.io.*,java.util.*,java.sql.*,bean.ResumeDataInsert" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Details</title>
</head>
<body>
<center>

<form action="Initial.jsp" method="post">
<table border="1" align="center">
            <tr>
               <th>First Name</th>
               <th>Last Name</th>
               <th>Email</th>
               <th>Address</th>
               <th>Phone No</th>
           </tr>
<%

String mailID = request.getParameter("search");
//ResultSet rs = ResumeDataInsert.retrieve(mailID);


String s = (String)session.getAttribute("mailID");
ResultSet rs = ResumeDataInsert.retrieve(s);

boolean flag = true;

if(!rs.next()) {
    out.println("Resume data for this email address not found in database! Try Again! ");
    flag = false;
} 
else
{
	do
	{
		System.out.println("Retrieved successfully");

   
%>
<tr>
               <td> <%= rs.getString(1) %> </td>
               <td> <%= rs.getString(2) %> </td>
               <td> <%= rs.getString("email") %> </td>
               <td> <%= rs.getString("address") %> </td>
               <td> <%= rs.getString("mobile") %> </td>
</tr>
<br>
<% 
				
	}while(rs.next()); 
}
rs.close();
%>
</table>
<input type="submit" value="Back"/>
</form>

</center>
</body>
</html>