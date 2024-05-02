<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="online.product.store.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Deleted</title>
</head>
<style>
body {
	background-image:
		url("https://assets-global.website-files.com/641d54fdcc011edcca41c54a/6481af75469f9bcb5e623867_how%20to%20save%20money%20on%20groceries%20in%20india.jpg");
	background-attachment: fixed;
	background-repeat: no-repeat;
	background-size: cover;
	margin: 0;
	padding: 0;
	background-attachment: fixed;
}

h1 {
	text-align: center;
	text-shadow: 3px 3px 3px grey;
	color: rgb(241, 135, 29);
	font-family: 'Poppins', sans-serif;
	font-weight: 700;
	font-size: 40px;
}

.butt {
	display: flex;
	flex-direction: row;
	height: auto;
	width: fit-content;
	text-align: center;
	align-items: center;
	margin: auto;
	margin-top: 50px;
	background-color: rgba(200, 105, 184, 0.8);
	box-shadow: inset -5px -5px 5px rgba(241, 16, 238, 0.5);
	border-radius: 25px;
}

.btn {
	width: fit-content;
	border-radius: 5px;
	margin: 10px;
	margin-top: 20px;
	margin-left: 50px;
	margin-right: 50px;
	display: flex;
	text-align: center;
	padding: 5px;
	flex-direction: row;
	background-color: rgb(138, 195, 195);
	color: rgb(185, 138, 53);
	font-size: 2rem;
	cursor: pointer;
	box-shadow: 4px 4px 4px;
	transition: .4s ease;
	border-style: none;
}

.btn:hover {
	background-color: transparent;
}
</style>
<body>
<h1>
<%
AdminBean ab=(AdminBean)session.getAttribute("abean");
String msg=(String)request.getAttribute("msg");
out.println("Page belongs to Admin :"+ab.getfName()+"<br>");
out.println(msg);
%>
</h1>
<div class="butt">
		<a href="AddProduct.html"><button class="btn">Add
				Product</button></a> <a href="viewallproduct"><button class="btn">View
				All Product</button></a> <a href="logout"><button class="btn">Logout</button></a>
	</div></body>
</html>