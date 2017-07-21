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
<title>Aeroport</title>
</head>
<body class="container">
	<header class="">
		<img src="./img/tour_du_monde.jpg" alt="Logo de l'agence">
	</header>
	<ul class="nav nav-pills">
		<li role="presentation"><a href="./client">Listes des clients</a></li>
		<li role="presentation"><a href="./aeroport">Listes des aéroport</a></li>
	</ul>
	<h1 class="info">Liste de tous les aéroports</h1>
	<c:forEach items="${aeroports}" var="aeroport">

		<div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img class="img-responsive" src="./img/${ aeroport.idAero }.jpg" alt="image aeroport">
      <div class="caption">
        <h3>Aéroport <br>${aeroport.nom }</h3>
        <p><a class="btn btn-default" href="?id=${ aeroport.idAero }">Plus d'infos</a></p>
      </div>
    </div>
  </div>
	</c:forEach>
</body>
</html>

