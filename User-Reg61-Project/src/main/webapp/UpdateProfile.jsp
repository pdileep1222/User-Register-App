<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Updated page</title>
<style type="text/css">
   body
   {
      background-color:green;
      color:orange;
   }
   b{
     font-size:20px;
     color:yellow;
   }
   a{
      font-size:30px;
      color:pink;
   }
</style>
</head>
<body>
<%
String fname = (String)request.getAttribute("name");
String msg = (String)request.getAttribute("msg");
out.println("<b>Page belogs to : "+fname+"</b>");
out.println(msg);
%>
<a href="view">ViewProfile</a> &nbsp&nbsp
<a href="Logout">Logout</a>
</body>
</html>