<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="/static/css/bootstrap.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Recipe ${recipe.externalId}</title>
</head>
<body>
	
	<h1>${recipe.lastVersion.title}</h1>
	<b>Problema:</b>
	<p>${recipe.lastVersion.problem}</p>
	<b>Solução:</b>
	<p>${recipe.lastVersion.solution}</p>
	<b>Autor:</b>
	<p>${recipe.lastVersion.author}</p>
	<b>Tags:</b>
	<p>${recipe.lastVersion.tags}</p>
	<b>Data:</b>
	<p>${recipe.lastVersion.creationTimestamp}</p>

	<form method="GET" action="/editrecipe">
	<input type="hidden" name="titulo" value="${recipe.lastVersion.title}"/>
	<input type="hidden" name="problema" value="${recipe.lastVersion.problem}"/>
	<input type="hidden" name="solucao" value="${recipe.lastVersion.solution}"/>
	<input type="hidden" name="autor" value="${recipe.lastVersion.author}"/>
	<input type="hidden" name="tags" value="${recipe.lastVersion.tags}"/>
    <input type="submit" class="btn btn-success" value="Editar Receita"/>
	</form>


	<input type="button" value="Voltar" class="btn btn-inverse" onclick="JavaScript:window.location='/recipes'"/>
    <input type="button" value="Eliminar Receita" class="btn btn-danger" onclick="JavaScript:window.location='/recipes/${recipe.externalId}/delete'"/>




</body>
</html>