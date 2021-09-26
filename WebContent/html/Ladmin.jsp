<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<link rel="stylesheet" href="style.css" type="text/css" media="all" />
</head>
<body>
	   <%session=request.getSession(false);
         if(session.getAttribute("Adminname")==null){response.sendRedirect("myaction.action");} 
        %> 
<!-- Shell -->	

	
	<!-- Header -->	
	<div id="header">
		<h1 id="logo"><a href="#">shoparound</a></h1>	
		
		<!-- Cart -->
		
		<!-- End Cart -->
		
		<!-- Navigation -->
		<div id="navigation">
			<ul><li><a href="">Admin module</a></li> 
                              <li><a href="MyAction3.action">home</a></li> 
			  <li><a href="addproductpage">ADDpRODUCT</a></li> 
                          <li><a href="NewsletterPage">NewsLetter</a></li>
                          <li><a href="Orders.action">orders</a></li> 
                             <li><a href="logout">Logout</a></li> 
                        
                          
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
