<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Top Songs</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
	<div class = "super">
	<h1>Top Songs</h1>
		<c:forEach var = "song" items = "${ songs }">
		<div class="rowParagraph">
			<p class="rank"><c:out value ="${song.rating}" /></p>
			<p><a href="/songs/${song.id}" class="rank"><c:out value ="${song.title}"/></a></p>
			<p class="rank"><c:out value ="${song.artist}"/></p>
		</div>
		</c:forEach>
		<p><a href = "/dashboard">Dashboard</a></p>
	</div>
</body>
</html>