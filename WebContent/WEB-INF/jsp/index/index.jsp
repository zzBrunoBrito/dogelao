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
    <div class="container">
        <div class="nav-wrapper">
            <div class="row">
                <div class="col s7 offset-s7">
                    <ul class="right tabs tabs-transparent">
                        <li class="tab"><a class="active" href="#home">Home</a></li>
                        <li class="tab"><a href="#singIn">Login</a></li>
                        <li class="tab"><a href="#singUp">Cadastro</a></li>
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
            <img class="doge" src="${pageContext.request.contextPath}/assets/images/doge-01.png" alt="">
        </div>
    </div>

    <div id="port" class="parallax-container">
        <p class="service-name animated parallax-layer">Dogelão</p>
        <p class="service-name shadow animated parallax-layer">Dogelão</p>
    </div>
</div>

<div id="singIn" class="">
    <div class="container">
        <form action="">
            <div class="card s5">

                <div class="container">
                    <div class="row">
                        <div class="input-field col s5  ">
                            <input id="emailLogin" type="email" class="validate">
                            <label for="emailLogin">Email</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s5">
                            <input id="passwordLogin" type="password" class="validate">
                            <label for="passwordLogin">Senha</label>
                        </div>
                    </div>
                    <div class="row"></div>
                </div>

            </div>

            <div class="row">
                <button class="btn waves-effect waves-light brown darken-4" type="submit" name="action">Entrar
                    <i class="material-icons right">send</i>
                </button>
            </div>
        </form>
    </div>
</div>



<div id="singUp" class="col s6">
    <div class="card s6">
        <form>

            <div class="row">
                <div class="input-field col s3">
                    <input id="login" type="text" class="validate" name="user.username">
                    <label for="login">Login</label>
                </div>

                <div class="input-field col s3">
                    <input placeholder="Placeholder" id="password" type="password" class="validate" name="user.password">
                    <label for="password">Senha</label>
                </div>
            </div>


            <div class="row">
                <div class="input-field col s3">
                    <input placeholder="Placeholder" id="name" type="password" class="validate" name="person.name">
                    <label for="name">Nome</label>
                </div>

                <div class="input-field col s3">
                    <input placeholder="Placeholder" id="bornDate" type="password" class="validate" name="person.bornDate">
                    <label for="bornDate">Data de Nascimento</label>
                </div>
            </div>


            <div class="row">
                <div class="input-field col s3">
                    <select name="person.sex">
                        <option value="M">Masculino</option>
                        <option value="F">Feminino</option>
                        <option value="O">Outro</option>
                    </select>
                    <label>Sexo</label>
                </div>

                <div class="input-field col s3">
                    <input placeholder="Placeholder" id="email" type="text" class="validate" name="person.email">
                    <label for="email">E-mail</label>
                </div>

                <div class="input-field col s3">
                    <input placeholder="Placeholder" id="telephone" type="text" class="validate" name="person.telephone">
                    <label for="telephone">Telefone</label>
                </div>

                <div class="input-field col s3">
                    <input placeholder="Placeholder" id="cellphone" type="text" class="validate" name="person.cellphone">
                    <label for="cellphone">Celular</label>
                </div>
            </div>


            <div class="row">
                <div class="input-field col s3">
                    <input placeholder="Placeholder" id="street" type="text" class="validate" name="address.street">
                    <label for="street">Rua</label>
                </div>

                <div class="input-field col s3">
                    <input placeholder="Placeholder" id="city" type="text" class="validate" name="address.city">
                    <label for="city">Cidade</label>
                </div>

                <div class="input-field col s3">
                    <input placeholder="Placeholder" id="neighborhood" type="text" class="validate" name="address.neighborhood">
                    <label for="neighborhood">Bairro</label>
                </div>
            </div>

            <div class="row">
                <div class="input-field col s3">
                    <input placeholder="Placeholder" id="cep" type="text" class="validate" name="address.cep">
                    <label for="cep">Cep</label>
                </div>

                <div class="input-field col s3">
                    <input placeholder="Placeholder" id="number" type="text" class="validate" name="address.number">
                    <label for="number">Número</label>
                </div>
            </div>

            <div class="row">
                <button class="btn waves-effect waves-light brown darken-4" type="submit" name="action">Cadastrar
                    <i class="material-icons right">send</i>
                </button>
            </div>
        </form>
    </div>
</div>

<footer></footer>


<!--  Scripts-->
<jsp:include page="../../../templates/script.jsp"/>
<script src="${pageContext.request.contextPath}/assets/js/js-index.js"></script>
<script>


    // Declare parallax on layers
    jQuery('.parallax-layer').parallax(
            {mouseport: jQuery("#port")},

            {xparallax: "8%", yparallax: "6%", yorigin: 0.9},
            {xparallax: "10%", yparallax: "8%", yorigin: 0.9}
    )


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

