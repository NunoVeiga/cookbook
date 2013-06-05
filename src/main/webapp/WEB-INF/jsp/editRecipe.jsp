<head>
<link rel="stylesheet" type="text/css" href="/static/css/bootstrap.css" />
</head>
<form method="POST" action="/editrecipe">
<input type="hidden" name="id" value="${id}"/>
Titulo: <input type="text" name="titulo" value="${titulo}"/></br>
Problema: <input type="text" name="problema" value="${problema}"/></br>
Solução: <input type="text" name="solucao" value="${solucao}"/></br>
Autor: <input type="text" name="autor" value="${autor}"/></br>
Dificuldade: <input type="text" name="dificuldade" value=""/></br>
Tags: <input type="text" name="tags" value="${tags}"/></br>
<input type="submit" class="btn btn-success" value="Criar Nova Receita"/>
<input type="button" value="Voltar" class="btn btn-inverse" onclick="JavaScript:window.location='/recipes'"/>
</form>