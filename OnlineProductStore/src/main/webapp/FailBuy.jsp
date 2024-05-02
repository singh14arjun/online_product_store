<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 style="color: white; background-color: red; padding: 10px; text-align: center;">
<%
String msg=(String)request.getAttribute("msg");
out.println(msg);
%>
</h1>
<%@include file="ClientViewAllProduct.jsp" %>
</body>
</html>