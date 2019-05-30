<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	<form name="registro" action="RegistrarEquipoController" method="POST">
		<br>
		<h2>Registro Equipos</h2>
		<br>
		<h4>Nombre</h4>
		<input id="input" class="form-control" type="text" name="nombre"
			placeholder="Nombre">
		<h4>Coach</h4>
		<!-- 		<input id="input" class="form-control" type="text" name="coach" -->
		<!-- 			placeholder="Coach"> -->
		<select id="input" class="form-control" id="sel1" name="coach">
			<jsp:useBean id="pDao" class="DAO.ParticipanteDAO" scope="request"></jsp:useBean>
			<c:forEach var="participante" items="${pDao.list()}">
				<option><c:out
						value="${participante.id } ${participante.nombre}"></c:out>
				</option>
			</c:forEach>
		</select>
		<h4>Universidad</h4>
		<!-- 		<input id="input" class="form-control" type="text" name="universidad" -->
		<!-- 			placeholder="Universidad"> -->
		<select id="input" class="form-control" id="sel1" name="universidad">
			<jsp:useBean id="uDao" class="DAO.UniversidadDAO" scope="request"></jsp:useBean>
			<c:forEach var="universidad" items="${uDao.list()}">
				<option><c:out
						value="${universidad.id } ${universidad.nombre}"></c:out>
				</option>
			</c:forEach>
		</select>
		<button id="btn" type="submit" class="btn btn-outline-danger">Guardar</button>
		<a href="javascript:window.close();"><button id="btn"
				type="submit" class="btn btn-outline-danger">Cancelar</button></a>
	</form>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>