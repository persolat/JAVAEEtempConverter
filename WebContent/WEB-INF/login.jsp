<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	<a class="navbar-brand" href="#">Temperature Converter</a>
	</nav>
	<br />
	<br />
	<div class="container">
		<form class="form-signin" method="post">
			<h2 class="form-signin-heading">Please sign in</h2>
			<label for="inputEmail" class="sr-only">Email address</label> <input
				id="inputEmail" class="form-control" placeholder="Email address"
				required="" autofocus="" type="email"  name="email"> <label
				for="inputPassword" class="sr-only">Password</label> <input
				id="inputPassword" class="form-control" placeholder="Password"
				required="" type="password" name="password">

			<button class="btn btn-lg btn-primary btn-block" type="submit">Sign
				in</button>
		</form>

	</div>
	<!-- Placed at the end of the document so the pages load faster -->
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="./assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>