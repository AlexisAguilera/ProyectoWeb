<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="img" uri="/struts-images"%>
<html>
<head>
	<style>
		body, input{
			font-family: Times New Roman, Arial;
			
		}
		table#movie {
			border-collapse: collapse;
			width:600px;
		}
		th {
			height: 40px;
			background-color: #8181F7;
		}
	</style>
	<title>Administrador de Películas</title>
</head>

<body background= "images/homer.jpg" text= "white">

<h1>Agregar películas</h1>
<s:actionerror/>

<s:form action="add.action" method="post">
	<s:textfield name="movie.titulo" label="Título"/>
	<s:textfield name="movie.calificacion" label="Calificación (0-5)"/>
	<s:textfield name="movie.opinion" label="Opinión"/>
	<s:textfield name="movie.imdb" label="puntuación en IMDb"/>
	<s:textfield name="movie.website" label="Sitio Web"/>
	<s:textfield name="movie.anio" label="Año"/>
	<s:textfield name="movie.video" label="trailer"/>
	<s:submit value="Agregar" align="center"/>
</s:form>

<s:form action="admin" style="float: center;">
		<s:submit value="Volver" />
</s:form>

</body>
</html>