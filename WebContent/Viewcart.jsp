<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View cart</title>
</head>
<body>
<%@include file="httpsession.jsp" %>
<%
ArrayList<String> list=(ArrayList)session.getAttribute("cart");
 if(list!= null && !list.isEmpty())
 {%>
 <table>
 <%
  for(String e:list){%>
  <tr><th>product_name</th> <td><%=e%></td>
 <td> <a href="Removecart.jsp?e=<%=e%>">Remove_Products</a> </td> </tr>
      <%} %>
 </table>
<% }else{
	out.println("Empty cart");
    }%>
<a href="ProductView.jsp">Add more Product</a>
<a href="UserLogin1.jsp">User HomePage</a>
</body>
</html>