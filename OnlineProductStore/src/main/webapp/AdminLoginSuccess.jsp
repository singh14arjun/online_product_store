<%@page import="online.product.store.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin login Success</title>
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
		AdminBean ab = (AdminBean) session.getAttribute("abean");
		out.println("Welcome Admin Mr/Mrs : " + ab.getfName() + "<br>");
		%>
	</h1>
	<div>
		<a href="AddProduct.html"><button>Add Product</button></a> <a
			href="viewallproduct"><button>View All Product</button></a> <a
			href="logout"><button>Logout</button></a>
	</div>
</body>
</html>