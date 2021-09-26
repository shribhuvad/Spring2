<%-- 
    Document   : error
    Created on : Aug 6, 2015, 12:05:12 PM
    Author     : Owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>shopingCart</title>
    </head>
    <body>
        
        
 <%@ include file="/html/cartHohe.jsp" %>  
    <div align="center">
        

     
         <br><h2> your shoping cart:</h2><br>
        <form:form>
             <table border="1">
         <tr>
                <td align="center">Image</td>
                <td align="center">Name</td>
                <td align="center">Price</td>
                 <td align="center">Total</td>
                <td align="center">Available stock</td>
                <td align="center">Quantity</td>
                <td></td>
                 <td align="center">delete</td>
            </tr>
               <c:forEach items="${cartShowL}" var="cartShowL"> 
         
                 <tr>
                    <td height="100" width="100" align="center"> <img src="${cartShowL.img_path}" height="100" width="100"/></td>
                       <td  height="100" width="100" align="center"> ${cartShowL.name} </td>
                     
                         <td  height="100" width="100" align="center"> ${cartShowL.price} </td>
                         <td  height="100" width="100" align="center"> ${cartShowL.total}</td>
                   
                       <td height="100" width="100" align="center">${cartShowL.quantity}</td>
                        <td height="100" width="100" align="center">${cartShowL.count}</td>
                          <td  height="100" width="100" align="center"> 
                           
   <a href="addQuantity?id= ${cartShowL.id}&price= ${cartShowL.price}&quantity=${cartShowL.quantity}"> <b>+</b></a>               
                               
                                 
 <a href="minusQuantity?id= ${cartShowL.id}&price= ${cartShowL.price}&quantity=${cartShowL.quantity}"> <b>-</b> </a></td>  
                          <td  height="100" width="100" align="center"> 
                          <a href="CartRemove?id= ${cartShowL.id}&price= ${cartShowL.price}&quantity=${cartShowL.quantity}">delete</a>  </td>  
                 </tr>
        </c:forEach>
            
        
        </table>
              
       
          <br>
          <div> <h2>total amount:${sessionScope.cartPrice} Rs</h2>
              <br> 
            
          </div>
         
 </form:form>
          <form:form action="/SpringProject/checkout">
       <input type="submit" value="checkout">
          </form:form>
          </div>
    </body>
</html>
