<%-- 
    Document   : RegCust
    Created on : Aug 5, 2015, 4:09:00 PM
    Author     : Owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RegCust</title>
    </head>
    <body>
<%--          <%@ include file="../html/homeP.jsp" %> --%>
      <div style="height: 750px">
        <div  align="center">
            <br><br><h2>Register here</h2><br>
         <form:form action="/SpringProject/addproduct"  modelAttribute="cust" enctype="multipart/form-data" >
           
             name:  <form:input path="name"  /><br>
             price:  <form:input path="price" /><br>
             <form:input type="file" path="file"/>
          
           <input type="submit" value="Submit" />
      
               </form:form>
              </div>
          </div>
<%--           <%@ include file="../html/footer.jsp" %> --%>
    </body>
</html>
