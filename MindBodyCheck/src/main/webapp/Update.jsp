<%@ page import="java.sql.*"%>
<%@include file="connection.jsp" %>
<html>
<head>
</head>
<body>
<form name="form1" method="post" action="edit.jsp">
<%try{
String uid=(String)session.getAttribute("USER_UID");
out.println("uid="+uid);
if(uid==null){
out.println("<h1>Log in First");
}
else{
PreparedStatement pst=conn.prepareStatement("update MINDBODYCHECK set name=?,address=? where USER_UID =?");
pst.setString(1,request.getParameter("n1"));
pst.setString(2,request.getParameter("n2"));
pst.setString(3,(String)session.getAttribute("USER_UID"));
int t=pst.executeUpdate();
if(t>0)
{
out.println("<h1>update succeessfully");
conn.close();
}
}
}
catch(Exception e){out.println("database connectivity error");}
%>
<p>
 <input type="submit" name="submit" value="Submit">
 </p>
 </form>
 </body></html>
