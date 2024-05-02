<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="online.product.store.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

.form {
	color: rgb(217, 197, 13);
	font-size: 30px;
	font-family: 'Poppins', sans-serif;
	font-weight: 700;
	display: flex;
	flex-direction: column;
	height: auto;
	width: fit-content;
	border: 5px solid rgb(213, 37, 152);
	align-items: center;
	margin: auto;
	margin-top: 100px;
	background-color: rgba(0, 0, 0, .8);
	box-shadow: inset -5px -5px 5px rgba(241, 16, 238, 0.5);
	border-radius: 25px;
}

h1 {
	text-align: center;
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

.form .btn {
	background-color: rgb(19, 87, 87);
	color: rgb(164, 152, 129);
	font-size: 1.5rem;
	cursor: pointer;
	box-shadow: 4px 4px 4px;
	transition: .4s ease;
}

.form .btn:hover {
	background-color: transparent;
}

button {
	background-color: rgb(19, 87, 87);
	color: rgb(250, 245, 245);
	font-size: 20px;
	cursor: pointer;
}
</style>
<body>
	<h1>
		<%
		AdminBean ab = (AdminBean) session.getAttribute("abean");
		ArrayList<ProductBean> al = (ArrayList<ProductBean>) session.getAttribute("alist");
		String pCode = request.getParameter("pcode");
		out.println("Page Belongs to Admin :" + ab.getfName() + "<br>");

		Iterator<ProductBean> it = al.iterator();
		while (it.hasNext()) {
			ProductBean pb = (ProductBean) it.next();
			if (pCode.equals(pb.getProductcode())) {
		%>
	</h1>
	<form action="update" method="post" class="form">
		<table>

			<tr>
				<td></td>
				<td><input type="hidden" name="pcode"
					value=<%=pb.getProductcode()%>></td>
			</tr>
			<tr>
				<td>Product Name :</td>
				<td><input type="text" name="pname"
					value=<%=pb.getProductname()%> required></td>
			</tr>
			<tr>
				<td>Product Price :</td>
				<td><input type="text" name="pprice"
					value=<%=pb.getProductprice()%> required></td>
			</tr>
			<tr>
				<td>Product Qty :</td>
				<td><input type="text" name="pqty"
					value=<%=pb.getProductqty()%> required></td>
			</tr>
			<tr>
				<td><a href="AddProduct.html"><button class="btn">Back</button></a></td>
				<td><button class="btn"><input type="submit" value="UpdateProduct"></button></td>
			</tr>

		</table>
	</form>

	<%
	}

	}
	%>
</body>
</html>