
Skip to content
This repository

    Pull requests
    Issues
    Marketplace
    Gist

    @lmiguel73

0
0

    7

lmiguel73/cours-ix-servlet forked from teamDeformateur/cours-ix-servlet
Code
Pull requests 0
Projects 0
Wiki
Settings
cours-ix-servlet/src/main/webapp/film.jsp
54739e7 11 hours ago
@lmiguel73 lmiguel73 ajout des pages include pour afficher le sysnopsis de chaque film
@lmiguel73
@rplantefeve
39 lines (37 sloc) 1.17 KB
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
<title>Film</title>
</head>
<body class="container">
	<h1 class="well">Détail du film sélectionné</h1>
	<div class="col-md-12 jumbotron">
		<div class="col-md-6">
			<p>Film N° ${client.id}</p>
			<p>Titre du film : ${client.nom}</p>
			<p>Durée : ${client.prenom} minutes</p>
			<p>Année de sortie : ${client.email}</p>
			<p>
				<a class="btn btn-primary btn-lg" href="./film">Retour à la
					liste <span class="glyphicon glyphicon-retweet" aria-hidden="true"></span>
				</a>
			</p>
			
			
		</div>
	</div>
</body>
</html>

