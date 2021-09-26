<%-- 
    Document   : checkOutform
    Created on : Aug 21, 2015, 3:58:31 PM
    Author     : Owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>checkOutform</title>
    </head>
    <body>
     <%@ include file="/html/order.jsp" %>
         <%session=request.getSession(false);
        if(session.getAttribute("name")==null){response.sendRedirect("login");}
        %>
       
        <div style="height: 750px">
        <div  align="center">
           <br><br> <h2>Enter detail of delivery address</h2><br>
           <form>
         
            First name: <input type="text"><br> 
            Last name:  <input type="text"><br>
            address   :<input type="text"><br>
            city      :<input type="text"><br>
            district      :<input type="text"><br>
            Mobile number :<input type="text"><br>
     
               <input type="submit" value="place order" /> 
          </form>
          
    
              </div>
                 </div>
            <%@ include file="/html/footer.jsp" %>
    </body>
</html>
