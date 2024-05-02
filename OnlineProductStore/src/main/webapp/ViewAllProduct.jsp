<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="online.product.store.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All Product Details</title>
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

.table {
	color: rgb(119, 169, 236);
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

.table th {
	font-size: 40px;
	color: rgb(241, 135, 29);
	font-family: 'Poppins', sans-serif;
	font-weight: 400;
	margin: 10px;
	padding: 10px;
}
.butt{
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
    display:flex;
    text-align: center;
    padding:5px;
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
	<h1 >

		<%
		AdminBean ab = (AdminBean) session.getAttribute("abean");
		ArrayList<ProductBean> al = (ArrayList<ProductBean>) session.getAttribute("alist");
		out.println("Page belongs to Admin : " + ab.getfName() + "<br>");
		%>
	</h1>

	<table class="table">
		<%
		if (al.size() == 0) {
			out.println("No Product Available...<br>");
		} else {
			Iterator<ProductBean> it = al.iterator();
			out.println(
			"<tr><th>Product Code </th> <th>Product Name </th> <th>Product Price </th> <th>Product Qty </th> <th> Edit </th><th> Delete </th></tr>");
			while (it.hasNext()) {
				ProductBean pb = (ProductBean) it.next();

				out.println(" <tr><td>" + pb.getProductcode() + "</td><td>  " + pb.getProductname() + "</td><td>  "
				+ pb.getProductprice() + "</td><td>  " + pb.getProductqty()
				+ "</td> <td style='background-color:red'> <a href='edit?pcode=" + pb.getProductcode()
				+ "'> Edit </a> </td>" + "<td style='background-color:red'> <a href='delete?pcode="
				+ pb.getProductcode() + "'> Delete </a> </td></tr>");
			}
		}
		%>
	</table>

	<div class="butt">
		<a href="AddProduct.html"><button class="btn"> Add Product</button></a> 
		<a href="logout"><button class="btn">Logout</button></a>
		<a href="AddProduct.html"><button class="btn">Back</button></a>
	</div>
</body>
</html>