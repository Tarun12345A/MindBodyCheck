<%@ page import="java.sql.*"%>
<%@include file="connection.jsp" %>
<html>
<head>
</head>
<body>
<%String name=" ",uid=" ",add="",pass="";
Statement pst=null;
%>
<form name="form1" method="post" action="Update.jsp">
<%
try{
pst=conn.createStatement();
String a=request.getParameter("n1");
ResultSet rs=pst.executeQuery("Select * from MINDBODYCHECK where USER_UID='"+a+"'");
while(rs.next())
{
uid=rs.getString(1);
pass=rs.getString(3);
name=rs.getString(2);
add=rs.getString(4);
%>
<p>Name 
 <input type="text" name="n1" value=<%=name %>>
 </p>
 <p>
 <label></label>
 &nbsp;Address 
 <input type="text" name="n2" value=<%=add %>>
 </p>
<p> Uid
 <input type="text" name="n3" value=<%=uid %>>
 </p>
 <p>
 <label></label>
 &nbsp;Password 
 <input type="password" name="n4" value=<%=pass %>>
 </p>
<%}}catch(Exception e){out.println("error occured");}%>
<p>
 <input type="submit" name="submit" value="Submit">
 </p>
 </form>
 </body>
 </html>
