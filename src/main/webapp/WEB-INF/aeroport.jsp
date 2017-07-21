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
<title>Client</title>
</head>
<body class="container">
	<h1 class="well well-success">Aeroport</h1>
	<div class="col-md-12">
		<div class="col-md-6">
			<p>Aeroport  : ${aeroport.nom}</p>
			<p>Deserts les villes</p>
			<c:forEach items="${aeroport.villes}" var="ville">
		<div class="col-md-12">
			<p>${ville.nom } ${ville.pays }</p>

		</div>
	</c:forEach>
				<a class="btn btn-primary" href="./aeroport">Retour à la liste des aeroports
				</a>
			</p>			
		</div>
	</div>
</body>
</html>

