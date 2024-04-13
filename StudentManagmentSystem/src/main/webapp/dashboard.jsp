<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/x-icon" href="../images/logo.svg">
<title>Student Result Management System</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/dashboard.css">
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>
</head>
<body>
    <div class="main">
        <div class="left-nav">
            <div class="svg-div">
                <div class="svg-img active ">
                    <div class="svg-active "></div>
                    <!--<a href="./dashboard.html"><img src="../images/Dashboard.svg" /></a>-->
                    <img src="../images/Dashboard-active.svg"/>
                </div>
                <div class="svg-img ">
                    <div class="svg-active "></div>
                    <a href="/get"><img src="../images/Project-list.svg" /></a>
                    <!--<img src="../images/Project-list-active.svg" />-->
                </div>
                <div class="dash"></div>

                <div class="svg-img">
                    <div class="addDetails"></div>
                    <!--<img src="../images/create-project.svg" />-->
                    <a href="/addDetails"><img src="../images/create-project.svg" /></a>
                </div>
            </div>
            <div class="logout-btn-div">
                <a href="/"><img src="../images/Logout.svg" /></a>
            </div>
        </div>
        <div class="right-section">
            <div class="top-bar">
                <div class="create-project-sec">
                    
                    <h1>Dashboard</h1>
                </div>
                <div class="logo">
                    <img src="../images/Logo.svg">
                </div>
            </div>
            <div class="right-bottom-container">
                <div class="card-container">
                    <div class="card">
                        <div class="card-title">
                            <h5>Total Students</h5>
                        </div>
                        <div class="card-digit">
                            <h5>${studentCount}</h5>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-title">
                            <h5>No. of Passed Students</h5>
                        </div>
                        <div class="card-digit">
                            <h5>${PassStudents}</h5>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-title">
                            <h5>No. of Failed Students</h5>
                        </div>
                        <div class="card-digit">
                            <h5>${FailStudents}</h5>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-title">
                            <h5>Average Percentage</h5>
                        </div>
                        <div class="card-digit">
                            <h5>${AveragePercentage}%</h5>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-title">
                            <h5>Overall Result</h5>
                        </div>
                        <div class="card-digit">
                            <h5>${passPercentage}%</h5>
                        </div>
                    </div>
                </div>

                <div class="chart-title">
                    <h1>Grade wise - Male Vs Female</h1>
                </div>

                <div class="chart-div">
                    <figure class="highcharts-figure">
                        <div id="container"></div>

                    </figure>
                </div>


            </div>

        </div>
    </div>
    <script>
        Highcharts.chart('container', {
            chart: {
                type: 'column'
            },
            title: {
                text: '',
                align: 'left'
            },
            subtitle: {
                text: '',

                align: 'left'
            },
            xAxis: {
                categories: ['A+', 'A', 'B+', 'B', 'C', 'FAIL'],
                crosshair: true,
                accessibility: {
                    description: 'Grade'
                }
            },
            yAxis: {
                min: 0,
                title: {
                    text: ''
                },
                stackLabels: {
                    enabled: true,
                    style: {
                        fontWeight: 'bold',
                        color: ( // theme
                            Highcharts.defaultOptions.title.style &&
                            Highcharts.defaultOptions.title.style.color
                        ) || 'gray'
                    }
                }


            },
            tooltip: {
                valueSuffix: ''
            },
            plotOptions: {
                column: {
                    pointPadding: 0.35,
                    borderWidth: 0
                }
            },
            series: [
                {
                    name: 'Male',
                    data: [
                        <c:forEach items="${maleGradesInfo}" var="data" varStatus="loop">
                            ${data}<c:if test="${!loop.last}">, </c:if>
                        </c:forEach>
                    ]
                },
                {
                    name: 'Female',
                    data: [
                        <c:forEach items="${femaleGradesInfo}" var="data" varStatus="loop">
                            ${data}<c:if test="${!loop.last}">, </c:if>
                        </c:forEach>
                    ]
                }
            ]
        });

    </script>

</body>
</html>