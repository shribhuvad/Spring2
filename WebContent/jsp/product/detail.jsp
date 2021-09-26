<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>detail page</title>
</head>
<body>
 <%@ include file="/html/homeP.jsp" %>
         
      <br>
         <div align="center"  >  
   <form:form >
               <table>
                      <tr> <td> <img src="${p2.img_path}" height="200" width="200"/></td> </tr>
                   <tr> <td>  name: ${p2.name}</td>  </tr>
                   <tr> <td> price: ${p2.price}</tr>
                   <tr> <td> discription: ${p2.discription}</td></tr>  
        </table>
        </form:form>
        </div>
</body>
</html>