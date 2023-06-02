<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Save Travels</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
<div class="super">
	<div class="navBar">
		<p><a class="addSong" href="songs/new">Add New</a></p>
		<p><a href="songs/top-ten">Top Songs</a></p>
		<form class = "form"  id = "searchForm" action = "/search" method = "get">
			<input id = "searchBox" type = "text" name = "artist">
			<input class="btn" id ="submit" type = "submit" value="Search"/>
		</form>
	</div>
	<table>
		<thead>
			<tr>
				<th>Title</th>
				<th>Rating</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var = "song" items = "${ songs }">
			<tr>
				<td><a href="/songs/${song.id }"><c:out value="${ song.title}"/></a></td>
				<td><c:out value="${ song.rating}"/></td>
				<td><a href="/songs/Delete/${ song.id }" >delete</a></td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>