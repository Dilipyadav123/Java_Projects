<html>
<head>
</head>
<body>
<%@include file="httpsession.jsp" %>
<%
String name=(String)Session.getAttribute("adname");
%>
<h1 size="2" color="blue">Shopbychoice.com</h1>
<h2> Welcome   <%=name %>
<h3><a href="Addadmin.jsp">Add New Admin</a></h3> 
 <ul>
         <li>  <a href="">HomePage</a>  </li>
         <li>  <a href="Category.jsp">CateGory</a>  </li>
          <li>  <a href="ProductView.jsp?name=<%=name%>">View Product</a>  </li>
         <li> <a href="Addproduct.jsp">Add Product</a> </li>
         <li> <a href="Removeproduct.jsp">Remove Product</a> </li>
         <li> <a href="Searchproduct.jsp">Search Product</a> </li>
         <li> <a href="">Edit Product Details</a> </li>
         <li> <a href="LogOut.jsp">Log-Out</a> </li>

 </ul>

</body>
</html>