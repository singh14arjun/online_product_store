<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="online.product.store.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buy Product</title>
<style>
body {
	background-image:
		url(https://www.tastingtable.com/img/gallery/13-most-affordable-grocery-stores-in-2023/l-intro-1679073677.jpg);
	background-repeat: no-repeat;
	background-size: cover;
}

.form {
	font-size: 30px;
	font-family: 'Poppins', sans-serif;
	font-weight: 700;
	display: flex;
	flex-direction: column;
	height: auto;
	width: fit-content;
	border: 1px solid black;
	align-items: center;
	margin: auto;
	margin-top: 100px;
	padding: 10px;
	background-color: rgba(0, 0, 0, 0.5);
	box-shadow: inset -5px -5px rgba(0, 0, 0, 0.5);
	border-radius: 25px;
}
.head{
	display: flex;
	flex-direction: column;
	height: auto;
	width: fit-content;
	border: 1px solid black;
	align-items: center;
	margin: auto;
	margin-top: 100px;
	padding: 10px;
	background-color: rgba(0, 0, 0, 0.5);
	box-shadow: inset -5px -5px rgba(0, 0, 0, 0.5);
	border-radius: 25px;
}
h1 {text-align: center;
    text-shadow: 3px 3px 3px grey;
	color: rgb(241, 135, 29);
	font-family: 'Poppins', sans-serif;
	font-weight: 700;
	font-size: 40px;
	}

input {
	width: 250px;
	margin: 10px;
	padding: 10px;
	border-radius: 15px;
	outline: none;
	border: none;
}

.btn {
	background-color: rgb(19, 87, 87);
	color: wheat;
	font-size: 1.5rem;
	cursor: pointer;
	box-shadow: 4px 4px 4px;
	transition: .4s ease;
}

.btn:hover {
	background-color: transparent;
}

.divi {
	font-family: 'Poppins', sans-serif;
	font-weight: 700;
	display: flex;
	flex-direction: row;
	height: auto;
	width: fit-content;
	border: 1px solid black;
	align-items: center;
	margin: auto;
	margin-top: 10px;
	padding: 10px;
	background-color: rgba(246, 123, 15, 0.8);
	box-shadow: inset -5px -5px rgba(0, 0, 0, 0.5);
	border-radius: 25px;
}

.butt {
	margin-left: 40px;
	margin-right: 40px;
	padding: 5px;
	border-radius: 5px;
	background-color: rgb(145, 74, 153);
	color: wheat;
	font-size: 1.5rem;
	cursor: pointer;
	box-shadow: 4px 4px 4px;
	transition: .4s ease;
}

button:hover {
	background-color: transparent;
}
</style>
</head>
<body>
<div class="head">
	<h1>Welcome to Online Product Store
	<%
	ProductBean pb = (ProductBean) session.getAttribute("pbean");
	out.println("Product details <br>");
	out.println("Your Product Name is :" + pb.getProductname() + "<br>");
	out.println("Your Product Price is :" + pb.getProductprice() + "<br>");
	
	%>
	</h1>
	</div>
	<form action="buyproduct" method="post" class="form" autocomplete="off">
		<input type="hidden" name="pcode"
					value=<%=pb.getProductcode()%>>
		<input type="hidden" name="pname"
					value=<%=pb.getProductname()%>>
			<input type="hidden" name="pprice"
					value=<%=pb.getProductprice()%>>
			<input type="hidden" name="pqty"
					value=<%=pb.getProductqty()%>>
			Enter Quantity of Product :<input type="number" name="qty"
					placeholder="Enter quantity of product " required>
<input type="submit" value="BUY PRODUCT" class="btn">
			
	</form>
	<div class="divi">
		<button class="butt">
			<a href="ClientViewAllProduct.jsp">BACK</a>
		</button>
	</div>
</body>
</html>