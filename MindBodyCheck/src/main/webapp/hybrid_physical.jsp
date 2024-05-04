<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Physical Health Metrics</title>
 <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            font-size: 18px;
            line-height: 1.6;
            color: #333;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            color: #007bff;
            font-size: 36px;
            margin-bottom: 50px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        .form {
            max-width: 900px;
            margin: 0 auto;
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }

        ol {
            padding: 0;
        }

        .li {
            margin-bottom: 50px;
            list-style: none;
            font-size: 24px;
            border-bottom: 2px solid #e0e0e0;
            padding-bottom: 30px;
            position: relative;
        }

        p {
            margin-bottom: 20px;
            color: #555;
            font-weight: bold;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
            font-size: 18px;
        }

        input[type="radio"] {
            display: none;
        }

        label {
            cursor: pointer;
            display: inline-block;
            vertical-align: middle;
            position: relative;
            padding-left: 35px;
            margin-right: 20px;
            line-height: 1.8;
            transition: color 0.3s ease;
        }

        label::before {
            content: "";
            position: absolute;
            left: 0;
            top: 50%;
            transform: translateY(-50%);
            width: 24px;
            height: 24px;
            border: 2px solid #007bff;
            border-radius: 50%;
            background-color: #ffffff;
            transition: background-color 0.3s ease, transform 0.3s ease;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        input[type="radio"]:checked + label::before {
            background-color: #007bff;
            transform: translateY(-50%) scale(1.1);
        }

          /* Label text color based on radio button selection */
        input[type="radio"]:checked + label {
            color: #ffffff;
        }

        input[type="radio"]:checked[value="yes"] + label {
            color: #28a745; /* Green */
        }

        input[type="radio"]:checked[value="no"] + label {
            color: #dc3545; /* Red */
        }

       

        input[type="submit"] {
            display: block;
            width: 100%;
            padding: 18px;
            background-color: #007bff;
            color: #ffffff;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 26px;
            transition: background-color 0.3s ease;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        @media (max-width: 768px) {
            .form {
                padding: 30px;
            }

            .li {
                margin-bottom: 40px;
            }

            input[type="submit"] {
                font-size: 22px;
            }
        }

        @media (max-width: 480px) {
            h2 {
                font-size: 32px;
            }

            .form {
                padding: 20px;
            }

            .li {
                margin-bottom: 30px;
            }

            input[type="submit"] {
                font-size: 20px;
                padding: 15px;
            }
        }

        /* Custom select dropdown */
        select {
            appearance: none;
            background-color: #ffffff;
            border: 1px solid #ccc;
            padding: 12px 15px;
            font-size: 18px;
            border-radius: 8px;
            width: 100%;
            margin-bottom: 20px;
            cursor: pointer;
            transition: border-color 0.3s ease;
        }

        select:focus {
            outline: none;
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }

        /* Number input styles */
        input[type="number"] {
            appearance: none;
            background-color: #ffffff;
            border: 1px solid #ccc;
            padding: 12px 15px;
            font-size: 18px;
            border-radius: 8px;
            width: 100%;
            margin-bottom: 20px;
            transition: border-color 0.3s ease;
        }

        input[type="number"]:focus {
            outline: none;
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }

     /* Navbar styles */
        header {
            background-color: #333;
            color: #fff;
            padding: 8px 0;
            transition: background-color 0.3s ease;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .container-nav {
            max-width: 100%;
            margin: 0 auto;
            padding: 0 20px;
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            display: flex;
            align-items: center;
            text-decoration: none;
            color: #fff;
            transition: color 0.3s ease;
        }

        .logo img {
            width: 40px;
            border-radius: 50%;
            margin-right: 10px;
        }

        .logo h2 {
            font-size: 1.5rem;
            font-weight: 600;
        }

        .nav-links {
            list-style: none;
            display: flex;
            gap: 40px;
        }

        .nav-links a {
            color: #fff;
            text-decoration: none;
            font-size: 20px;
            font-weight: 500;
            transition: color 0.3s ease;
        }

        .nav-links a:hover {
            color: #19e8ff;
        }

        .login-btn {
            border: none;
            outline: none;
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            font-size: 1rem;
            font-weight: 500;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .login-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<header>
    <div class="container-nav">
        <nav class="navbar">
            <a href="#" class="logo">
                <img src="images/logo.jpg" alt="logo">
                <h2>Logo</h2>
            </a>
            <ul class="nav-links">
                <li><a href="Main.jsp">Home</a></li>
                <li><a href="about.html">About Us</a></li>
                <li><a href="help.html">Help</a></li>
            </ul>
            <form action="Home.html" method="post">
                <button class="login-btn">Log Out</button>
            </form>
        </nav>
    </div>
</header>
<%
String q1 = request.getParameter("q1");
session.setAttribute("q1_s",q1);
String q2 = request.getParameter("q2");
session.setAttribute("q2_s",q2);
String q3 = request.getParameter("q3");
session.setAttribute("q3_s",q3);
String q4 = request.getParameter("q4");
session.setAttribute("q4_s",q4);
String q5 = request.getParameter("q5");
session.setAttribute("q5_s",q5);
String q6 = request.getParameter("q6");
session.setAttribute("q6_s",q6);
String q7 = request.getParameter("q7");
session.setAttribute("q7_s",q7);
String q8 = request.getParameter("q8");
session.setAttribute("q8_s",q8);
String q9 = request.getParameter("q9");
session.setAttribute("q9_s",q9);
String q10 = request.getParameter("q10");
session.setAttribute("q10_s",q10);
%>
    <h2>Physical Health Questions</h2>
    <form class="form" action="hybrid_social.jsp" method="post">
    
        Gender:
        <select id="gender" name="gender">
            <option value="male">Male</option>
            <option value="female">Female</option>
            <option value="others">Others</option>
        </select><br><br>
    
        Age (years):
        <input type="number" id="age" name="age" required><br><br>
        
        Height (cm):
        <input type="number" id="height" name="height" required><br><br>
        
       Weight (kg):
        <input type="number" id="weight" name="weight" required><br><br>

        <ol>
            <!-- Question 1 -->
            <li class="li">
                <p>11. Do you have any known allergies to medications or other substances?</p>
                <input type="radio" name="q11" id="q1_yes" value="no" required>
                <label for="q1_yes">Yes</label>
                <input type="radio" name="q11" id="q1_no" value="yes" required>
                <label for="q1_no">No</label>
            </li>
            <!-- Question 2 -->
            <li class="li">
                <p>12. Are you currently taking any medications?</p>
                <input type="radio" name="q12" id="q2_yes" value="no" required>
                <label for="q2_yes">Yes</label>
                <input type="radio" name="q12" id="q2_no" value="yes" required>
                <label for="q2_no">No</label>
            </li>
            <!-- Question 3 -->
            <li class="li">
                <p>13. Have you ever been diagnosed with any chronic medical conditions, such as diabetes, hypertension, or asthma?</p>
                <input type="radio" name="q13" id="q3_yes" value="no" required>
                <label for="q3_yes">Yes</label>
                <input type="radio" name="q13" id="q3_no" value="yes" required>
                <label for="q3_no">No</label>
            </li>
            <!-- Question 4 -->
            <li class="li">
                <p>14. Do you have a family history of any significant medical conditions, such as heart disease, cancer, or diabetes?</p>
                <input type="radio" name="q14" id="q4_yes" value="no" required>
                <label for="q4_yes">Yes</label>
                <input type="radio" name="q14" id="q4_no" value="yes" required>
                <label for="q4_no">No</label>
            </li>
            <!-- Question 5 -->
            <li class="li">
                <p>15. Do you smoke, drink alcohol, or use recreational drugs?</p>
                <input type="radio" name="q15" id="q5_yes" value="no" required>
                <label for="q5_yes">Yes</label>
                <input type="radio" name="q15" id="q5_no" value="yes" required>
                <label for="q5_no">No</label>
            </li>
            <!-- Question 6 -->
            <li class="li">
                <p>16. Have you had any recent surgeries or hospitalizations?</p>
                <input type="radio" name="q16" id="q6_yes" value="no" required>
                <label for="q6_yes">Yes</label>
                <input type="radio" name="q16" id="q6_no" value="yes" required>
                <label for="q6_no">No</label>
            </li>
            <!-- Question 7 -->
            <li class="li">
                <p>17. Have you had any recent injuries or accidents?</p>
                <input type="radio" name="q17" id="q7_yes" value="no" required>
                <label for="q7_yes">Yes</label>
                <input type="radio" name="q17" id="q7_no" value="yes" required>
                <label for="q7_no">No</label>
            </li>
            <!-- Question 8 -->
            <li class="li">
                <p>18. Do you typically get 7-9 hours of sleep per night?</p>
                <input type="radio" name="q18" id="q8_yes" value="yes" required>
                <label for="q8_yes">Yes</label>
                <input type="radio" name="q18" id="q8_no" value="no" required>
                <label for="q8_no">No</label>
            </li>
            <!-- Question 9 -->
            <li class="li">
                <p>19. Do you engage in moderate to vigorous exercise for at least 30 minutes most days of the week?</p>
                <input type="radio" name="q19" id="q9_yes" value="yes" required>
                <label for="q9_yes">Yes</label>
                <input type="radio" name="q19" id="q9_no" value="no" required>
                <label for="q9_no">No</label>
            </li>
            <!-- Question 10 -->
            <li class="li">
                <p>20. Do you consume fast food or convenience foods more than twice a week?</p>
                <input type="radio" name="q20" id="q10_yes" value="no" required>
                <label for="q10_yes">Yes</label>
                <input type="radio" name="q20" id="q10_no" value="yes" required>
                <label for="q10_no">No</label>
            </li>
        </ol>
        <input type="submit" value="Next">
    </form>
</body>
</html>
