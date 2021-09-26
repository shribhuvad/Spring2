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
         <%@ include file="/html/homeP.jsp" %>
      <div style="height: 750px">
        <div  align="center">
            <br><br><h2>Register here</h2><br>
         <form:form action="/spring2/register"  modelAttribute="cust">
           
            name:  <form:input path="name"  id="name"/><br>
           phone:  <form:input path="phoneNo"  /><br>
         emailId:  <form:input path="emailId" /><br>
       password:   <form:password path="password" /><br>
       Confirmpassword:   <form:password path="Confirmpassword"  /><br>
          
           <input type="submit" value="Submit" />
      
               </form:form>
              </div>
          </div>
<%--           <%@ include file="../html/footer.jsp" %> --%>
    </body>
</html>
