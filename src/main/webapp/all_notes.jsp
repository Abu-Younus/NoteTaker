<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/style.css" />

<%@include file="bootstrap/bootstrap_js_css.jsp"%>
<title>Note Taker | All Note Details</title>
</head>
<body>
	<div class="container-fluid m-0 p-0">
		<%@include file="navber/navber.jsp"%>
		<br>
		<h2 class="text-center text-uppercase">All Notes :</h2>
		<br>
		<%
			Session s = FactoryProvider.getFactory().openSession();
			Query q = s.createQuery("from Note");
			List<Note> list = q.list();
			for(Note note : list) {
		%>
		<div class="row">
			<div class="col-12 text-center"> 
				<div class="card">
					<img src="image/notepad.png" class="card-img-top mx-auto m-4" style="max-width:90px;" alt="" />
					<div class="card-body">
						<h5 class="card-title">What is java programming?</h5>
						<p class="card-text">Java is one of most programming languages.</p>
						<a href="" class="btn btn-primary">Edit</a> 
						<a href="" class="btn btn-danger">Delete</a>
					</div>
				</div>
			</div>
		</div>
		<%
			}
			s.close();
		%>
	</div>
</body>
</html>