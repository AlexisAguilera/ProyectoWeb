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
	<title>Opciones de Administrador</title>
</head>
<body background= "images/homer.jpg" text= "white">

<h1>Opciones de Administrador</h1>

<s:form action="agregarPelicula" style="float: center;">
		<s:submit value="Agregar película" />
</s:form>

<s:form action="verPeliculasDisponibles" style="float: center;">
		<s:submit value="Ver películas disponibles" />
</s:form>



<s:form action="logOut" style="float: left;">
		<s:submit value="Salir" />
</s:form>



</body>

</html>