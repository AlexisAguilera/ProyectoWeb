<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
	<style>
		body, input{
			font-family: Arial, Times New Roman;
		}
		table#pelicula {
			border-collapse: collapse;
			width:550px;
		}
		th {
			height: 40px;
			background-color: #8181F7;
		}
	</style>
	<title>Películas</title>
</head>
<body background= "images/homer.jpg" text= "white">

<h2>Lista de películas</h2>

<table id="pelicula" border="1">
<tr>
	<th>Título</th>
	<th>Calificación</th>
	<th>Puntuación en IMDb</th>
	<th>Año</th>
	<th>Trailer</th>
	<th>Sitio Web</th>
</tr>
<s:iterator value="movieList" var="movie">
	<tr>
		<td><a href="show?id=<s:property value="id"/>"><s:property value="titulo"/></a></td>
		<td><img src="<s:property value="getEstrellas()" />" /></td> 
		<td><s:property value="imdb" /></td>
		<td><s:property value="anio"/></td>
		<td><a href="<s:property value="video"/>">Trailer</a></td>
		<td><a href="<s:property value="website"/>">link para ver Online</a></td>
	</tr>	
</s:iterator>
</table>
<a href="<s:url value="/"/>">Administrar.</a>
</body>
</html>