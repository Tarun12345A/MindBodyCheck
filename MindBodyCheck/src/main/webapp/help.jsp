<%@include file="connection.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
        String email = request.getParameter("Email");
        String message = request.getParameter("Message");
        String feedback = request.getParameter("feedback");
        String user_uid = (String)(session.getAttribute("USER_UID"));
        try{
            PreparedStatement pst2 = conn.prepareStatement("update MINDBODYCHECK_FEEDBACK set EMAIL=?, FEEDBACK_EXPERIENCE=?, FEEDBACK_RATING=? where USER_UID=?");
            pst2.setString(1, email);
            
            pst2.setString(2, message);
            pst2.setString(3, feedback);
           
            pst2.setString(4, user_uid);
            int t = pst2.executeUpdate();
            if(t>0)
            	out.println("");
            	conn.close();
            }catch(Exception e){out.println("");}
            %>
        
        h1
</body>
</html>