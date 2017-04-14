<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type = "text/css" href = "FormFileCSS.css" media = " all" />
<meta charset="ISO-8859-1">
<title>Build a Resume</title>
</head>
<body>
<div id="Intro">
<h1>RESUME BUILDER</h1>
</div>

<form action="FormReceive.jsp" method="post">

<h2>BASIC INFORMATION</h2>

<div id="BasicInformation">
<table border="1" cellspacing="20" cellpadding="5" >
<tr>
	<th>First Name  	</th>
	<td><input type="text" name="firstNameParam"  value="${param.firstNameParam}" /></td>
	<th>Last Name </th>
	<td><input type="text" name="lastNameParam" value="${param.lastNameParam}" /></td>
</tr>
<tr>
	<th>Father's Name : </th>
	<td><input type="text" name="fathersNameParam" value="${param.fathersNameParam}" /></td>
</tr>
<tr>
	<th>Address : </th>
	<td><textarea placeholder="Enter address here..."  rows="3" cols="30" name="description" value="${param.description}" >
	</textarea></td>
</tr>
<tr>
	<th>Date Of Birth : </th>
	<td><input type="date" name="dobParam" value="${param.dobParam}" ></td>
</tr>

<tr>
   <th>Gender</th>
<td>
<%
	String s  = "";
    if(request.getParameter("genderParam") != null)
    	s = request.getParameter("genderParam");

	if(s == "" || s.equalsIgnoreCase("male")) 
	{ 
%>
    	<input type="radio" name="genderParam" value="male" checked/>Male 
    	<input type="radio" name="genderParam" value="female"/>Female
    	 <input type="radio" name="genderParam" value="other"/>Other
<%  } 
	else if(request.getParameter("genderParam").equalsIgnoreCase("female")) 
	{
%>
	    <input type="radio" name="genderParam" value="male" />Male 
    	<input type="radio" name="genderParam" value="female" checked/>Female 
    	<input type="radio" name="genderParam" value="other"/>Other
<% 
	}
	else
	{
%>
	    <input type="radio" name="genderParam" value="male" />Male 
    	<input type="radio" name="genderParam" value="female"/>Female 
    	<input type="radio" name="genderParam" value="other" checked/>Other
<%
	}
%>
</td>
</tr>

</table>
</div>
<h2>CONTACT INFORMATION</h2>
<div id="Contact">
<table border="1" cellspacing="20" cellpadding="5">
<tr>
	<th>Email : 		</th>
	<td><input type="email" name="emailParam" value="${param.emailParam}" ></td>

</tr>
<tr>
	<th>Mobile Number :   </th>
	<td><input type="number" name="mobileNoParam" value="${param.mobileNoParam}" /></td>
</tr>
<tr>
	<th>Github Link :  </th>
	<td> <input type="url" name="githubParam" value="${param.githubParam}"/></td>
</tr>
<tr>
	<th>LinkedIn Link : </th>
	<td><input type="url" name="LinkedInParam"  value="${param.LinkedInParam}"/></td> 
</tr>

</table>
</div>
<h2>EDUCATION</h2>
<div id="Education">
<table border="1" cellspacing="20" cellpadding="5">
<tr>
	<th>Examination </th>
	<th>Year Of Passing </th>
	<th>Marks Obtain </th>
	<th> Percentage </th>
</tr>
<tr>
	<td><input type="text" name="examParam1" value="${param.examParam1}" /></td>
	<td><input type="number" name="dateParam1" value="${param.dateParam1}" /></td>
	<td><input type="number" name="marksParam1" value="${param.marksParam1}" /></td>
	<td><input type="number" name="percentageParam1" value="${param.percentageParam1}" /></td>
</tr>
<tr>
	<td><input type="text" name="examParam2" value="${param.examParam2}" /></td>
	<td><input type="number" name="dateParam2" value="${param.dateParam2}" /></td>
	<td><input type="number" name="marksParam2" value="${param.marksParam2}" /></td>
	<td><input type="number" name="percentageParam2" value="${param.percentageParam2}" /></td>
