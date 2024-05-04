<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="connection.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%try{
PreparedStatement pst=conn.prepareStatement("update MINDBODYCHECK  set PASSWORD=? where USER_UID=?");
pst.setString(1,request.getParameter("password"));
pst.setString(2,(String)session.getAttribute("user_uid"));
int t=pst.executeUpdate();
if(t>0)
out.println("<h1>register successfully");
conn.close();
}catch(Exception e){out.println("<h1>register unsuccessfully");}
%>
</body>
</html>