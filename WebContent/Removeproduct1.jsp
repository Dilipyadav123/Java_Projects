<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="Jdbc.jsp" %>
<% 
 String bname=request.getParameter("bname");
 String bid=request.getParameter("bid");
PreparedStatement pst=con.prepareStatement("delete from  product_details  where product_name=? and product_id=?");
pst.setString(1,bname);
pst.setString(2,bid);
int res=pst.executeUpdate();
//out.println(bname);
if(res>0)
{
	out.println("product Deleted Succesfully");
%>
 <a href="AdminHome.jsp">!!Click Here for Admin Homepage</a>
 <%} else { 
  out.print("product not  Deleted");
     
 }%>
 <a href="AdminHome.jsp">!!Click Here for Admin Homepage</a>
</body>
</html>