<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 style="background-color: green; font-size: 30px; text-align: center;">
<%
String str=(String)request.getAttribute("msg");
out.println(str);

%>
</h1>
<%@include file="ClientLogin.html" %>
</body>
</html>