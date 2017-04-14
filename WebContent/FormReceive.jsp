<%@page import="org.apache.jasper.tagplugins.jstl.core.Param"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="bean.CheckFields" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Submit Resume</title>
</head>
<body>
<% 

CheckFields obj = new CheckFields();
String firstName = "";

if(request.getParameter("firstNameParam") != null)
{
  
	firstName = request.getParameter("firstNameParam");
  
}

//System.out.print(firstName);

//Basic Information
//String firstName = request.getParameter("firstNameParam");
String lastName = request.getParameter("lastNameParam");
String fatherName = request.getParameter("fathersNameParam");
String PhoneNo = request.getParameter("mobileNoParam");
String gender=request.getParameter("genderParam");
System.out.println(gender);

//Education
String exam1 = request.getParameter("examParam1");
String exam2 = request.getParameter("examParam2");
String exam3 = request.getParameter("examParam3");
String exam4 = request.getParameter("examParam4");

String yop1 = request.getParameter("dateParam1");
String yop2 = request.getParameter("dateParam2");
String yop3 = request.getParameter("dateParam3");
String yop4 = request.getParameter("dateParam4");

String marks1 = request.getParameter("marksParam1");
String marks2 = request.getParameter("marksParam2");
String marks3 = request.getParameter("marksParam3");
String marks4 = request.getParameter("marksParam4");

String percentage1 = request.getParameter("percentageParam1");
String percentage2 = request.getParameter("percentageParam2");
String percentage3 = request.getParameter("percentageParam3");
String percentage4 = request.getParameter("percentageParam4");

/* String address = request.getParameter("addrParam");
String state = request.getParameter("stateParam");
String college = request.getParameter("collegeParam"); */

String dob = request.getParameter("dobParam");
String email = request.getParameter("emailParam");
String github = request.getParameter("githubParam");
String linkedIn = request.getParameter("LinkedInParam");

String project1 = request.getParameter("projectNameParam1");
String desc1 = request.getParameter("description1");
String project2 = request.getParameter("projectNameParam2");
String desc2 = request.getParameter("description2");
String project3 = request.getParameter("projectNameParam3");
String desc3 = request.getParameter("description3");

String eca = request.getParameter("ecaParam");
String hobbies[]=request.getParameterValues("hobbiesParam");



boolean flag = true;

//Basic Information
if(firstName != "" && !obj.checkString(firstName))
{
	//out.println("First Name wrong i/p");
	flag = false;
	firstName = "";
}
if(!obj.checkString(lastName))
{
	//out.println("Last Name wrong i/p");
	flag = false;
	lastName = "";
}
if(!obj.checkString(fatherName))
{
	//out.println("Father's Name wrong i/p");
	flag = false;
	fatherName = "";
}
if( PhoneNo.length() != 10)
{
	//out.println("PhoneNo wrong i/p.");
	flag = false;
	PhoneNo = "";
}

//Education

//Check Year Of Passing
if(yop1 != "" && !obj.checkYOP(yop1))
{
	//out.println("yop1 wrong i/p.");
	flag = false;
	yop1 = "";
}
if(yop2 != "" &&!obj.checkYOP(yop2))
{
	//out.println("yop2 wrong i/p.");
	flag = false;
	yop2 = "";
}
if(yop3 != "" && !obj.checkYOP(yop3))
{
	//out.println("yop3 wrong i/p.");
	flag = false;
	yop3 = "";
}
if(yop4 != "" && !obj.checkYOP(yop4))
{
	//out.println("yop4 wrong i/p.");
	flag = false;
	yop4 = "";
}

//Check Marks
if(marks1 != "" && !obj.checkMarks(marks1))
{
	//out.println("marks1 wrong i/p.");
	flag = false;
	marks1 = "";
}
if(marks2 != "" && !obj.checkMarks(marks2) )
{
	//out.println("marks2 wrong i/p.");
	flag = false;
	marks2 = "";
}
if(marks3 != "" && !obj.checkMarks(marks3) )
{
	//out.println("marks3 wrong i/p.");
	flag = false;
	marks3 = "";
}
if(marks4 != "" && !obj.checkMarks(marks4)  )
{
	//out.println("marks4 wrong i/p.");
	flag = false;
	marks4 = "";
}

