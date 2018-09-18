<html>
<head>
<title>User Login page</title>
</head>
<body>
<%
String uname=request.getParameter("uname");
String pass=request.getParameter("pass");
%>
<%@ include file="Jdbc.jsp" %>
<%@ include file="httpsession.jsp" %>
<%=uname %>
<%=pass %>
<%
PreparedStatement pst=con.prepareStatement("select * from  user_details where username=? and pass=?");
pst.setString(1,uname);
pst.setString(2, pass);
ResultSet res=pst.executeQuery();
if(res.next())
{
	String  n=res.getString(3);
	session.setAttribute("uname",uname);
	session.setAttribute("uid", n);
	response.sendRedirect("UserLogin1.jsp");
}
else
{
	response.sendRedirect("loginfailed.jsp");
}
%>
%>
</body>
</html>