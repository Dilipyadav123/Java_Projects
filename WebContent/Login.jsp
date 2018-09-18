<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body >
<div class="container" style="background-image:url(images/1.jpg);">
<h2> <a href="RegisterUser.jsp">New User Register Here</a> </h2>


<form action="AdminLoginConfirm.jsp">
<div align="center">
<h1>Admin Login</h1>
Admin name<input type="text" name="adminname"><br>
Password<input type="text" name="pass"><br>
<input type="submit" value="submit" ><br>
</div>
</form>

<form action="UserLogin.jsp">
<div align="center">
    <h2>User Login<h2>
Admin name<input type="text" name="uname"><br>
Password<input type="text" name="pass"><br>
<input type="submit" value="submit" ><br>
</div>
</form>

</div>
</body>
</html>