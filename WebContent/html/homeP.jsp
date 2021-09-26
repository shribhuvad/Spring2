

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<link rel="stylesheet" href="style.css" type="text/css" media="all" />
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
			  <li><a href="myaction.do?action=view" >Home</a></li>
			    <li><a href="#">Deal of Day</a></li>
			    <li><a href="#">Discount</a></li>
			   <% session=request.getSession(false);
if(session.getAttribute("name")!=null){ %>
 	<li><a href="logout">logout</a></li>
<%
}else{%>
	<li><a href="login">Login</a></li>
                           <li><a href="registerPage">Register</a></li> 
	<%
}

%>
			  
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
