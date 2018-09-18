<html>
<head>
<title>Add product into Store</title>
</head>
<body>
<%@include file="Jdbc.jsp" %>
<%
String pname=request.getParameter("pname");
String pid=request.getParameter("pid");
String ptype=request.getParameter("ptype");
String p1=request.getParameter("price");
String q1=request.getParameter("quan");
int p=Integer.parseInt(p1);
int q=Integer.parseInt(q1);
%>
<%
PreparedStatement pst=con.prepareStatement("insert into product_details values(?,?,?,?,?)");
pst.setString(1,pname);
pst.setString(2, pid);
pst.setString(3, ptype);
pst.setInt(4, p);
pst.setInt(5,q);
int res=pst.executeUpdate();
if(res>0)
{
	response.sendRedirect("AdminHome.jsp");
}
else
{
	response.sendRedirect("loginfailed.jsp");
}
%>
</body>
</html>