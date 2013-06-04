<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="/static/css/bootstrap.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Homepage</title>
</head>
<body>
	<a href="/recipes"  class="btn btn-success">Listar Receitas</a></br>
	<a href="/recipes/create" class="btn btn-success">Criar Nova Receita</a>
	<form method="POST" action="/" class="form-search">
		<input type="text" name="aprocurar" class="input-large search-query">
		<button type="submit" class="btn btn-search">Procurar Receita</button>
	</form>
	
</body>
</html>