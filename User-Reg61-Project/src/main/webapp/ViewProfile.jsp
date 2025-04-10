<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="test.UserBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Profile Page</title>
<style type="text/css">
body {
	text-align: center;
	justify-content: center;
	align-items: center;
}

h3 {
	color: green;
	font-size: 18px;
}

h1 {
	color: yellow;
}

b {
	color: green;
	font-size: 20px;
}

#demo {
	font-size: 25px;
	border-style: dotted;
	border-color: red;
	color: blue;
	background-color: pink;
	border-radius: 15px;
}

i {
	color: purple;
	font-size: 25px;
}

#t {
	font-size: 30px;
	color: red;
	border-style: dotted;
	border-color: red;
	background-color: yellow;
	border-radius: 15px;
}

#i {
	font-size: 30px;
	color: red;
}

th {
	color: yellow;
	font-size: 25px;
	background-color: brown;
	border-style-bottom: solid;
}

table {
	text-shadow: 10px 12px 12px pink;
	box-shadow: 5px 7px 15px black;
	border-radius: 20px;
	margin-left: 150px;
}

div {
	margin-left: 350px;
	margin-top: 50px;
	background-color: rgb(212, 111, 133);
	width: 580px;
	box-shadow: 12px 15px 17px 15px;
	padding: 40px;
	
	border-radius: 20px;
}
</style>
</head>
<body bgcolor="skyblue">
	<div>
		<%
String fName= (String)request.getAttribute("name");
UserBean ub = (UserBean)application.getAttribute("ubean");
out.println("<b id='b'>This Page belongs to : </b><i id='i'>"+fName);
out.println("</i><h1 style='margin-left:60px; color:lime;'><u> Your Profile</u></h1>");

out.println("<b><table border='2'><th>Names<th>DBNames<tr><td>FirstName</b></td><td><i>"+ub.getfName()+"</i></td></tr><tr><td><b>LastName</b></td><td><i>"+ub.getlName()+
		"<i></td></tr> <tr><td><b>Address</b></td><td><b><i>"+ub.getAddr()+"</i></td></tr><tr><td><b>MailId</b></td><td><i>"+ub.getmId()
         +"</i></td></tr><tr><td><b>PhoneNo</b></td><td><i>"+ub.getPhNo()+"</i></td></tr><tr><td></td><td><a id='demo' href='edit'>Edit</a></td></tr></table>");
%> <br>
		&nbsp&nbsp&nbsp <a href="Logout" id='t'>Logout</a>
	</div>
</body>
</html>