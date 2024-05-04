


<%@include file="connection.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Physical Health Metrics Result</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;700&display=swap" rel="stylesheet" />
    <style type="text/css">
        body {
            font-family: 'Rubik', sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1200px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h1, h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #007bff;
        }
         h1{
        color: #060182;
        }

        p {
            font-size: 18px;
            line-height: 1.6;
            margin-bottom: 15px;
        }

        .programming-stats {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 20px;
            margin-top: 40px;
        }

        .chart-container {
            width: 300px;
        }

        .details ul {
            list-style-type: none;
            padding: 0;
        }

        .details ul li {
            font-size: 18px;
            margin: 10px 0;
            text-transform: uppercase;
        }

        .details .percentage {
            font-weight: bold;
            color: #e63946;
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
.agree_score{
color: #4CAF50;
}
.disagree_score{
color: #F44336;
}
.neutral_score{
color: #FFC107;
}
.result{
color: ;
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


<div class="container">
    <h1>Physical Health Result</h1>

    <%
    String age = request.getParameter("age");
    String height2 = request.getParameter("height");
    String weight2 = request.getParameter("weight");
	String gender = request.getParameter("gender");

   
    String q1 = request.getParameter("q1");
    String q2 = request.getParameter("q2");
    String q3 = request.getParameter("q3");
    String q4 = request.getParameter("q4");
    String q5 = request.getParameter("q5");
    String q6 = request.getParameter("q6");
    String q7 = request.getParameter("q7");
    String q8 = request.getParameter("q8");
    String q9 = request.getParameter("q9");
    String q10 = request.getParameter("q10");

        String[] questions = {q1, q2, q3, q4, q5, q6, q7, q8, q9, q10};

        int agree = 0, disagree = 0, resultScore = 0;

        for (String question : questions) {
            if ("yes".equalsIgnoreCase(question)) {
                agree += 1;
                resultScore += 1;
            } else if ("no".equalsIgnoreCase(question)) {
                disagree += 1;
                resultScore -= 1;
            } 
        }
        
    %>

    <p class="agree_score">Good Score: <%= agree * 10 %></p>
    <p class="disagree_score">Bad Score: <%= disagree * 10 %></p>
    <p class="result">Result Score: <%= resultScore*10 %></p>

    <h2 class="chart-heading">Physical Health Scores</h2>

    <div class="programming-stats">
        <div class="chart-container">
            <canvas class="my-chart"></canvas>
        </div>

        <div class="details">
            <ul></ul>
        </div>
    </div>
     <div class="gotohome">
            <form action="Main.jsp">
        <button>Go To Home</button>
      </form>
      </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script type="text/javascript">
    
    var agree = <%= agree %>;
    var disagree = <%= disagree %>;

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
            li.innerHTML = l + ": <span class='percentage'>" + chartData.data[i] * 10 + "%</span>";
            ul.appendChild(li);
        });
    };

    populateUl();
</script>


<%
    
    String user_uid = (String)(session.getAttribute("USER_UID"));
    
    int agreedata = agree * 10;
    int disagreedata = disagree * 10;
    int resultdata = resultScore * 10;
    
    String dataAgreeP = String.valueOf(agreedata);
    String dataDisagreeP = String.valueOf(disagreedata);
    String dataResultP = String.valueOf(resultdata);
    try{
    PreparedStatement pst2 = conn.prepareStatement("update RESULT_MINDBODYCHECK set PHYSICAL_RESULT_AGREE=?,  PHYSICAL_RESULT_DISAGREE=?, PHYSICAL_RESULT_TOTAL=?, GENDER=?, HEIGHT=?, WEIGHT=?, AGE=? where USER_UID=?");
    pst2.setString(1, dataAgreeP);
    pst2.setString(2, dataDisagreeP);
    pst2.setString(3, dataResultP);
    pst2.setString(4, gender);
    pst2.setString(5, height2);
    pst2.setString(6, weight2);
    pst2.setString(7, age);
   
    pst2.setString(8, user_uid);
    int t = pst2.executeUpdate();
    if(t>0)
    	out.println("");
    	conn.close();
    }catch(Exception e){out.println("");}
    %>
</body>
</html>
