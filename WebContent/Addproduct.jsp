<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Addproduct1.jsp">
<table border='1px'>
<tr><th>Product_name</th> <td> <input type="text" name="pname"> </td></tr>
<tr><th>Product_id</th>  <td>  <input type="text" name="pid"> </td> </tr>
<tr><th>category</th> <td>  <input type="text" name="ptype">  </td> </tr>
<tr><th>Price</th>  <td> <input type="text" name="price"></td>  </tr>
<tr><th>Quantity</th>  <td> <input type="text" name="quan"></td>  </tr>
</table>
<input type="submit" value="submit">

</form>
</body>
</html>