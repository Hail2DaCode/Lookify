<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
	<div class="super">
	<h1><c:out value = "${songs[0].artist}"/></h1>
		<table>
		<thead>
			<tr>
				<th>Name</th>
				<th>Rating</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var = "song" items = "${ songs }">
			<tr>
				<td><a href="/songs/${song.id }"><c:out value="${ song.title}"/></a></td>
				<td><c:out value="${ song.rating}"/></td>
				<td><a href="/songs/${ song.id }">delete</a></td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<p><a href="/dashboard">Dashboard</a></p>
	</div>

</body>
</html>