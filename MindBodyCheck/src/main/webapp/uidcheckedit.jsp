<%@ page import="java.sql.*"%>
<%@ include file="connection.jsp" %>
<%
String a=new String();
String b=new String();
Statement pst1=null;
ResultSet rs1=null;
String muid1="";
try{
PreparedStatement pst=conn.prepareStatement("select * from user_details where muid=? ");

String uid=request.getParameter("text1");
pst.setString(1,uid);
ResultSet rs=pst.executeQuery();
if(rs.next()){
out.println("h1 "+rs.getString(3));
a=rs.getString(1);
b=request.getParameter("text2");
rs.close();
 pst1=conn.createStatement();
rs1=pst1.executeQuery("select muid,password from user_details where muid='"+a+"'");
if(rs1.next()){
if(b.equals(rs1.getString("password")))
 {
 out.println("match");
 muid1=rs1.getString("muid");
 session.setAttribute("muidd",muid1);%>
<a href=edit.jsp>edit profile</a>
 <% }
 else {%>
 <a href=login.html>give correct password</a>
<%
 }}}
 else{
%>
<a href=rstep1.jsp>Please register</a>
<%}
}catch(Exception e){out.println("error in database connectivity occured");}%>