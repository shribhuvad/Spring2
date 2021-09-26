<%-- 
    Document   : jsp
    Created on : Aug 4, 2015, 7:16:07 PM
    Author     : Owner
--%>

<%-- <%@page contentType="text/html" pageEncoding="UTF-8"%> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cust_login</title>
    </head>
    <body>
         <%@ include file="/html/homeP.jsp" %>
            <div style="height: 750px">
        <div  align="center">
            <br>
            <br>
        <h2>login page</h2><br>
    
 <form:form id="loginForm" method="post" action="/spring2/loginCust" modelAttribute="cust">

user name:<form:input path="emailId"/>
<br/><br/>
password:  <form:input path="password"/><br>
 <input type="submit" value="login" />


 </form:form>
 <br>
<%--  <img   src="${pageContext.request.contextPath}/upload/leo.jpg" /><br> --%>

      <img  src="<c:url value="upload/leo.jpg"/>"/>
    <img  src="upload/leo.jpg"/>
 <form action="/spring2/registerPage">
    <input type="submit" value="register here">
</form>
<br>
 <form action="/SpringProject/addproductpage">
    <input type="submit" value="add here">
</form>

<%--        <form action="/SpringProject/loginCust" method="post"> --%>
<%--             <s name="emailId" value="enter your email" label="userid"/> --%>
<%--             <s:input path="emailId" value="emailId" label="emailId"/> --%>
    
<!--            C:\Projects\SpringProject\WebContent\WEB-INF\jsp -->
            <p>
<!-- user name:<input type="text" name="emailId"/> -->
<!-- <br/><br/> -->
<!-- password:<input type="text" name="password"/> -->
</p>
<%--             <s:password name="password" value="" label="password"/> --%>
<%--             <s:submit value="login"/> --%>
<%--       <input type="submit"></form> --%>
            </div>
                 </div>
<%--              <%@ include file="../html/footer.jsp" %>  --%>
    </body>
    
  
</html>