//Check Percentage
if(percentage1 != "" && !obj.checkPercentage(percentage1)  )
{
	//out.println("percentage1 wrong i/p.");
	flag = false;
	percentage1 = "";
}
if(percentage2 != "" && !obj.checkPercentage(percentage2))
{
	//out.println("percentage2 wrong i/p.");
	flag = false;
	percentage2 = "";
}
if(percentage3 != "" && !obj.checkPercentage(percentage3))
{
	//out.println("percentage3 wrong i/p.");
	flag = false;
	percentage3 = "";
}
if(percentage4 != "" && !obj.checkPercentage(percentage4))
{
	//out.println("percentage4 wrong i/p.");
	flag = false;
	percentage4 = "";
}
// Check Marks
if(exam1 != "" && !obj.checkString(exam1))
{
	out.println("exam1 wrong i/p");
	flag = false;
	exam1 = "";
}
if(exam2 != "" && !obj.checkString(exam2))
{
	//out.println("exam2 wrong i/p");
	flag = false;
	exam2 = "";
}
if(exam3 != "" && !obj.checkString(exam3))
{
	//out.println("exam3 wrong i/p");
	flag = false;
	exam3 = "";
}
if(exam4 != "" && !obj.checkString(exam4))
{
	//out.println("exam4 wrong i/p");
	flag = false;
	exam4 = "";
}

if(eca == "")
{
	flag = false;
}

String fileToBeForwarded="";
if(!flag)
{
	 fileToBeForwarded="FormFile.jsp";
}
else
{
	 //fileToBeForwarded="DisplayFile.jsp";
	 fileToBeForwarded="SubmitData.jsp";
}


%>

<jsp:forward page="<%=fileToBeForwarded %>">

<jsp:param  name="firstNameParam" value="<%=firstName %>"/>
<jsp:param  name="lastNameParam" value="<%=lastName %>"/>
<jsp:param  name="fathersNameParam" value="<%=fatherName %>"/>
<jsp:param  name="mobileNoParam" value="<%=PhoneNo %>"/>
<jsp:param  name="dobParam" value="<%=dob %>"/>
<jsp:param  name="genderParam" value="<%=gender %>"/>


<jsp:param  name="examParam1" value="<%=exam1 %>"/>
<jsp:param  name="examParam2" value="<%=exam2 %>"/>
<jsp:param  name="examParam3" value="<%=exam3 %>"/>
<jsp:param  name="examParam4" value="<%=exam4 %>"/>

<jsp:param  name="dateParam1" value="<%=yop1 %>"/>
<jsp:param  name="dateParam2" value="<%=yop2 %>"/>
<jsp:param  name="dateParam3" value="<%=yop3 %>"/>
<jsp:param  name="dateParam4" value="<%=yop4 %>"/>

<jsp:param  name="marksParam1" value="<%=marks1 %>"/>
<jsp:param  name="marksParam2" value="<%=marks2 %>"/>
<jsp:param  name="marksParam3" value="<%=marks3 %>"/>
<jsp:param  name="marksParam4" value="<%=marks4 %>"/>

<jsp:param  name="percentageParam1" value="<%=percentage1 %>"/>
<jsp:param  name="percentageParam2" value="<%=percentage2 %>"/>
<jsp:param  name="percentageParam3" value="<%=percentage3 %>"/>
<jsp:param  name="percentageParam4" value="<%=percentage4 %>"/>


<jsp:param  name="DobParam" value="<%=dob %>"/>
<jsp:param  name="emailParam" value="<%=email %>"/>
<jsp:param  name="githubParam" value="<%=github %>"/>
<jsp:param  name="LinkedInParam" value="<%=linkedIn %>"/>

<jsp:param  name="projectNameParam1" value="<%=project1 %>"/>
<jsp:param  name="description1" value="<%=desc1 %>"/>
<jsp:param  name="projectNameParam2" value="<%=project2 %>"/>
<jsp:param  name="description2" value="<%=desc2 %>"/>
<jsp:param  name="projectNameParam3" value="<%=project3 %>"/>
<jsp:param  name="description3" value="<%=desc3 %>"/>

<jsp:param  name="ecaParam" value="<%=eca %>"/>



</jsp:forward>

</body>
</html>