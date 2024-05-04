
<%@include file="connection.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Status</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            width: 100%;
            max-width: 800px;
            background-color: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 25px rgba(0, 0, 0, 0.1);
            text-align: center;
            background-image: url('https://static.vecteezy.com/system/resources/thumbnails/036/022/439/small_2x/ai-generated-negative-spacegraphy-unveils-singular-elegance-photo.jpg');
            background-size: cover;
            background-repeat: no-repeat;
        }

        h1 {
            color: #007BFF;
            font-size: 36px;
            margin-bottom: 40px;
            border-bottom: 3px solid #007BFF;
            padding-bottom: 15px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        button {
            background-color: #007BFF;
            color: #fff;
            border: none;
            padding: 15px 30px;
            margin-top: 40px;
            
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
            font-size: 20px;
            font-weight: 600;
            box-shadow: 0 6px 25px rgba(0, 0, 0, 0.15);
        }

        button:hover {
            background-color: #0056b3;
            transform: translateY(-3px);
        }

        button:active {
            transform: translateY(2px);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }

        form {
            display: inline-block;
            margin: 20px;
            margin-right:100px;
        }

        label {
            display: block;
            margin-bottom: 12px;
            font-size: 20px;
            font-weight: 600;
        }

        input[type="text"],
        input[type="password"],
        button {
            width: 100%;
            padding: 15px;
            margin-bottom: 25px;
            border-radius: 8px;
            border: 2px solid #007BFF;
            font-size: 18px;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #0056b3;
            outline: none;
        }

        .btn-group {
            margin-top: 40px;
        }

        .btn-group::after {
            content: "";
            display: table;
            clear: both;
        }

        .btn-group button {
            float: left;
            width: 45%;
            margin-right: 5%;
        }

        .btn-gap {
            margin-right: 20px;
        }

        /* Media Query for Responsive Design */
        @media (max-width: 768px) {
            .container {
                padding: 30px;
            }

            h1 {
                font-size: 32px;
                margin-bottom: 30px;
            }

            button {
                padding: 12px 25px;
                font-size: 18px;
            }

            input[type="text"],
            input[type="password"],
            button {
                padding: 12px;
                margin-bottom: 20px;
                font-size: 16px;
            }
        }

    </style>
</head>
<body>

<div class="container">
    <% 
    try {
        String n1 = request.getParameter("n1");
        String n2 = request.getParameter("n2");
        String n3 = request.getParameter("n3");
        String n4 = request.getParameter("n4");
        String n6 = request.getParameter("n6");
        
        PreparedStatement pst = conn.prepareStatement("insert into MINDBODYCHECK values(?,?,?,?,?)");
        pst.setString(1, n1);
        pst.setString(2, n3);
        pst.setString(3, n2);
        pst.setString(4, n4);
        pst.setString(5, n6);
        
        int t = pst.executeUpdate();
        
        PreparedStatement pst1 = conn.prepareStatement("insert into RESULT_MINDBODYCHECK values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        pst1.setString(1, n1);
        pst1.setString(2, "0");
        pst1.setString(3, "0");
        pst1.setString(4, "0");
        pst1.setString(5, "0");
        pst1.setString(6, "0");
        pst1.setString(7, "0");
        pst1.setString(8, "0");
        pst1.setString(9, "0");
        pst1.setString(10, "0");
        pst1.setString(11, "null");
        pst1.setString(12, "0");
        pst1.setString(13, "0");
        pst1.setString(14, "0");
        
        
        int t1 = pst1.executeUpdate();
        
        PreparedStatement pst2 = conn.prepareStatement("insert into MINDBODYCHECK_FEEDBACK values(?,?,?,?,?)");
        pst2.setString(1, n1);
        pst2.setString(2,n3);
        pst2.setString(3, "null");
        pst2.setString(4, "null");
        pst2.setString(5, "0");
        
        
        int t2 = pst2.executeUpdate();
        
        if (t > 0 && t1 > 0 && t2>0) { 
    %>
            <h1>Register Successfully</h1>
            <form action="Home.html">
                <button class="btn-gap">Home</button>
            </form>
            <form action="login.html">
                <button>Log in</button>
            </form>
    <% 
        } else {
            throw new Exception("Registration failed.");
        }
        
        conn.close();
    } catch (Exception e) { 
        e.printStackTrace();
    %>
        <h1>Register Unsuccessfully</h1>
        <form action="Home.html">
            <button>Home</button>
        </form>
    <% 
    } 
    %>
</div>

</body>
</html>
