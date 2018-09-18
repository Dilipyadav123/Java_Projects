<html>
<head>
<title>Product Are</title>
</head>
<body>
<%@ include file="Jdbc.jsp" %>
<%@ include file="httpsession.jsp" %>
<%String uname=(String)session.getAttribute("uname");
  String name=(String)session.getAttribute("adname");%>
<h1><tr>WelCome  <%=name %></tr> </h1>
<% if(name==null){%>
<a href="UserLogin1.jsp">Homepage</a>
<%}else{ %>
    <a href="AdminHome.jsp">Homepage</a>
<%} %>
<%
Statement pst=con.createStatement();
String q="select * from product_details";
ResultSet res=pst.executeQuery(q);
while(res.next())
{
	String pname=res.getString(1);
	String pid=res.getString(2);
	String pcat=res.getString(3);
	int price=res.getInt(4);
	int quantity=res.getInt(5);
	%>
	
	<table border="1px">
      <tr><th>ProductName</th> <td><%=pname %></td></tr>
      <tr><th>ProductId</th> <td><%=pid %></td></tr>
      <tr><th>Category</th> <td><%=pcat %></td></tr>
      <tr><th>price</th> <td><%=price %></td></tr>
      <tr><th>Quantity</th> <td><%=quantity %></td></tr><hr>
	  </table>
	  <%if(name!=null){ %>
	  <%} else{%>
	  <a href="Addtocart.jsp?pname=<%=pname%>">Add To Cart</a> 
<% } }%>
</body>
</html>