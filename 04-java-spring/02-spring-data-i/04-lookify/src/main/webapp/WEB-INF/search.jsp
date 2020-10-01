<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>
<body>
<div class="container">

<hr>
<table class="table table-dark">
<thead>
<td>Title</td>
<td>Rating</td>
<td>Actions</td>
</thead>

<tbody>
<c:forEach items="${artistSongs}" var="song">
<tr>
<td><a href="/songs/${song.id}">${song.title}</a></td>
<td>${song.rating}</td>
<td><a href="/delete/${song.id}">Delete</a></td>
</tr>
</c:forEach>
</tbody>

</table>
</div>

</body>
</html>