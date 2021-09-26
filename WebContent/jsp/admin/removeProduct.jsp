<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
       <%@ include file="/html/Ladmin.jsp" %>
      <table cellspacing="20">
<tr>
    <%  int a=0;%>
    <c:forEach items="${l3}" var="l3"> 
      <%
        
           if(a<5)
           {
           %>
           <td> <img src="${l3.img_path}" height="200" width="200"/> <br>
             
              ${l3.name}  <br>
             
            <a href="remove?id=${l3.id}">remove </a><br>  
            </td>
          <%
               a++;
           }
           else{
                a=1;
                %>
               <tr>
                     <td> <img src="${l3.img_path}" height="200" width="200"/> <br>
            ${l3.name}  <br>
          
            <a href="remove?id=${l3.id}">remove </a><br>  </td>
            
                <%  }%>
</c:forEach>
</table>
</body>
</html>