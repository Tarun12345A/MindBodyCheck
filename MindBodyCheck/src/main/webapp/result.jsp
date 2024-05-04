<%@ page import="java.sql.*"%>
<%@include file="connection.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Health Metrics</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;700&display=swap" rel="stylesheet" />
    <style type="text/css">
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Rubik", sans-serif; 
}

body {
    margin: 0;
    padding: 0;
    font-size: 16px;
    line-height: 1.6;
    background-color: #f9f9f9;
    overflow-x: hidden;
}

  header {
        background-color: #333;
        color: #fff;
        padding: 20px 0;
        transition: background-color 0.3s ease;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .container {
        max-width: 100%;
        margin: 0 ;
        padding: 0;
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
         margin-left:30px;
    }

    .logo h2 {
        font-size: 1.5rem;
        font-weight: 600;
    }

    .nav-links {
        list-style: none;
        display: flex;
        gap: 40px;
        padding-left:220px;
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
        margin-right:30px;
        font-size: 1rem;
        font-weight: 500;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .login-btn:hover {
        background-color: #0056b3;
    }
    .logout_name{
    display:flex;
    gap:100px;
    }
    .user_uid{
   
    
    font-style: oblique;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    font-weight:bolder;   }
    .user_name{
    margin-top:5px;
    font-size:18px ;
    font-style: oblique;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    font-weight:bolder;   }
.chart-heading {
    color: #023047;
    text-transform: uppercase;
    font-size: 28px;
    text-align: center;
    margin-bottom: 40px;
    margin-top: 40px;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
}

.health-stats-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 40px;
    margin-top: 40px;
}

.health-stats {
    flex: 1;
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 60px;
    box-shadow: 0 4px 12px -2px rgba(0, 0, 0, 0.3);
    border-radius: 20px;
    padding: 20px 40px;
    color: #023047;
    transition: transform 0.3s, box-shadow 0.3s;
    background: linear-gradient(45deg, #ffffff, #f0f0f0);
    overflow: hidden;
}

.health-stats:hover {
    transform: scale(1.05);
    box-shadow: 0 6px 20px -7px rgba(0, 0, 0, 0.3);
}

.chart-container {
    position: relative;
    width: 220px;
    height: 220px;
}

.chart-center-text {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    font-size: 22px;
    font-weight: bold;
    color: #171a18;
    text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
}

.details {
    list-style: none;
    padding: 0;
    text-align: center;
}

.details li {
    font-size: 18px;
    margin: 12px 0;
    text-transform: uppercase;
    background-color: rgba(255, 255, 255, 0.8);
    padding: 8px 12px;
    border-radius: 15px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    transition: background-color 0.3s ease;
}

.details li:hover {
    background-color: rgba(255, 255, 255, 0.95);
}

.details .percentage {
    font-weight: 700;
    color: #e63946;
}

canvas {
    border-radius: 50%;
}

@media (max-width: 768px) {
    .health-stats {
        flex: 0 0 100%;
        margin-bottom: 20px;
    }

    .navbar {
        padding: 20px;
    }

    .nav-links {
        flex-direction: column;
        gap: 20px;
        padding-left: 0;
    }

    .nav-links a {
        font-size: 18px;
    }

    .logout_name {
        flex-direction: column;
        gap: 10px;
    }
}

/* Sticky Navbar */
        .navbar.sticky {
            position: fixed;
            top: 0;
            
            width: 100%;
            z-index: 1000;
            
         background-color: #333;
        color: #fff;
        padding: 20px 0;
        transition: background-color 0.3s ease;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        /* Smooth Scrolling */
        html {
            scroll-behavior: smooth;
        }
 
    </style>
</head>
<body>
<script>
    // Sticky Navbar Script
    window.addEventListener("scroll", function () {
        const navbar = document.querySelector(".navbar");
        navbar.classList.toggle("sticky", window.scrollY > 0);
    });

    // Smooth Scrolling Script for Navbar Links
    const navLinks = document.querySelectorAll(".nav-links a");
    navLinks.forEach((link) => {
        link.addEventListener("click", (e) => {
            e.preventDefault();
            const targetId = e.target.getAttribute("href").substring(1);
            const targetElement = document.getElementById(targetId);
            targetElement.scrollIntoView({ behavior: "smooth" });
        });
    });

    // ... (previous script content) ...
</script>
<%
String name=(String)(session.getAttribute("NAME"));
String uid = (String) session.getAttribute("USER_UID");
String user_uid = "";
String M_A = "";
String M_D = "";
String M_R = "";
String P_A = "";
String P_D = "";
String P_R = "";
String S_A = "";
String S_D = "";
String S_R = "";
String gender = "";
String height = "";
String weight = "";
String age = "";
String bmi = "";

int mental = 0;
int physical = 0;
int social = 0;
int mental2 = 0;
int physical2 = 0;
int social2 = 0;

try {
    PreparedStatement pst = conn.prepareStatement("select * from RESULT_MINDBODYCHECK where USER_UID=? ");
    pst.setString(1, uid);
    ResultSet rs = pst.executeQuery();

    if (rs.next()) {
        user_uid = rs.getString(1);
        M_A = rs.getString(2);
        M_D = rs.getString(3);
        M_R = rs.getString(4);
        P_A = rs.getString(5);
        P_D = rs.getString(6);
        P_R = rs.getString(7);
        S_A = rs.getString(8);
        S_D = rs.getString(9);
        S_R = rs.getString(10);
        gender = rs.getString(11);
        height = rs.getString(12);
        weight = rs.getString(13);
        age = rs.getString(14);

        mental = Integer.parseInt(M_A);
        physical = Integer.parseInt(P_A);
        social = Integer.parseInt(S_A);
        mental2 = Integer.parseInt(M_D);
        physical2 = Integer.parseInt(P_D);
        social2 = Integer.parseInt(S_D);
    }

    rs.close();
    pst.close();

} catch (Exception e) {
    e.printStackTrace();
}
%>

<header>
    <div class="container">
        <nav class="navbar">
            <a href="#" class="logo">
                <img src="images/logo.jpg" alt="logo">
                <h2>Logo</h2>
            </a>
            <ul class="nav-links">
                <li><a href="Main.jsp">Home</a></li>
                <li><a href="about.html">About Us</a></li>
                 <li><a href="result.jsp">Health Result</a></li>
                <li><a href="help.html">Help</a></li>
            </ul><div class="logout_name">
            <p class="user_name"><%=name %></p>
            <form action="Home.html" method="post">
            <button class="login-btn">Log Out</button>
            </form>
            </div>
        </nav>
    </div>
</header>

    <h2 class="chart-heading">Health Metrics</h2>

    <div class="health-stats-container">
        <!-- Mental Health Pie Chart -->
        <div class="health-stats">
            <h3 class="chart-heading">Mental Health</h3>
            <div class="chart-container">
                <canvas class="mental-chart"></canvas>
                <div class="chart-center-text">
                <%
                if(mental>=70){%>
                Good<%
                }else if(mental>=40&&mental<70){
                %>Average<%
                }else{
                %>Bad<%} 
                %>
         		</div>
            </div>
            <div class="details">
                <ul></ul>
            </div>
        </div>

        <!-- Physical Health Pie Chart -->
        <div class="health-stats">
            <h3 class="chart-heading">Physical Health</h3>
            <div class="chart-container">
                <canvas class="physical-chart"></canvas>
                <div class="chart-center-text">
                 <%
                if(physical>=70){%>
                Good<%
                }else if(physical>=40&&physical<70){
                %>Average<%
                }else{
                %>Bad<%} 
                %>
                </div>
            </div>
            <div class="details">
                <ul></ul>
            </div>
        </div>

        <!-- Social Health Pie Chart -->
        <div class="health-stats">
            <h3 class="chart-heading">Social Health</h3>
            <div class="chart-container">
                <canvas class="social-chart"></canvas>
                <div class="chart-center-text">
                 <%
                if(social>=70){%>
                Good<%
                }else if(social>=40&&social<70){
                %>Average<%
                }else{
                %>Bad<%} 
                %></div>
            </div>
            <div class="details">
                <ul></ul>
            </div>
        </div>
    </div>

    
   <%
String mentalGood = String.valueOf(mental);
String mentalBad = String.valueOf(mental2);
String physicalGood = String.valueOf(physical);
String physicalBad = String.valueOf(physical2);
String socialGood = String.valueOf(social);
String socialBad = String.valueOf(social2);
%>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    const mentalData = {
        labels: ["Good", "Bad"],
        data: [ <%= mentalGood %>, <%= mentalBad %> ],
    };

    const physicalData = {
        labels: ["Good", "Bad"],
        data: [ <%= physicalGood %>, <%= physicalBad %> ],
    };

    const socialData = {
        labels: ["Good", "Bad"],
        data: [ <%= socialGood %>, <%= socialBad %> ],
    };

    const mentalChart = document.querySelector(".mental-chart");
    const physicalChart = document.querySelector(".physical-chart");
    const socialChart = document.querySelector(".social-chart");

    const populateChart = (chartElem, chartData) => {
        new Chart(chartElem, {
            type: "doughnut",
            data: {
                labels: chartData.labels,
                datasets: [{
                    label: "Health Metrics",
                    data: chartData.data,
                    backgroundColor: ["#4CAF50", "#F44336"],
                }],
            },
            options: {
                borderWidth: 10,
                borderRadius: 2,
                hoverBorderWidth: 0,
                plugins: {
                    legend: {
                        display: false,
                    },
                },
            },
        });
    };

    const populateDetails = (ulElem, chartData) => {
        chartData.labels.forEach((label, index) => {
            const li = document.createElement("li");
            li.innerHTML = label + ": <span class='percentage'>" + chartData.data[index] + "%</span>";
            ulElem.appendChild(li);
        });
    };

    populateChart(mentalChart, mentalData);
    populateChart(physicalChart, physicalData);
    populateChart(socialChart, socialData);

    const ulMental = document.querySelectorAll(".health-stats .details ul")[0];
    const ulPhysical = document.querySelectorAll(".health-stats .details ul")[1];
    const ulSocial = document.querySelectorAll(".health-stats .details ul")[2];

    populateDetails(ulMental, mentalData);
    populateDetails(ulPhysical, physicalData);
    populateDetails(ulSocial, socialData);
</script>
   <script>
    // Sticky Navbar Script
    window.addEventListener("scroll", function () {
        const navbar = document.querySelector(".navbar");
        navbar.classList.toggle("sticky", window.scrollY > 0);
    });


</script>
</body>
</html>
    