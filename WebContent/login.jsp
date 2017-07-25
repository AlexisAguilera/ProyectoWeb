<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>¡Bienvenido!</title>
</head>
 
<body background= "images/homer.jpg" text= "white">
<h1>¡Bienvenido!</h1>
<h2>Por favor, ingrese usuario y contraseña</h2>
<s:actionerror />
<s:form action="login.action" method="post">
    <s:textfield name="username" key="label.username" size="20" />
    <s:password name="password" key="label.password" size="20" />
    <s:submit method="execute" key="label.login" align="center" />
</s:form>
<h3>Ingresar como visitante</h3>
<a href="visitantes">Visitantes</a>
</body>
</html>