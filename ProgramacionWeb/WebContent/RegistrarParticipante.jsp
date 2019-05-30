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
	<form name="registro" action="RegistrarParticipanteController"
		method="POST">
		<br>
		<h2>Registro Participantes</h2>
		<br>
		<h4>Nombre</h4>
		<input id="input" class="form-control" type="text" name="nombre"
			placeholder="Nombre">
		<h4>Genero</h4>
		<select name="genero">
			<option name="genero">M</option>
			<option name="genero">F</option>
		</select>
		<h4>Email</h4>
		<input id="input" class="form-control" type="text" name="email"
			placeholder="Email">
		<h4>Telefono</h4>
		<input id="input" class="form-control" type="text" name="telefono"
			placeholder="Telefono">
		<h4>Clave</h4>
		<input id="input" class="form-control" type="password" name="clave"
			placeholder="Clave">
		<center>
			<button id="btn" type="submit" class="btn btn-outline-danger">Guardar</button>
			<button id="btn" type="submit" class="btn btn-outline-danger">Cancelar</button>
	</form>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>