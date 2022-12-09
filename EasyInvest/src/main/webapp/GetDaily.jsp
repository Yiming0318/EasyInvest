<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Get Ten Years Return</title>
<!-- Bootstrap -->
<link href="bootstrap.min.css" rel="stylesheet">
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Easy Invest</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarColor01">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link active" href="LandingPage.jsp">Home
            <span class="visually-hidden">landingPage</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="findusers">Users</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="findstrategyposts">Strategy Post</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="findStocks">Stock Recommendations</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="materialfind">Educational Materials</a>
        </li>
                <li class="nav-item">
          <a class="nav-link" href="#"></a>
        </li>
      </ul>
    </div>
  </div>
</nav>
</head>
<body>
	<form action="getdaily" method="get">
		<h1>Get All daily recommendations by Ticker</h1>
		<p>
			<label for="givenTicker">Ticker</label>
			<input id="givenTicker" name="givenTicker" value="${fn:escapeXml(param.ticker)}">
		</p>
		<p>
			<input type="submit">
			<br/><br/><br/>
			<span id="successMessage"><b>${messages.success}</b></span>
		</p>
	</form>
       
     <h1>The Daily Recommendations</h1>
        <table border="1">
           <tr>
                <th>ID</th>
                <th>Ticker</th>
                <th>Date</th>
                <th>Recommend_Position</th>
            </tr>
            <c:forEach items="${recTicker}" var="rec" >
                <tr>
                	<td><c:out value="${rec.getDailyStockRecommendationID()}" /></td>
                	<td><c:out value="${rec.getTickerName()}" /></td>
                	<td><fmt:formatDate value="${rec.getDate()}" pattern="yyyy-MM-dd"/></td>
                	<td><c:out value="${rec.getPosition()}" /></td>
                </tr>
            </c:forEach>
       </table>
</body>
    <!-- Bootstrap -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</html>