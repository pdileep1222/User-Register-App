<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding=
    "UTF-8"
    import="test.UserBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Details Page</title>
<style>
body
{
   color:cyan;
   background-color:pink;
   text-align: center;
   justify-content: center;
   
}
 h1 {
       color:blue;
       font-size:20px; 
    }
    input
   {
     color:green;
     border-radius:20px;
     border-color:red;
     border-style:dotted;
     background-color:yellow;
     font-size:20px;
   }
   label
    {
       font-size:20px;
       color:black;
       font-style:italic;
    }
    b{
      font-size:25px;
      color:red;
    }
    i
    { 
       color:orange;
       font-size:30px;
    }
</style>
</head>
<body>
<%
String fName = (String)request.getAttribute("name");
UserBean ub = (UserBean)application.getAttribute("ubean");
out.println("<b>Page Belongs to </b>:<i>"+fName+"</i><br><br>");
%>
<h1>Enter the Update Details</h1>
<form action="update" method="post">

<label>LastName</label><input type="text" name="lname" value=<%=ub.getlName() %>><br>
&nbsp&nbsp&nbsp
<label>Address:</label>&nbsp&nbsp<input type="text" name="addr" required value=<%=ub.getAddr() %>><br>
&nbsp&nbsp&nbsp
<label>MailId:</label>&nbsp&nbsp&nbsp <input type="email" name="mid" required value=<%=ub.getmId() %>><br>
&nbsp&nbsp&nbsp
<label>PhoneNo:</label><input type="tel" name="phno" pattern="[0-9]{10}" required value=<%=ub.getPhNo() %>><br><br>
&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp<input type="submit" value="UpdateProfile">
</form>
</body>
</html>
