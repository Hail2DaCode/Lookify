<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Song</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
	<div class = "super">
		<h2>Add Song:</h2>
		<form:form class="form" action="/new/Song" method = "post" modelAttribute="song">
		<div class="add" id = "add1">
			<form:label path="title">Title</form:label>
			<form:errors class="error" path = "title"/>
			<form:input path="title"/>
		</div>
		<div class="add" id = "add2">
			<form:label path="artist">Artist</form:label>
			<form:errors class="error" path = "artist"/>
			<form:input path="artist"/>
		</div>
		<div class="add" id = "add3">
			<form:label path="rating">Rating(1-10)</form:label>
			<form:errors class="error" path = "rating"/>
			<form:input path="rating"/>
		</div>
		<div class = "add" id = "add5">
			<input class="btn" id ="submit" type = "submit" value="Add"/>
		</div>
	</form:form>
	<a href="/dashboard">Dashboard</a>
	</div>
</body>
</html>