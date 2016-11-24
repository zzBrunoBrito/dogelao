<%--Created by IntelliJ IDEA.
  User: bruno
  Date: 11/21/16
  Time: 7:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Dogelão</title>
	<link rel="icon" href="favicon.ico">
	<link href="/WebContent/WEB-INF/resources/css/materialize.css" rel="stylesheet" type="text/css">
	<link href="WEB-INF/resources/css/style-index.css" rel="stylesheet" type="text/css">
	<link href="/WEB-INF/resources/css/font.css" rel="stylesheet" type="text/css">
	<link href="/WEB-INF/resources/css/animate.css" rel="stylesheet" type="text/css">
    <!-- CSS 
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/WebContent/WEB-INF/resources/css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    <link href="${pageContext.request.contextPath}/WebContent/WEB-INF/resources/css/style-index.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    <link href="${pageContext.request.contextPath}/WebContent/WEB-INF/resources/css/font.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/WebContent/WEB-INF/resources/css/animate.css" rel="stylesheet">
	 -->
</head>
<body style="overflow: hidden;">


<nav class="nav-extended brown darken-4 animated" style="opacity: 0">
    <div class="container">
        <div class="nav-wrapper">
            <div class="row">
                <div class="col s7 offset-s7">
                    <ul class="right tabs tabs-transparent">
                        <li class="tab"><a class="active" href="#home">Home</a></li>
                        <li class="tab"><a href="#login">Login</a></li>
                        <li class="tab"><a href="#cadastro">Cadastro</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

</nav>


<div class="rain">
</div>

<div class="phrase"></div>

<div id="home" class="col s12">
    <div class="logo hidden animated">
        <div class="inner-circle">
            <div class="border"></div>
            <img class="doge" src="../../../images/doge-01.png" alt="">
        </div>
    </div>

    <div id="port" class="parallax-container">
        <p class="service-name animated parallax-layer">Dogelão</p>
        <p class="service-name shadow animated parallax-layer">Dogelão</p>
    </div>
</div>

<div id="login" class="">

    <div class="container">
        <div class="card s5">
            <form action="/dogepqp/login" method="post">
                <div class="container">
                    <div class="row">
                        <div class="input-field col s5">
                            <input id="email" type="text" class="validate" name="user.username">
                            <label for="email">Login</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s5">
                            <input id="password" type="password" class="validate" name="user.password">
                            <label for="password">Senha</label>
                        </div>
                    </div>
                    <div class="row">
                        <button class="btn waves-effect waves-light brown darken-4" type="submit" name="action">Submit
                            <i class="material-icons right">send</i>
                        </button>
                    </div>
                    <div class="row"></div>
                </div>
            </form>
        </div>
    </div>
    
    <div>
    	<form method="post" action="/dogepqp/register-user">
    		<input type="text" name="user.username">
    		<input type="text" name="user.password">
    		
	    	<input type="text" name="user.person.name">
	    	<input type="text" name="user.person.sex">
	    	<input type="text" name="user.person.email">
	    	<input type="text" name="user.person.cellphone">
	    	<input type="text" name="user.person.telephone">
    	
    		<input type="text" name="user.person.address.neighborhood">
    		<input type="text" name="user.person.address.number">
    		<input type="text" name="user.person.address.cep">
    		<input type="text" name="user.person.address.street">
    		<input type="text" name="user.person.address.city">
    		
    		<input type="submit">
    	</form>
    	
    </div>

</div>



<div id="cadastro" class="col s12">
    <!--<div class="container">-->

    <!--<div class="card s5">-->

    <!--<form action="">-->
    <!--<div class="container">-->
    <!--<div class="row">-->
    <!--<div class="input-field col s5">-->
    <!--<input id="email" type="email" class="validate">-->
    <!--<label for="email">Email</label>-->
    <!--</div>-->
    <!--</div>-->
    <!--<div class="row">-->
    <!--<div class="input-field col s5">-->
    <!--<input id="password" type="password" class="validate">-->
    <!--<label for="password">Senha</label>-->
    <!--</div>-->
    <!--</div>-->
    <!--<div class="row">-->
    <!--<button class="btn waves-effect waves-light brown darken-4" type="submit" name="action">Submit-->
    <!--<i class="material-icons right">send</i>-->
    <!--</button>-->
    <!--</div>-->
    <!--<div class="row"></div>-->
    <!--</div>-->
    <!--</form>-->

    <!--</div>-->
    <!--</div>-->
</div>

<footer></footer>






<!--  Scripts-->
<script src="${pageContext.request.contextPath}/WebContent/WEB-INF/resources/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/WebContent/WEB-INF/resources/js/materialize.js"></script>
<script src="${pageContext.request.contextPath}/WebContent/WEB-INF/resources/js/init.js"></script>
<script src="${pageContext.request.contextPath}/WebContent/WEB-INF/resources/js/js.js"></script>
<script src="${pageContext.request.contextPath}/WebContent/WEB-INF/resources/js/jquery.parallax.js"></script>
<script>
    jQuery(document).ready(function(){
        // Declare parallax on layers
        jQuery('.parallax-layer').parallax(
                {mouseport: jQuery("#port")},

                {xparallax: "8%", yparallax: "6%", yorigin: 0.9},
                {xparallax: "10%", yparallax: "8%", yorigin: 0.9}
        )});
</script>
</body>
</html>
