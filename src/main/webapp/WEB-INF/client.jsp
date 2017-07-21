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
	<h1 class="well well-success">Coordonnées du client</h1>
	<div class="col-md-12">
		<div class="col-md-6">
			<p>Client N° <span class="badge">${client.id}</span></p>
			<p>Nom  : ${client.nom}</p>
			<p>Prénom : ${client.prenom}</p>
			<p>Email : ${client.email}</p>
			<p>Télephone : ${client.numeroTel}</p>
			<p>Fax : ${client.numeroFax}</p>			
			<p>${client.adresse }</p>
				<a class="btn btn-primary btn-lg" href="./client">Retour à la liste des clients
				</a>
			</p>			
		</div>
	</div>
</body>
</html>

