<%@ page import="java.sql.*"%>
<%@ include file="connection.jsp" %>
<%
String a=new String();
String b=new String();
Statement pst1=null;
ResultSet rs1=null;
String USER_UID="";
String NAME="";
try{
PreparedStatement pst=conn.prepareStatement("select * from MINDBODYCHECK where USER_UID=? ");

String uid=request.getParameter("text1");
pst.setString(1,uid);
ResultSet rs=pst.executeQuery();
if(rs.next()){
a=rs.getString(1);
b=request.getParameter("text2");
rs.close();
 pst1=conn.createStatement();
rs1=pst1.executeQuery("select USER_UID,PASSWORD,NAME from MINDBODYCHECK where USER_UID='"+a+"'");
if(rs1.next()){
if(b.equals(rs1.getString("PASSWORD")))
 {
 out.println("match");
 USER_UID=rs1.getString("USER_UID");
 session.setAttribute("USER_UID",USER_UID);
 NAME=rs1.getString("NAME");
 session.setAttribute("NAME",NAME);
response.sendRedirect("Main.jsp");%>
 <% }
 else {%>
 <a href=login.html>give correct password</a>
<%
 }}}
 else{
%>
<a href=register.html>Please register</a>
<%}
}catch(Exception e){out.println("error in database connectivity occured");}%>