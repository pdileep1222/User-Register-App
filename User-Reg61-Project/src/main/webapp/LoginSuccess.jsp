<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="test.UserBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logged page</title>
<style type="text/css">
  body {
         background-color:rgb(0,210,2);
        }
        h1{
           color:red;
        }
        a{
          font-size:20px;
        }
i{color:black;}        
</style>

</head>
<body>
<%
UserBean ub = (UserBean)application.getAttribute("ubean");
out.println("<h1>Welcome User :<i> "+ub.getfName()+"</i></h1><br>");
 %>
 <a href="view">ViewProfile</a>
 <a href="logout">Logout</a>
</body>
</html>