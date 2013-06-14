<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en"><head>

<link rel="stylesheet" type="text/css" href="/static/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="/static/css/style.css" />
<script type="text/javascript" src="/static/js/bootstrap.js"></script>
    <meta charset="utf-8">
    <title>Receitas</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Le styles -->
    <link href="http://twitter.github.io/bootstrap/assets/css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
    </style>
    <link href="http://twitter.github.io/bootstrap/assets/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="../assets/ico/favicon.png">
<style>
.center
{
margin:auto;
width:70%;
background-color:#b0e0e6;
}
</style>

  </head>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="#">Cookbook</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li class="active"><a href="/">Home</a></li>
              <li><a href="#about">About</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Contact<b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li></li>
                  <li><a href="/recipes">Amit Vaghela</a></li>
                  <li><a href="/recipes">André Graça</a></li>
                  <li><a href="/recipes">Diogo Ferreira</a></li>
                  <li><a href="/recipes">Nuno Veiga</a></li>
                </ul>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Cookbook Manager<b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li></li>
                  <li><a href="/recipes">Listar Receitas</a></li>
                  <li><a href="/recipes/create">Criar Nova Receita</a></li>
                  
                  
                  <li></li>
                  <li></li>
                </ul>
              </li>
            </ul>
            <form method="POST" action="/" class="navbar-form pull-right">
              
		<input type="text" name="aprocurar" class="input-large search-query">
		<button type="submit" class="btn btn-search">Procurar Receita</button>
	</form>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container">

      <!-- Main hero unit for a primary marketing message or call to action -->
      

      <!-- Example row of columns -->
      <div class="row">
        <div class="span4">
          
          <p></p>
          <p></p>
        </div>
        <div class="span4">
          
          <p class="center"></p>
          <h1>${recipe.lastVersion.title}</h1>
	<b>Problema:</b>
	<p>${recipe.lastVersion.problem}</p>
	<b>Solução:</b>
	<p>${recipe.lastVersion.solution}</p>
	<b>Autor:</b>
	<p>${recipe.lastVersion.author}</p>
	<b>Dificuldade:</b>
	<p>${recipe.lastVersion.difficulty}</p>
	<b>Tags:</b>
	<p>${recipe.lastVersion.tags}</p>
	<b>Data:</b>
	<p>${recipe.lastVersion.creationTimestamp}</p>

	<form method="GET" action="/editrecipe">
	<input type="hidden" name="id" value="${recipe.externalId}"/>
	<input type="hidden" name="titulo" value="${recipe.lastVersion.title}"/>
	<input type="hidden" name="problema" value="${recipe.lastVersion.problem}"/>
	<input type="hidden" name="solucao" value="${recipe.lastVersion.solution}"/>
	<input type="hidden" name="autor" value="${recipe.lastVersion.author}"/>
	<input type="hidden" name="dificuldade" value="${recipe.lastVersion.difficulty}"/>
	<input type="hidden" name="tags" value="${recipe.lastVersion.tags}"/>
    <input type="submit" class="btn btn-success" value="Editar Receita"/>
	</form>


    <input type="button" value="Versões" class="btn btn-inverse" onclick="JavaScript:window.location='/recipes/${recipe.externalId}/versions'"/>
	<input type="button" value="Voltar" class="btn btn-inverse" onclick="JavaScript:window.location='/recipes'"/>
    <input type="button" value="Eliminar Receita" class="btn btn-danger" onclick="JavaScript:window.location='/recipes/${recipe.externalId}/delete'"/>

          <p class="center"></p>
       </div>
        <div class="span4">
          
          <p></p>
          <p></p>
        </div>
      </div>

      

      <footer>
        
      </footer>

    </div> <!-- /container -->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="http://twitter.github.io/bootstrap/assets/js/jquery.js"></script>
    <script src="http://twitter.github.io/bootstrap/assets/js/bootstrap-transition.js"></script>
    <script src="http://twitter.github.io/bootstrap/assets/js/bootstrap-alert.js"></script>
    <script src="http://twitter.github.io/bootstrap/assets/js/bootstrap-modal.js"></script>
    <script src="http://twitter.github.io/bootstrap/assets/js/bootstrap-dropdown.js"></script>
    <script src="http://twitter.github.io/bootstrap/assets/js/bootstrap-scrollspy.js"></script>
    <script src="http://twitter.github.io/bootstrap/assets/js/bootstrap-tab.js"></script>
    <script src="http://twitter.github.io/bootstrap/assets/js/bootstrap-tooltip.js"></script>
    <script src="http://twitter.github.io/bootstrap/assets/js/bootstrap-popover.js"></script>
    <script src="http://twitter.github.io/bootstrap/assets/js/bootstrap-button.js"></script>
    <script src="http://twitter.github.io/bootstrap/assets/js/bootstrap-collapse.js"></script>
    <script src="http://twitter.github.io/bootstrap/assets/js/bootstrap-carousel.js"></script>
    <script src="http://twitter.github.io/bootstrap/assets/js/bootstrap-typeahead.js"></script>

  

</body></html>