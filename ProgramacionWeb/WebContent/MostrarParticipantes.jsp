<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<h3>Participantes</h3>
	<a href="RegistrarParticipante.jsp"><button id="btnNuevo"
			class="btn btn-outline-danger">Nuevo</button></a>
	<c:out value="${uno}"></c:out>
	<table>
		<jsp:useBean id="pDao" class="DAO.ParticipanteDAO" scope="request"></jsp:useBean>
		<tr>
			<th class="bg-danger">Nombre</th>
			<th class="bg-danger">Correo</th>
			<th class="bg-danger">Telefono</th>
			<th class="bg-danger">Acciones</th>
		</tr>
		<c:set var="uno" scope="page" value=""></c:set>
		<c:forEach var="participante" items="${pDao.list() }">
			<tr>
				<c:set var="uno" scope="page" value="${participante.nombre}"></c:set>
				<td><c:out value="${participante.nombre}" /></td>
				<td><c:out value="${participante.correo}" /></td>
				<td><c:out value="${participante.telefono}" /></td>
				<td><a
					href="EliminarParticipanteController?id=${participante.id}">Eliminar</a>
					<a
					href="ActualizarParticipanteController?id=${participante.id}">Editar</a></td>
			</tr>
		</c:forEach>
	</table>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>