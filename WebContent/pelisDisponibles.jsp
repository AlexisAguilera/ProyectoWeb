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

<h2>Películas</h2>
<table id="movie" border="1">
<tr>
	<th>Título</th>
	<th>Calificación</th>
	<th>Puntuación en IMDb</th>
	<th>Año</th>
	<th>Sitio Web</th>
	<th>Trailer </th>
	<th>Editar</th>
	<th>Eliminar</th>
</tr>
<s:iterator value="movieList" var="movie">
	<tr>
		<td><a href="show?id=<s:property value="id"/>"><s:property value="titulo"/></a></td>
		<td><img src="<s:property value="getEstrellas()"/>" border="0" height="40" width="90" /></td> 
		<td><s:property value="imdb" /></td>
		<td><s:property value="anio"/></td>
		<td><a href="<s:property value="website"/>">Link para ver Online</a></td>
		<td><a href="<s:property value="video" />">Trailer</a></td>
		<td><a href="edit?id=<s:property value="id"/>">Editar</a></td>
		<td><a href="delete?id=<s:property value="id"/>">Eliminar</a></td>
	</tr>	
	
</s:iterator>
</table>

<s:form action="admin" style="float: center;">
		<s:submit value="Volver" />
</s:form>

</body>
</html>