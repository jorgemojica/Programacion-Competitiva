<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form name="registro" action="RegistrarEquipoController" method="POST">
		<br>
		<h2>Registro Participantes</h2>
		<br>
		<h4>Nombre</h4>
		<input class="form-control" type="text" name="nombre"
			placeholder="Nombre">
		<h4>Coach</h4>
		<input class="form-control" type="text" name="coach"
			placeholder="Coach">
		<h4>Universidad</h4>
		<input class="form-control" type="text" name="universidad"
			placeholder="Universidad">

		<center>
			<button type="submit"
				class="btn btn-outline-info btn-rounded btn-block my-4 waves-effect z-depth-0">Guardar</button>
			<button type="submit"
				class="btn btn-outline-info btn-rounded btn-block my-4 waves-effect z-depth-0">Cancelar</button>
	</form>
</body>
</html>