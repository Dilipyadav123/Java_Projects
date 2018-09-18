<html>
<head>
<title>New_User_Register</title>
</head>
<body>
<%
String uname=request.getParameter("a");
String upass=request.getParameter("b");
String uid=request.getParameter("c");
String uadd=request.getParameter("d");
String umob=request.getParameter("e");
String uhint=request.getParameter("f");
String uans=request.getParameter("g");
%>
<%@ include file="Jdbc.jsp" %>
<%@ include file="httpsession.jsp" %>
<%

PreparedStatement pst=con.prepareStatement("insert into user_details values(?,?,?,?,?,?,?)");
pst.setString(1, uname);
pst.setString(2, upass);
pst.setString(3, uid);
pst.setString(4, uadd);
pst.setString(5, umob);
pst.setString(6, uhint);
pst.setString(7, uans);
int res=pst.executeUpdate();
if(res>0)
{
		
	out.println("User Registeration succesfull");
	%>
	<jsp:forward page="UserLogin1.jsp"/> 

<% } else {%>
	out.println("Registration Failed");
<% }%>
</body>
</html>