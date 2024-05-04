<%@include file="connection.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Mental Health Question Result</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;700&display=swap" rel="stylesheet" />
    <style type="text/css">
        /* Base Styles */
        body {
            font-family: 'Rubik', sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
            line-height: 1.6;
        }

        .container {
            max-width: 1200px;
            margin: 50px auto;
            padding: 40px;
            background-color: #fff;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            border-radius: 15px;
        }

        h1, h2 {
            text-align: center;
            margin-bottom: 40px;
            color: #007bff;
        }

        h1 {
            color: #060182;
        }

        p {
            font-size: 20px;
            margin-bottom: 30px;
        }

        /* Flexbox Layout */
        .pidiv, .datadiv {
            display: flex;
            justify-content: space-between;
            gap: 100px;
            margin-top: 50px;
        }

        .programming-stats {
            display: flex;
            flex-direction: column;
            gap: 40px;
            align-items: center;
        }

        .chart-container {
            width: 340px;
            height: 340px;
            position: relative;
        }

        .chart-container canvas {
            border-radius: 50%;
        }

        .details ul {
            list-style-type: none;
            padding: 0;
            text-align: center;
        }

        .details ul {
            font-size: 20px;
            margin: 20px 0;
            text-transform: uppercase;
            background: linear-gradient(90deg, #4CAF50, #F44336);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .details .percentage {
            font-weight: bold;
            color: #e63946;
        }

        ol, ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .resultdiv2 {
            padding: 0;
            margin: 70px;
        }

        .resultdiv1 {
            padding: 0;
            margin-left: 70px;
        }

        .resultdiv3 {
            padding: 0;
            margin-left: 70px;
        }

        /* Go To Home button styles */
        .gotohome {
            text-align: center;
            margin-top: 50px; /* Space from the questionnaire */
        }

        .gotohome button {
            display: inline-block;
            padding: 15px 30px;
            font-size: 20px;
            font-weight: bold;
            color: #ffffff;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .gotohome button:hover {
            background-color: #0056b3;
        }

        .agree_score {
            color: #4CAF50;
        }

        .disagree_score {
            color: #F44336;
        }

        .neutral_score {
            color: #FFC107;
        }

        .result {
            color: ;
        }

        /* Responsive styles */
        @media (max-width: 768px) {
            .gotohome button {
                font-size: 18px;
            }
        }

        @media (max-width: 480px) {
            .gotohome button {
                font-size: 16px;
                padding: 12px 24px;
            }
        }

        /* Media Queries */
        @media screen and (max-width: 1024px) {
            .pidiv, .datadiv {
                flex-direction: column;
                gap: 60px;
            }

            .chart-container {
                width: 100%;
                height: auto;
            }
        }

        @media screen and (max-width: 768px) {
            .container {
                padding: 30px;
            }

            h1, h2 {
                font-size: 24px;
                margin-bottom: 30px;
            }

            p {
                font-size: 18px;
                margin-bottom: 20px;
            }

            .pidiv, .datadiv {
                margin-top: 60px;
                gap: 30px;
            }
        }

        @media screen and (max-width: 480px) {
            .container {
                padding: 20px;
            }

            h1, h2 {
                font-size: 20px;
                margin-bottom: 20px;
            }

            p {
                font-size: 16px;
                margin-bottom: 15px;
            }
        }

        /* Navbar styles */
        header {
            background-color: #333;
            color: #fff;
            padding: 0px 0;
            transition: background-color 0.3s ease;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .container-nav {
            max-width: 100%;
            margin: 0;
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
    String q1_sess = (String) session.getAttribute("q1_s");
    String q2_sess = (String) session.getAttribute("q2_s");
    String q3_sess = (String) session.getAttribute("q3_s");
    String q4_sess = (String) session.getAttribute("q4_s");
    String q5_sess = (String) session.getAttribute("q5_s");
    String q6_sess = (String) session.getAttribute("q6_s");
    String q7_sess = (String) session.getAttribute("q7_s");
    String q8_sess = (String) session.getAttribute("q8_s");
    String q9_sess = (String) session.getAttribute("q9_s");
    String q10_sess = (String) session.getAttribute("q10_s");
    String q11_sess = (String) session.getAttribute("q11_s");
    String q12_sess = (String) session.getAttribute("q12_s");
    String q13_sess = (String) session.getAttribute("q13_s");
    String q14_sess = (String) session.getAttribute("q14_s");
    String q15_sess = (String) session.getAttribute("q15_s");
    String q16_sess = (String) session.getAttribute("q16_s");
    String q17_sess = (String) session.getAttribute("q17_s");
    String q18_sess = (String) session.getAttribute("q18_s");
    String q19_sess = (String) session.getAttribute("q19_s");
    String q20_sess = (String) session.getAttribute("q20_s");

    String age_sess = (String) session.getAttribute("age");
    String height_sess = (String) session.getAttribute("height");
    String weight_sess = (String) session.getAttribute("weight");
    String gender_sess = (String) session.getAttribute("gender");

    String q21 = request.getParameter("q21");
    String q22 = request.getParameter("q22");
    String q23 = request.getParameter("q23");
    String q24 = request.getParameter("q24");
    String q25 = request.getParameter("q25");
    String q26 = request.getParameter("q26");
    String q27 = request.getParameter("q27");
    String q28 = request.getParameter("q28");
    String q29 = request.getParameter("q29");
    String q30 = request.getParameter("q30");

    String[] questions = {q21, q22, q23, q24, q25, q26, q27, q28, q29, q30};
    int agreeScore = 0, disagreeScore = 0,  resultScore = 0;

    for (String question : questions) {
        if ("agree".equalsIgnoreCase(question)) {
            agreeScore++;
            resultScore++;
        } else if ("disagree".equalsIgnoreCase(question)) {
            disagreeScore++;
            resultScore--;
        }
    }

    String[] questions1 = {q1_sess, q2_sess, q3_sess, q4_sess, q5_sess, q6_sess, q7_sess, q8_sess, q9_sess, q10_sess};
    int agreeScore1 = 0, disagreeScore1 = 0,  resultScore1 = 0;

    for (String question1 : questions1) {
        if ("agree".equalsIgnoreCase(question1)) {
            agreeScore1++;
            resultScore1++;
        } else if ("disagree".equalsIgnoreCase(question1)) {
            disagreeScore1++;
            resultScore1--;
        } 
    }

    String[] questions2 = {q11_sess, q12_sess, q13_sess, q14_sess, q15_sess, q16_sess, q17_sess, q18_sess, q19_sess, q20_sess};
    int agree = 0, disagree = 0, result = 0;

    for (String question2 : questions2) {
        if ("yes".equalsIgnoreCase(question2)) {
            agree++;
            result++;
        } else if ("no".equalsIgnoreCase(question2)) {
            disagree++;
            result--;
        }
    }
%>

<div class="container">
    <h1>Health Result</h1>

    
  
    <div class="pidiv">
    <div class="thirdpi">
            <h2 class="chart-heading">Mental Health Scores</h2>
             
             
            
        
            <div class="programming-stats">
                <div class="chart-container">
                    <canvas class="my-chart2"></canvas>
                </div>
                <div class="details">
                    <ul></ul>
                </div>
               
            </div>
            <div class="resultdiv1">
             <p class="agree_score">Good Score: <%= agreeScore1 * 10 %></p>
            
            <p class="disagree_score">Bad Score: <%= disagreeScore1 * 10 %></p>
            <p class="result">Result Score: <%= resultScore1 * 10 %></p>
            </div>
        </div>
       
        <div class="secondpi">
            <h2 class="chart-heading1">Physical Health Scores</h2>
           
           
       
            <div class="programming-stats1">
                <div class="chart-container1">
                    <canvas class="my-chart1"></canvas>
                </div>
                <div class="details1">
                    <ul></ul>
                </div>
            </div>
            
            <div class="resultdiv2">
             <p class="agree_score">Good Score: <%= agree * 10 %></p>
            <p class="disagree_score">Bad Score: <%= disagree * 10 %></p>
            <p class="result">Result Score: <%= result * 10 %></p>
            </div>
            <div class="gotohome">
            <form action="Main.jsp">
        <button>Go To Home</button>
      </form>
            </div>
        </div>
         <div class="firstpi">
            <h2 class="chart-heading">Social Health Scores</h2>
            
        
            
        
            <div class="programming-stats">
                <div class="chart-container">
                    <canvas class="my-chart"></canvas>
                </div>
                <div class="details">
                    <ul></ul>
                </div>
           
            </div>
             <div class="resultdiv3">
              <p class="agree_score">Good Score: <%= agreeScore * 10 %></p>
             
             <p class="disagree_score">Bad Score: <%= disagreeScore * 10 %></p>
            <p class="result">Result Score: <%= resultScore * 10 %></p>
            </div>
        </div>
        
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script type="text/javascript">
    // Mental Health Scores
   
    var agree = <%= agreeScore %>;
    var disagree = <%= disagreeScore %>;

    const chartData = {
        labels: ["Good", "Bad"],
        data: [agree, disagree],
        backgroundColor: ["#4CAF50", "#F44336"]
    };

    const myChart = document.querySelector(".my-chart");
    const ul = document.querySelector(".programming-stats .details ul");

    new Chart(myChart, {
        type: "pie",
        data: {
            labels: chartData.labels,
            datasets: [{
                label: "Mental Health Scores",
                data: chartData.data,
                backgroundColor: chartData.backgroundColor
            }]
        },
        options: {
            borderWidth: 10,
            borderRadius: 2,
            hoverBorderWidth: 0,
            plugins: {
                legend: {
                    display: false
                }
            }
        }
    });

    const populateUl = () => {
        chartData.labels.forEach((l, i) => {
            let li = document.createElement("li");
           
            ul.appendChild(li);
        });
    };

    populateUl();

    // Physical Health Scores
    var agree1 = <%= agree %>;
    var disagree1 = <%= disagree %>;

    const chartData1 = {
        labels: ["Agree", "Disagree"],
        data: [agree1, disagree1],
        backgroundColor: ["#4CAF50", "#F44336"]
    };

    const myChart1 = document.querySelector(".my-chart1");
    const ul1 = document.querySelector(".programming-stats1 .details1 ul");

    new Chart(myChart1, {
        type: "pie",
        data: {
            labels: chartData1.labels,
            datasets: [{
                label: "Physical Health Scores",
                data: chartData1.data,
                backgroundColor: chartData1.backgroundColor
            }]
        },
        options: {
            borderWidth: 10,
            borderRadius: 2,
            hoverBorderWidth: 0,
            plugins: {
                legend: {
                    display: false
                }
            }
        }
    });

    const populateUl1 = () => {
        chartData1.labels.forEach((l, i) => {
            let li1 = document.createElement("li");
            
            ul1.appendChild(li1);
        });
    };

    populateUl1();

    // Social Health Scores
    var agreeScore2 = <%= agreeScore1 %>;
    
    var disagreeScore2 = <%= disagreeScore1 %>;

    const chartData2 = {
        labels: ["Good", "Bad"],
        data: [agreeScore2, disagreeScore2],
        backgroundColor: ["#4CAF50","#F44336"]
    };

    const myChart2 = document.querySelector(".my-chart2");
    const ul2 = document.querySelector(".programming-stats .details ul");

    new Chart(myChart2, {
        type: "pie",
        data: {
            labels: chartData2.labels,
            datasets: [{
                label: "Social Health Scores",
                data: chartData2.data,
                backgroundColor: chartData2.backgroundColor
            }]
        },
        options: {
            borderWidth: 10,
            borderRadius: 2,
            hoverBorderWidth: 0,
            plugins: {
                legend: {
                    display: false
                }
            }
        }
    });

    const populateUl2 = () => {
        chartData2.labels.forEach((l, i) => {
            let li2 = document.createElement("li");
           
            ul2.appendChild(li2);
        });
    };

    populateUl2();
</script>
<%
    
    String user_uid = (String)(session.getAttribute("USER_UID"));
    
    int agreedata1 = agreeScore1 * 10;
   
    int disagreedata1 = disagreeScore1 * 10;
    int resultdata1 = resultScore1 * 10;
    int agreedata2 = agree * 10;
    int disagreedata2 = disagree * 10;
    int resultdata2 = result * 10;
    int agreedata3 = agreeScore * 10;
   
    int disagreedata3 = disagreeScore * 10;
    int resultdata3 = resultScore * 10;
    
    String dataAgreeM = String.valueOf(agreedata1);
    
    String dataDisagreeM = String.valueOf(disagreedata1);
    String dataResultM = String.valueOf(resultdata1);
    String dataAgreeP = String.valueOf(agreedata2);
    String dataDisagreeP = String.valueOf(disagreedata2);
    String dataResultP = String.valueOf(resultdata2);
    String dataAgreeS = String.valueOf(agreedata3);
   
    String dataDisagreeS = String.valueOf(disagreedata3);
    String dataResultS = String.valueOf(resultdata3);
    try{
    PreparedStatement pst2 = conn.prepareStatement("update RESULT_MINDBODYCHECK set MENTAL_RESULT_AGREE=?, MENTAL_RESULT_DISAGREE=?, MENTAL_RESULT_TOTAL=?, PHYSICAL_RESULT_AGREE=?,  PHYSICAL_RESULT_DISAGREE=?, PHYSICAL_RESULT_TOTAL=?, SOCIAL_RESULT_AGREE=?, SOCIAL_RESULT_DISAGREE=?, SOCIAL_RESULT_TOTAL=?,  GENDER=?, HEIGHT=?, WEIGHT=?, AGE=? where USER_UID=?");
    pst2.setString(1, dataAgreeM);
    pst2.setString(2, dataDisagreeS);
    pst2.setString(3, dataResultM);
    
    pst2.setString(4, dataAgreeP);
    pst2.setString(5, dataDisagreeP);
    
    pst2.setString(6, dataResultP);
    
    
    pst2.setString(7, dataAgreeS);
    pst2.setString(8, dataDisagreeS);
    pst2.setString(9, dataResultS);
    pst2.setString(10, gender_sess);
    pst2.setString(11, height_sess);
    pst2.setString(12, weight_sess);
    pst2.setString(13, age_sess);
   
    pst2.setString(14, user_uid);
    int t = pst2.executeUpdate();
    if(t>0)
    	out.println("");
    	conn.close();
    }catch(Exception e){out.println("");}
    %>
</body>
</html>
