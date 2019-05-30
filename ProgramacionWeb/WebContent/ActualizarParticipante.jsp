<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Programación Competitiva</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/estilo.css">
</head>
<body>
	<header>
		<h1>Programación Competitiva</h1>
		<img id="imagen" src="css/java.png">
	</header>
	<c:set var="participante" scope="request"
		value="${requestScope.participante}"></c:set>
	<form action="ActualizarParticipanteController" method="post">
		<div class="form-group row">
			<label for="inputPassword" class="col-sm-2 col-form-label">id</label>
			<div class="col-sm-10">
				<input id="input" type="text" class="form-control" name="id" id="inputPassword"
					placeholder="Id" value="${participante.id}">
			</div>
		</div>
		<div class="form-group row">
			<label for="inputPassword" class="col-sm-2 col-form-label">Nombre</label>
			<div class="col-sm-10">
				<input id="input" type="text" class="form-control" name="nombre"
					id="inputPassword" placeholder="Nombre"
					value="${participante.nombre}">
			</div>
		</div>
		<div class="form-group row">
			<label for="inputPassword" class="col-sm-2 col-form-label">Correo</label>
			<div class="col-sm-10">
				<input id="input" type="text" class="form-control" name="correo"
					id="inputPassword" placeholder="Correo"
					value="${participante.correo}">
			</div>
		</div>
		<div class="form-group row">
			<label for="inputPassword" class="col-sm-2 col-form-label">Telefono</label>
			<div class="col-sm-10">
				<input id="input" type="text" class="form-control" name="telefono"
					id="inputPassword" placeholder="Telefono"
					value="${participante.telefono}">
			</div>
		</div>
		<button type="submit" class="btn btn-outline-danger">Actualizar</button>
	</form>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>