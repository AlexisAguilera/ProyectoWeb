<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
	<style>
		body, input{
			font-family: Times New Roman, Arial;
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
	<title>Administrador de Películas</title>
</head>
<body background= "images/homer.jpg" text= "white">

<h2>Editar "<s:property value="movie.getTitulo()" />" </h2>

<s:form action="doEdit.action" method="post">
	<s:textfield name="movie.id" label="id" value="%{movie.id}" readonly="true"/>
	<s:textfield name="movie.titulo" label="Titulo" value="%{movie.titulo}"/>
	<s:textfield name="movie.calificacion" label="Calificacion (0-5)" value="%{movie.calificacion}"/>
	<s:textfield name="movie.opinion" label="Opinion" value="%{movie.opinion}"/>
	<s:textfield name="movie.imdb" label="IMDb" value="%{movie.imdb}"/>
	<s:textfield name="movie.website" label="Sitio Web" value="%{movie.website}"/>
	<s:textfield name="movie.anio" label="Año" value="%{movie.anio}"/>
	<s:submit value="Editar" align="center"/>
</s:form>

<script>
function goBack()
  {
  window.history.back()
  }
</script>
<button onclick="goBack()">Volver</button>
</body>
</html>