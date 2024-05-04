<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%! Connection conn=null;%>
<%
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
conn = 
DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Tarun@2003");
System.out.println("driver2 found");
}
catch(Exception e){System.out.println("driver2 not found");}
%>
</body>
</html>