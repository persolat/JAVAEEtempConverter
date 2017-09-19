<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="fr.video2brain.tempconverter.models.*"%>

<%
User user = (User) request.getSession().getAttribute("user");
if (user == null){
	System.out.println("no user session");
	response.sendRedirect("login");
} else {
	System.out.println("session retreived");
}

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login pages</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../../../favicon.ico">

<title>Signin Template for Bootstrap</title>

<!-- Bootstrap core CSS -->
<link href="./assets/css/bootstrap.min.css" rel="stylesheet">
<link href="./assets/css/docs.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="./assets/css/signin.css" rel="stylesheet">
</head>
<body>

	<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
	<a class="navbar-brand" href="#">Temperature Converter</a> </nav>
	<br />
	<br />
	<h2>Bienvenue dans votre session admin</h2>

	<br />
	<br />

	<div class="container">
	<h4>Celcius Value</h4>
	
      <form class="form-inline my-2 my-lg-0" method="post">
          <input class="form-control mr-sm-2" placeholder="Enter the value" aria-label="Search" type="text" name="celcius">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Converter</button>
        </form>
        
        <br>
        <br>
        <h2>Fahrenheit</h2>
        
        <%
        if (request.getAttribute("result")!= null)
        out.write(request.getAttribute("result").toString());
        %>

	</div>

	<!-- Placed at the end of the document so the pages load faster -->
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="./assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>