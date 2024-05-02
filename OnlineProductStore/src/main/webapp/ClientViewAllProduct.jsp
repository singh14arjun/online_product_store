<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="online.product.store.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Product Store</title>
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

h2 {
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
h1 {
            display: flex;
            align-items: center;
            text-align: center;
            justify-content: center;
            background-color: #0d0e0e;
            border-radius: 5px;
            width: fit-content;
            margin: 0 auto; /* Centering the h1 */
            padding: 10px; /* Add padding for better appearance */
        }

        ul {
            display: flex;
            margin: 0;
            padding: 0;
        }

        ul li {
            letter-spacing: 10px;
            color: rgb(226, 237, 237);
            list-style: none;
            font-size: 4rem;
            animation: lighting 1s linear infinite;

        }

        @keyframes lighting {
            0% {
                color: rgb(226, 203, 221);
                text-shadow: none;
            }

            90% {
                color: rgb(27, 25, 28);
                text-shadow: none;
            }

            100% {
                text-shadow: 0 0 7px #ff7300, 0 0 50px rgb(255, 115, 0);
            }
        }

        ul li:nth-child(1) {
            animation-delay: 0;
        }

        ul li:nth-child(2) {
            animation-delay: 0.1s;
        }

        ul li:nth-child(3) {
            animation-delay: 0.2s;
        }

        ul li:nth-child(4) {
            animation-delay: 0.3s;
        }

        ul li:nth-child(5) {
            animation-delay: 0.4s;
        }

        ul li:nth-child(6) {
            animation-delay: 0.5s;
        }

        ul li:nth-child(7) {
            animation-delay: 0.6s;
        }

        ul li:nth-child(8) {
            animation-delay: 0.7s;
        }

        ul li:nth-child(9) {
            animation-delay: 0.8s;
        }

        ul li:nth-child(10) {
            animation-delay: 0.9s;
        }

        ul li:nth-child(11) {
            animation-delay: 1s;
        }

        ul li:nth-child(12) {
            animation-delay: 1.1s;
        }

        ul li:nth-child(13) {
            animation-delay: 1.2s;
        }

        ul li:nth-child(14) {
            animation-delay: 1.3s;
        }

        ul li:nth-child(15) {
            animation-delay: 1.4s;
        }

        ul li:nth-child(16) {
            animation-delay: 1.5s;
        }

        ul li:nth-child(17) {
            animation-delay: 1.6s;
        }

        ul li:nth-child(18) {
            animation-delay: 1.7s;
        }

        ul li:nth-child(19) {
            animation-delay: 1.9s;
        }

        ul li:nth-child(20) {
            animation-delay: 2s;
        }
    </style>
</head>

<body>
    <h1>
        <ul>
            <li>O</li>
            <li>N</li>
            <li>L</li>
            <li>I</li>
            <li>N</li>
            <li>E</li>
            <li>&nbsp</li>
            <li>P</li>
            <li>R</li>
            <li>O</li>
            <li>D</li>
            <li>U</li>
            <li>C</li>
            <li>T</li>
            <li>&nbsp</li>
            <li>S</li>
            <li>T</li>
            <li>O</li>
            <li>R</li>
            <li>E</li>
        </ul>
    </h1>

	<h2>

		<%
		ClientRegisterBean ab = (ClientRegisterBean) session.getAttribute("crbean");
		ArrayList<ProductBean> al = (ArrayList<ProductBean>) session.getAttribute("alist");
		out.println("Page belongs to Client : " + ab.getFname() + "<br>");
		%>
	</h2>

	<table class="table">
			<%
			if (al.size() == 0) {
				out.println("No Product Available...<br>");
			} else {
				Iterator<ProductBean> it = al.iterator();
				out.println(
				"<tr><th>Product Code </th> <th>Product Name </th> <th>Product Price </th> <th>Product Qty </th> <th> BUY </th></tr>");
				while (it.hasNext()) {
					ProductBean pb = (ProductBean) it.next();

					out.println(" <tr><td>" + pb.getProductcode() + "</td><td>  " + pb.getProductname() + "</td><td>  "
					+ pb.getProductprice() + "</td><td>  " + pb.getProductqty()
					+ "</td> <td style='background-color:red'> <a href='buy?pcode=" + pb.getProductcode()
					+ "'> Buy </a> </td>" + "</tr>");
				}
			}
			%>
		</table>
<div class="butt">
<a href="ClientLogout.jsp"><button class="btn">Logout</button></a>
</div>
</body>
</html>