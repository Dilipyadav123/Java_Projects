
<html>
<head>
<title>Category Page</title>
</head>
<body>
<%@include file="Jdbc.jsp" %>
 <%
   Statement pst=con.createStatement();
   String s="select * from product_details" ;
   ResultSet rs=pst.executeQuery(s);
   while(rs.next())
   {
	   String c=rs.getString(3);
       out.println(c);
   }
   
 %> 
  <select>
              <option value="computers">Electronics</option>
      		  <option value="notebook">Notebooks</option>
   		      <option value="tablet">Tablets</option>
   		      <option value="smartphone">Smart Phones</option>
   
     
             	<table border="2px">    
                 	<select id="roomtypeid" name="roomtypeid">
                    <option  value="2L">Electronics</option>
                    <option  value="1L">NoteBooks </option>
                    <option  value="0L">SmartPhones </option>
                      </select>
                </table> 
                     <form action="Category1.jsp">
                    <tr><td>Enter Your Category</td><input type="text" name="roomname"></tr>
                    <tr><input type="submit" name="submit"></tr>
                      
                
                  
    </form>
  </select>
</body>
</html>