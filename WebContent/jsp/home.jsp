
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="/html/homeP.jsp" %>
<% session=request.getSession(false);
if(session.getAttribute("name")!=null){ %>
  <div>
      <div align="right"> <h2>Welcome <i>${sessionScope.name}</i> </h2></div>
         
    <br>
    </div>
<%
}else{}

%>
<br>
  <select>
     <c:forEach var="item" items="${l2}">
          <option><c:out value="${item}"/></option>
     </c:forEach>
</select> 
<br>
      <table cellspacing="20" >
<tr>
    <%  int a=0;%>
    <c:forEach items="${l3}" var="l3"> 
      <%
        
           if(a<5)
           {
           %>
           <td> <img src="${l3.img_path}" height="200" width="200"/> <br>
             
              ${l3.name}  <br>
             
            <a href="detail?id=${l3.id}">detail  </a><br>  
            
<a href="cart?id= ${l3.id}&name= ${l3.name}&price= ${l3.price}&discount= ${l3.discount}&quantity=${l3.quantity}&img_path=${l3.img_path}">Add to cart</a><br></td>
           <%
               a++;
           }
           else{
                a=1;
                %>
               <tr>
                     <td> <img src="${l3.img_path}" height="200" width="200"/> <br>
            ${l3.name}  <br>
          
            <a href="detail?id=${l3.id}">detail  </a><br>  
            
<a href="cart?id= ${l3.id}&name= ${l3.name}&price= ${l3.price}&discount= ${l3.discount}&quantity=${l3.quantity}&img_path=${l3.img_path}">Add to cart</a><br></td>
                <%
                    }%>
</c:forEach>
</table>
</body>
</html>