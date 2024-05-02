<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="online.product.store.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Client login Success</title>
</head>
<style>
body {
	background-image:
url("https://previews.123rf.com/images/cihankyn/cihankyn2305/cihankyn230502270/205508812-shopping-cart-full-of-food-products-isolated-on-blue-background.jpg");
	background-attachment: fixed;
	background-repeat: no-repeat;
	background-size: cover;
	margin: 0;
	padding: 0;
	background-attachment: fixed;
}

h1 {
	width: fit-content;
	font-size: 50px;
	font-family: 'Poppins', sans-serif;
	font-weight: 500;
	color: aliceblue;
	text-align: center;
	align-items: center;
	text-shadow: 3px 3px 3px magenta;
	margin: auto;
	margin-top: 50px;
	padding: 20px;
	background-color: rgba(59, 105, 120, 0.5);
	box-shadow: inset -5px -5px rgba(96, 177, 168, 0.5);
	border-radius: 15px;
}

div {
	font-size: 30px;
	font-family: 'Poppins', sans-serif;
	font-weight: 700;
	display: flex;
	flex-direction: row;
	height: auto;
	width: fit-content;
	border: 1px solid rgb(109, 77, 77);
	align-items: center;
	margin: auto;
	margin-top: 100px;
	background-color: rgba(0, 0, 0, 0.5);
	box-shadow: inset -5px -5px rgba(0, 0, 0, 0.5);
	border-radius: 25px;
}

button {
	border-style: none;
	cursor: pointer;
	border-radius: 15px;
	font-size: 40px;
	margin: 20px;
	padding: 20px;
	background-color: rgb(94, 70, 70);
	text-shadow: 3px 3px 3px cadetblue;
	box-shadow: inset 4px 4px 4px rgb(157, 78, 157);
	transition: .4s ease;
}

button:hover {
	background-color: transparent;
	border-color: chartreuse;
}
</style>
<body>
	<h1>
		<%
		String msg = (String) request.getAttribute("msg");
		out.println(msg);
		ClientRegisterBean ub = (ClientRegisterBean) session.getAttribute("crbean");
		out.println("Welcome Mr/Mrs :" + ub.getFname() + "<br>");
		%>
	</h1>
	<div>
		<a href="clientviewallproduct"><button>ViewAllProducts</button></a> <a
			href="clientlogout"><button>Logout</button></a>
	</div>
</body>
</html>