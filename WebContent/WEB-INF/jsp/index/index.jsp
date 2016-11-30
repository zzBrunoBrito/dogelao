<%--Created by IntelliJ IDEA.
  User: bruno
  Date: 11/21/16
  Time: 7:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Dogelão</title>
    	<link href="${pageContext.request.contextPath}/assets/css/style-index.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    	<jsp:include page="../../../templates/head.jsp"/>
    </head>

    <!-- CSS  -->

<body style="overflow: hidden;">


<nav class="nav-extended brown darken-4 animated" style="opacity: 0">
<a class="press-space">Pressione espaço para logar</a>
    <div class="container">
        <div class="nav-wrapper">
            
            <div class="row">
                <div class="col s7 offset-s7">
                    <ul class="right tabs tabs-transparent">
                        <li class="tab"><a class="active" href="#home">Home</a></li>
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
    <div class="logo animated">
        <div class="inner-circle">
            <div class="border"></div>
            <img class="doge" src="${pageContext.request.contextPath}/assets/images/doge-01.png" alt="">
        </div>
    </div>

    <div id="port" class="parallax-container">
        <p class="service-name animated parallax-layer">Dogelão</p>
        <p class="service-name shadow animated parallax-layer">Dogelão</p>
    </div>
</div>

<div id="modal1" class="modal bottom-sheet">
    <div class="modal-content">
      <form action="/dogepqp/login" method="post">
                <div class="container">
                    <div class="row">
                        <div class="input-field col s5">
                            <input id="login-username" type="text" name="user.username">
                            <label for="login-username">Login</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s5">
                            <input id="login-password" type="password" name="user.password">
                            <label for="login-password">Senha</label>
                        </div>
                    </div>
                    <div class="row">
                        <button class="btn waves-effect waves-light brown darken-4" type="submit" name="action">Entrar
                            <i class="material-icons right">send</i>
                        </button>
                    </div>
                </div>
      </form>
    </div>
  </div>

<div id="cadastro">
	<div class="container">
        <div class="card s5">
            <form action="register-user" method="post">
                <div class="container">

                    <div class="row">
                        <div class="input-field col s3">
                            <input id="username" type="text" name="user.username">
                            <label for="username">Login</label>
                        </div>

                        <div class="input-field col s3">
                            <input id="password" type="text" name="user.password">
                            <label for="password">Senha</label>
                        </div>

                    </div>

                    <div class="row">
                        <div class="input-field col s3">
                            <input id="name" type="text" name="user.person.name">
                            <label for="name">Nome</label>
                        </div>

                  		<div class="input-field col s3">
                            <input id="dateBirth" class="date" type="text" name="user.person.bornDate">
                            <label for="dateBirth">Data de Nascimento</label>
                        </div>

                        <div class="input-field col s2">
                            <input id="telephone" type="text" name="user.person.telephone">
                            <label for="telephone">Telefone</label>
                        </div>

                        <div class="input-field col s2">
                            <input id="cellphone" type="text" name="user.person.cellphone">
                            <label for="cellphone">Celular</label>
                        </div>
.
                        <div class="input-field col s2">
                            <select name="user.person.sex">
                                <option value="m">Masculino</option>
                                <option value="f">Feminino</option>
                                <option value="o">Outro</option>
                            </select>
                            <label>Sexo</label>
                        </div>

                    </div>

                    <div class="row">
                        <div class="input-field col s3">
                            <input id="street" type="text" name="address.street">
                            <label for="street">Rua</label>
                        </div>

                        <div class="input-field col s3">
                            <input id="neighborhood" type="text" name="address.neighborhood">
                            <label for="neighborhood">Bairro</label>
                        </div>

              

                        <div class="input-field col s3">
                            <input id="city" type="text" name="address.city">
                            <label for="city">Cidade</label>
                        </div>

                        <div class="input-field col s2">
                            <input id="number" type="text" name="address.number">
                            <label for="number">Número</label>
                        </div>
                    </div>
                    
                    <div class="row">
                    	<button class="btn waves-effect waves-light" type="submit" name="action">Submit
						    <i class="material-icons right">send</i>
						 </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<footer></footer>


<!--  Scripts-->
<jsp:include page="../../../templates/script.jsp"/>
<script src="${pageContext.request.contextPath}/assets/js/vanilla-masker.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.parallax.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/js-index.js"></script>
<script>
        var nDoge = 60;
        
        setTimeout(function(){
        	for(i=1; i < nDoge; i++){
                var duration = Math.random() * (4-2) + 2;
                var left = Math.random() * 50;
                var delay = Math.random() * 3;
                if(i >= nDoge/2){
                    left = -left;
                }
                $('.rain').append("<img class='icon' src='${pageContext.request.contextPath}/assets/images/doge-icon-01.svg' style='left:" + left + "%; animation-delay: " + delay + "s; animation-duration:" + duration + "s' >")
               
            }
        }, 1000);

</script>
</body>
</html>

