<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="img" uri="/struts-images"%>
<html>
<head>
	<style>
		body, input{
			font-family: Calibri, Arial;
		}
		table#movie {
			border-collapse: collapse;
			width:550px;
		}
		th {
			height: 40px;
			width: 100px;
			background-color: #8181F7;
		}
	</style>
	<title><s:property value="movie.getTitulo()" /> </title>
</head>
<body background= "images/homer.jpg" text= "white">

<h2><s:property value="movie.getTitulo()" /> 
<span style="font-size:14px;">(<s:property value="movie.getAnio()" />)</span> </h2>
<table id="movie" border="1">
<tr>
	<th>Título</th>
	<td><s:property value="movie.getTitulo()" /></td>
</tr>


<tr>
	<th>Calificación</th>
	<td><img src="<s:property value="movie.getEstrellas()"  />" /> </td>
</tr>
<tr>
	<th>Opinión</th>
	<td><s:property value="movie.getOpinion()" /> </td>
</tr>
<tr>
	<th>Puntuación en IMDb</th>
	<td><s:property value="movie.getImdb()" /> </td>
</tr>
<tr>
	<th>Sitio Web</th>
	<td><s:property value="movie.getWebsite()" /> </td>
</tr>
<tr>
	<th>Trailer</th>
	<td><s:property value="movie.getVideo()" /></td>
</tr>

<tr>
	<th>Año</th>
	<td><s:property value="movie.getAnio()" /> </td>
</tr>
</table>
<script>
function goBack()
  {
  window.history.back()
  }
</script>
<button onclick="goBack()">Volver</button>
</body>
</html>