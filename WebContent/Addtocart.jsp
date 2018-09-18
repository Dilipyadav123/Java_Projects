<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="httpsession.jsp" %>
<%String pname=request.getParameter("pname"); 
out.println(pname);
ArrayList<String> list=(ArrayList)session.getAttribute("cart");
 if(list== null)
 {
	 list=new ArrayList<>();
	 session.setAttribute("cart",list);
 }
if(list!= null)
{
	list.add(pname);
}
%>
<a href="ProductView.jsp">Add more Product</a>
<a href="Viewcart.jsp">view Product</a>
</body>
</html>