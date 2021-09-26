<%-- 
    Document   : homeP
    Created on : Aug 19, 2015, 11:52:14 AM
    Author     : Owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />

	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />

	
</head>
<body>
       
       	
<!-- Shell -->	

	
	<!-- Header -->	
	<div id="header">
		<h1 id="logo"><a href="#">shoparound</a></h1>	
		
		<!-- Cart -->
		<div id="cart">
			<a href="Showcart" class="cart-link">Your Shopping Cart</a>
			<div class="cl">&nbsp;</div>
			<span>cart: ${sessionScope.cartLength}</span>
			&nbsp;&nbsp;
			<span>Cost: <strong>${sessionScope.cartPrice}</strong></span>
		</div>
		<!-- End Cart -->
		
		<!-- Navigation -->
		<div id="navigation">
			<ul>
			  <li><a href="indexPage" >Home</a></li>
			    
			</ul>
			</div>
		<!-- End Navigation -->
	</div>
	<!-- End Header -->
	
	<!-- Main -->
	
	<!-- End Main -->
	
	<!-- Side Full -->
	
	<!-- End Side Full -->
	
	<!-- Footer -->

	<!-- End Footer -->
	

<!-- End Shell -->
<!-- End Shell -->
</body>
</html>
