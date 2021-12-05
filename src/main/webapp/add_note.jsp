<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/style.css" />
<%@include file="bootstrap/bootstrap_js_css.jsp"%>
<title>Note Taker : Add Note</title>
</head>
<body>
	<div class="container-fluid m-0 p-0">
		<%@include file="navber/navber.jsp"%>
		<br>
		<h4 class="text-center text-primary">
			Please add this note detail....
			</h2>
			<br>
			<div class="container col-md-6">
				<form action="SaveNoteServlet" method="post">
					<div class="form-group">
						<label for="title">Note Title</label> <input type="text"
							class="form-control" name="title" id="title"
							placeholder="Enter Note Title">
					</div>
					<div class="form-group">
						<label for="content">Content</label>
						<textarea id="content" class="form-control" style="height: 200px;"
							name="content" placeholder="Enter Content here"></textarea>
					</div>
					<div class="container text-center">
						<button type="submit" class="btn btn-primary">Add</button>
					</div>
				</form>
			</div>
	</div>
</body>
</html>