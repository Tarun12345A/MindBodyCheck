<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Social Health Question</title>
    <style>
        /* Reset and global styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            font-size: 18px; 
            line-height: 1.6;
            color: #333;
        }
        

        /* Header styles */
        h1 {
            text-align: center;
            color: #007bff;
            font-size: 36px; 
            margin-bottom: 40px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        /* Form container styles */
        .form {
            max-width: 900px; 
            margin: 20px auto;
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* List styles */
        ol {
            padding: 0;
        }

        /* List item styles */
        .li {
            margin-bottom: 50px; 
            list-style: none;
            font-size: 26px; 
            border-bottom: 2px solid #e0e0e0;
            padding-bottom: 30px;
        }

        /* Question styles */
        p {
            margin-bottom: 20px; 
            color: #555;
            font-weight: bold;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
        }

        /* Radio button styles */
        input[type="radio"] {
            display: none; /* Hide the default radio button */
        }

        /* Custom radio button styles */
        label {
            cursor: pointer;
            display: inline-block;
            vertical-align: middle;
            position: relative;
            padding-left: 35px;
            margin-right: 20px;
            line-height: 1.8;
        }

        /* Radio button indicator styles */
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

        /* Checked radio button indicator styles */
        input[type="radio"]:checked + label::before {
            background-color: #007bff;
            transform: translateY(-50%) scale(1.1);
        }

        /* Label text color based on radio button selection */
        input[type="radio"]:checked + label {
            color: #ffffff;
        }

        input[type="radio"]:checked[value="agree"] + label {
            color: #28a745; /* Green */
        }

        input[type="radio"]:checked[value="disagree"] + label {
            color: #dc3545; /* Red */
        }

        input[type="radio"]:checked[value="neutral"] + label {
            color: #ffc107; /* Yellow */
        }

        /* Submit button styles */
        button[type="submit"] {
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

        /* Submit button hover effect */
        button[type="submit"]:hover {
            background-color: #0056b3;
        }

        /* Responsive styles */
        @media (max-width: 768px) {
            .form {
                padding: 30px;
            }

            .li {
                margin-bottom: 40px;
            }

            button[type="submit"] {
                font-size: 22px;
            }
        }

        @media (max-width: 480px) {
            h1 {
                font-size: 32px;
            }

            .form {
                padding: 20px;
            }

            .li {
                margin-bottom: 30px;
            }

            button[type="submit"] {
                font-size: 20px;
                padding: 15px;
            }
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


String age = request.getParameter("age");
session.setAttribute("age",age);
String height = request.getParameter("height");
session.setAttribute("height",height);
String weight = request.getParameter("weight");
session.setAttribute("weight",weight);
String gender = request.getParameter("gender");
session.setAttribute("gender",gender);



String q11 = request.getParameter("q11");
session.setAttribute("q11_s",q11);
String q12 = request.getParameter("q12");
session.setAttribute("q12_s",q12);
String q13 = request.getParameter("q13");
session.setAttribute("q13_s",q13);
String q14 = request.getParameter("q14");
session.setAttribute("q14_s",q14);
String q15 = request.getParameter("q15");
session.setAttribute("q15_s",q15);
String q16 = request.getParameter("q16");
session.setAttribute("q16_s",q16);
String q17 = request.getParameter("q17");
session.setAttribute("q17_s",q17);
String q18 = request.getParameter("q18");
session.setAttribute("q18_s",q18);
String q19 = request.getParameter("q19");
session.setAttribute("q19_s",q19);
String q20 = request.getParameter("q20");
session.setAttribute("q20_s",q20);
%>
    <!-- Header -->
    <h1>Social Health Questions</h1>

    <!-- Questionnaire form -->
    <form class="form" action="hybrid.jsp" method="post">
         <ol>
            <!-- Question 1 -->
            <li class="li">
                <p>1. I feel supported by my friends and family in times of need.</p>
                <input type="radio" name="q21" id="q1_agree" value="agree" required>
                <label for="q1_agree">Agree</label>
                
                <input type="radio" name="q21" id="q1_disagree" value="disagree" required>
                <label for="q1_disagree">Disagree</label>
            </li>
            <!-- Question 2 -->
            <li  class="li">
                <p>2. I have meaningful social interactions on a regular basis.</p>
                <input type="radio" name="q22" id="q2_agree" value="agree" required>
                <label for="q2_agree">Agree</label>
                
                <input type="radio" name="q22" id="q2_disagree" value="disagree" required>
                <label for="q2_disagree">Disagree</label>
            </li>
            <!-- Question 3 -->
            <li  class="li">
                <p>3. I feel a sense of belonging within my community.</p>
                <input type="radio" name="q23" id="q3_agree" value="agree" required>
                <label for="q3_agree">Agree</label>
                
                <input type="radio" name="q23" id="q3_disagree" value="disagree" required>
                <label for="q3_disagree">Disagree</label>
            </li>
            <!-- Question 4 -->
            <li  class="li">
                <p>4. Socializing with others improves my overall mood and well-being.</p>
                <input type="radio" name="q24" id="q4_agree" value="agree" required>
                <label for="q4_agree">Agree</label>
                
                <input type="radio" name="q24" id="q4_disagree" value="disagree" required>
                <label for="q4_disagree">Disagree</label>
            </li>
            <!-- Question 5 -->
            <li  class="li">
                <p>5. I feel comfortable expressing my emotions to those close to me.</p>
                <input type="radio" name="q25" id="q5_agree" value="agree" required>
                <label for="q5_agree">Agree</label>
                
                <input type="radio" name="q25" id="q5_disagree" value="disagree" required>
                <label for="q5_disagree">Disagree</label>
            </li>
            <!-- Question 6 -->
            <li  class="li">
                <p>6. Social interactions play a significant role in managing my stress levels.</p>
                <input type="radio" name="q26" id="q6_agree" value="agree" required>
                <label for="q6_agree">Agree</label>
                
                <input type="radio" name="q26" id="q6_disagree" value="disagree" required>
                <label for="q6_disagree">Disagree</label>
            </li>
            <!-- Question 7 -->
            <li  class="li">
                <p>7. I feel respected and valued by my peers.</p>
                <input type="radio" name="q27" id="q7_agree" value="agree" required>
                <label for="q7_agree">Agree</label>
              
                <input type="radio" name="q27" id="q7_disagree" value="disagree" required>
                <label for="q7_disagree">Disagree</label>
            </li>
            <!-- Question 8 -->
            <li  class="li">
                <p>8. Social isolation negatively impacts my mental and emotional well-being.</p>
                <input type="radio" name="q28" id="q8_agree" value="disagree" required>
                <label for="q8_agree">Agree</label>
                
                <input type="radio" name="q28" id="q8_disagree" value="agree" required>
                <label for="q8_disagree">Disagree</label>
            </li>
            <!-- Question 9 -->
            <li  class="li">
                <p>9. I actively engage in activities that promote social connection.</p>
                <input type="radio" name="q29" id="q9_agree" value="agree" required>
                <label for="q9_agree">Agree</label>
              
                <input type="radio" name="q29" id="q9_disagree" value="disagree" required>
                <label for="q9_disagree">Disagree</label>
            </li>
            <!-- Question 10 -->
            <li  class="li">
                <p>10. I feel a sense of fulfillment from my social interactions.</p>
                <input type="radio" name="q30" id="q10_agree" value="agree" required>
                <label for="q10_agree">Agree</label>
              
                <input type="radio" name="q30" id="q10_disagree" value="disagree" required>
                <label for="q10_disagree">Disagree</label>
            </li>
        </ol>
        <!-- Submit button -->
        <button type="submit">Submit</button>
    </form>
</body>
</html>

</body>
</html>