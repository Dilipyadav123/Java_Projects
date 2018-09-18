<%@page import="java.util.*" %>
<html>
<head>
<title>Remove_to_cart</title>
</head>
<body>
<%
String items=request.getParameter("e");
ArrayList<String> list=(ArrayList)session.getAttribute("cart");
if(list!= null && !list.isEmpty())
{
	list.remove(items);
 response.sendRedirect("Viewcart.jsp");
}
 %>
</body>
</html>