<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file= "Jdbc.jsp"%>
<%@include file="httpsession.jsp" %>
<%
  String adminname=request.getParameter("adminname");
  String pass=request.getParameter("pass");
%>
 <%
    PreparedStatement pst=con.prepareStatement("select * from admin where name=? and pass=?"); 
    pst.setString(1,adminname);
    pst.setString(2,pass); 
    ResultSet rs=pst.executeQuery();
    if(rs.next()){
		int  n=rs.getInt(3);
		session.setAttribute("adname", adminname);
		session.setAttribute("uid", n);
		response.sendRedirect("AdminHome.jsp");
		
	}else{
//		request.setAttribute("error", "Invalid id/password");
		%>
		<jsp:forward page="Login.jsp"></jsp:forward>
	<%}
	%>

</body>
</html>