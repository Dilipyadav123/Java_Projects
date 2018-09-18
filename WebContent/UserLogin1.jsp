<html>
<head>
<title>User Home page</title>
</head>
<body>
<%@ include file="httpsession.jsp" %>
<% 
String uname=(String)session.getAttribute("uname");
%>
<h1 size="2" color="blue">Shopbychoice.com</h1>
<h2> Welcome   <%=uname %> 
 <ul>
         <li>  <a href="ProductView.jsp">View Product</a>  </li>
         <li> <a href="changepass.jsp">Change Password</a> </li>
         <li> <a href="Viewcart.jsp">View MyOrder</a> </li>
         <li> <a href="">Forget pass</a> </li>
         <li> <a href="LogOut.jsp">Log-Out</a> </li>

 </ul>

</body>
</html>