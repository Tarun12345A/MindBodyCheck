<%@ page import="java.sql.*"%>
<%@ include file="connection.jsp" %>
<%
String a=new String();
String USER_UID="";
try{
PreparedStatement pst=conn.prepareStatement("select * from MINDBODYCHECK where USER_UID=? ");

String uid=request.getParameter("name");
session.setAttribute("user_uid", uid);
pst.setString(1,uid);
ResultSet rs=pst.executeQuery();
if(rs.next()){
a=rs.getString(1);
%><!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Change Password</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        padding: 20px;
        margin: 0;
    }
    .container {
        max-width: 300px;
        margin: 50px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    input {
        width: calc(100% - 22px);
        padding: 10px;
        margin: 5px 0;
        border: 1px solid #ccc;
        border-radius: 3px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        margin-top: 10px;
        background-color: #16508e;
        color: #fff;
        border: none;
        cursor: pointer;
        padding: 10px 20px;
        border-radius: 3px;
    }
   
</style>
</head>
<body>

<div class="container">
    <form action="change_password.jsp" method="post">
        <label for="password">New password:</label><br>
        <input type="password" id="password" name="password" required><br><br>
        <input type="submit" value="Submit">
    </form>
</div>

</body>
</html>
<% }else{
	out.println("Invalid user id !.");
}
}catch(Exception e){out.println("error in database connectivity occured");}%>
