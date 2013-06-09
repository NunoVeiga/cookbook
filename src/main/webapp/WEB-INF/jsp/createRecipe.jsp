<html lang="en"><head>
    <meta charset="utf-8">
    <title>Bootstrap, from Twitter</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

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
background-color:transparent;
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
                  <li><a href="/recipes/create">Criar Nova Receita</a></li>
                  <li><a href="/recipes">Listar Receitas</a></li>
                  
                  
                  <li></li>
                  <li></li>
                </ul>
              </li>
            </ul>
            <form class="navbar-form pull-right">
              
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
          <form method="POST" action="/recipes">
<input type="text" name="titulo" class="center" placeholder="Titulo"></input><br>
<textarea rows="3" name="problema" class="center" placeholder="Problema"></textarea><br>
<textarea rows="3" name="solucao" class="center" placeholder="Solução"></textarea><br>
<input type="text" name="autor" class="center" placeholder="Autor"></input><br>
<input type="text" name="dificuldade" class="center" placeholder="Dificuldade"></input><br>
<input type="text" name="tags" class="center" placeholder="Tags"></input><br>
<input type="submit" class="btn btn-success" value="Criar Nova Receita">
<input type="button" value="Voltar" class="btn btn-inverse" onclick="JavaScript:window.location='/recipes'">
</form><p></p>
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