</tr>
<tr>
	<td><input type="text" name="examParam3" value="${param.examParam3}" /></td>
	<td><input type="number" name="dateParam3" value="${param.dateParam3}" /></td>
	<td><input type="number" name="marksParam3" value="${param.marksParam3}" /></td>
	<td><input type="number" name="percentageParam3" value="${param.percentageParam3}" /></td>
</tr>
<tr>
	<td><input type="text" name="examParam4" value="${param.examParam4}" /></td>
	<td><input type="number" name="dateParam4" value="${param.dateParam4}" /></td>
	<td><input type="number" name="marksParam4" value="${param.marksParam4}" /></td>
	<td><input type="number" name="percentageParam4" value="${param.percentageParam4}" /></td>
</tr>

</table>

</div>

<h2>EXPERIENCE</h2>

<div id="Experience">
<table border="1" cellspacing="20" cellpadding="5">
<tr>
	<th>Project Name </th>
	<td> <input type="text" name="projectNameParam1" value="${param.projectNameParam1}" /></td>
</tr>
<tr>
	<th>Description </th>
	<td><textarea placeholder="Enter project description here... " rows="3" cols="30" name="description1" value="${param.description1}" ></textarea></td>
</tr>
<tr>
	<th>Project Name </th>
	<td> <input type="text" name="projectNameParam2" value="${param.projectNameParam2}" /></td>
</tr>
<tr>
	<th>Description </th>
	<td><textarea placeholder="Enter project description here... " rows="3" cols="30" name="description2" value="${param.description2}" ></textarea></td>
</tr>
<tr>
	<th>Project Name </th>
	<td> <input type="text" name="projectNameParam3"  value="${param.projectNameParam3}" /></td>
</tr>
<tr>
	<th>Description </th>
	<td><textarea placeholder="Enter project description here... " rows="3" cols="30" name="description3" value="${param.description3}" ></textarea></td>
</tr>
</table>
</div>

</div>
<h2>Activites</h2>
<div id="ECA">
<table border="1" cellspacing="20" cellpadding="5">
<tr>
	<th>Extra Curricular Activites :   </th>
	<td><input type="number" name="ecaParam" value="${param.ecaParam}" /></td>
</tr>
<tr>
	<th>Hobbies :  </th>
	<td>
<%
	String h1  = "";
    if(request.getParameter("hobbiesParam1") != null)
    	h1 = request.getParameter("hobbiesParam1");
	//System.out.println(h1);
	String h2  = "";
    if(request.getParameter("hobbiesParam2") != null)
    	h2 = request.getParameter("hobbiesParam2");
	//System.out.println(h2);
	String h3  = "";
    if(request.getParameter("hobbiesParam3") != null)
    	h3 = request.getParameter("hobbiesParam3");
	//System.out.println(h3);
	
	if(h1 == "" )//|| 
	{ 
%>
    	<input type="checkbox" name="hobbiesParam1" value="sports" />Sports
<% 
	}
	if(h2 == "")
	{
%>
    	<input type="checkbox" name="hobbiesParam2" value="gaming" />Gaming
<% }
	if(h3 == "")
	{
%>

    	<input type="checkbox" name="hobbiesParam3" value="reading"/>Reading
<%  } 

	if( h1.equalsIgnoreCase("sports"))
{
%>
		<input type="checkbox" name="hobbiesParam1" value="sports" checked/>Sports
<%
}
	if(h2.equalsIgnoreCase("gaming")) 
	{
%>
	    <input type="checkbox" name="hobbiesParam2" value="gaming" checked/>Gaming
<% 
	}
	if(h3.equalsIgnoreCase("reading"))
	{
%>
		<input type="checkbox" name="hobbiesParam3" value="reading" checked/>Reading
<%
	}
%>
</td>
</tr>

</table>
</div>

<div>
<center><input type="submit" /></center>
</div> 

</form>

</body>
</html>