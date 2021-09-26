<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <%@ include file="/html/Ladmin.jsp" %>
  <br>
  <br>
  <br>
   <div  align="center">
   <form:form action="/SpringProject/addproduct"  modelAttribute="cust" enctype="multipart/form-data" >
           
             name:  <form:input path="name"  /><br>
             price:  <form:input path="price" /><br>
             discription:<form:input path="discription" /><br>
             quantity:<form:input path="quantity" /><br>
             discount:<form:input path="discount" /><br>
            
              
             <form:input type="file" path="file"/>
          
           <input type="submit" value="Submit" />
      
               </form:form>
</div>
</body>
</html>