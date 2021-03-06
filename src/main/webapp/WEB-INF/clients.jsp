<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<title>Clients</title>
</head>
<body class="container">
	<header class="">
		<img src="./img/tour_du_monde.jpg" alt="Logo de l'agence">
	</header>
	<ul class="nav nav-pills">
		<li role="presentation"><a href="./client">Listes des clients</a></li>
		<li role="presentation"><a href="./aeroport">Listes des aéroport</a></li>
	</ul>
	<h1 class=""><ins>Liste de tous les clients</ins></h1>
	<c:forEach items="${ clients }" var="client">
		<div class="col-md-4">
			<h2>${client.nom }</h2>
			<p>${client.prenom }</p>
			<p class="btn btn-default">
				<a class="" href="?id=${ client.id }">Plus d'infos</a>
			</p>

		</div>
	</c:forEach>
	<p>${adresse.numeroFax }</p>
</body>
</html>

