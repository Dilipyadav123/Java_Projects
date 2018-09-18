<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="Jdbc.jsp"%>
<%
 String bname=request.getParameter("bname");
PreparedStatement pst=con.prepareStatement("select * from  product_details  where product_name=?");
pst.setString(1,bname);
ResultSet res=pst.executeQuery();
//out.println(bname);
if(res.next())
{
	String banme=res.getString(1);
	String bid=res.getString(2);
	String bvalid=res.getString(3);
	int bcategory=res.getInt(4);
	int b=res.getInt(5);
%>
   <table border="2px" width="400px">
<tr><th>Product_name</th> <td> <%=bname %>> </td></tr>
<tr><th>Product_id</th>  <td>  <%=bid %>> </td> </tr>
<tr><th>category</th> <td>  <%=bvalid %>>  </td> </tr>
<tr><th>Price</th>  <td> <%=bcategory %>></td>  </tr>
<tr><th>Quantity</th>  <td> <%=b %>></td>  </tr>
	
	
	</table>
 <a href="AdminHome.jsp">Homepage</a>
 <%} else { 
  out.print("product not available");
     
 }%>
</body>
</html>