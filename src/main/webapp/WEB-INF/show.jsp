<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Details</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
	<div class="super">
		<div class = "row" id = "heading">
			<h1 class="header">Song Details</h1>
		</div>
		<div class = "row" id = "row1">
			<p class = "rowTop">Title:</p>
			<p class= "rowBot"><c:out value="${song.title }"/></p>
		</div>
		<div class = "row" id = "row2">
			<p class="rowTop">Artist:</p>
			<p class="rowBot"><c:out value="${song.artist }"/></p>
		</div>
		<div class = "row" id = "row3">
			<p class="rowTop">Rating:</p>
			<p class="rowBot"><c:out value="${song.rating }"/></p>
		</div>
		<p><a href= "/dashboard">Dashboard</a>
	</div>
</body>
</html>