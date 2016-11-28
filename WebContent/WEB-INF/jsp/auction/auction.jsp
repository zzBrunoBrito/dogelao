<%--
  Created by IntelliJ IDEA.
  User: leluk
  Date: 28/11/2016
  Time: 17:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dogelão - Lance</title>

    <link href="${pageContext.request.contextPath}/assets/css/style-auction.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    <jsp:include page="../../../templates/head.jsp"/>
</head>
<body>

<nav class="nav-extended brown darken-4">
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

<div class="row">
    <div class="card info-auction">
        <div class="card-content">
                <span class="card-title">
                    Título
                </span>
            <p class="truncate">Descrição do produto</p>
        </div>
    </div>
</div>

<div class="row">
    <ul class="collection bid-list">
        <li class="collection-item ">Alvin</li>
        <li class="collection-item ">Alvin</li>
        <li class="collection-item ">Alvin</li>
        <li class="collection-item ">Alvin</li>
        <li class="collection-item ">Alvin</li>
        <li class="collection-item ">Alvin</li>
        <li class="collection-item ">Alvin</li>
        <li class="collection-item ">Alvin</li>
        <li class="collection-item ">Alvin</li>
        <li class="collection-item ">Alvin</li>
        <li class="collection-item ">Alvin</li>
        <li class="collection-item ">Alvin</li>
        <li class="collection-item ">Alvin</li>
        <li class="collection-item ">Alvin</li>
        <li class="collection-item ">Alvin</li>
        <li class="collection-item ">Alvin</li>
    </ul>
</div>


<footer class="page-footer brown darken-4">
    <div class="container">
        <div class="row">
            <div class="col s7">
                <h5 class="white-text">Dê o seu lance</h5>
                <p class="grey-text text-lighten-4">O valor do seu lance será sempre o valor do último lance dado mais 5% do valor do produto</p>
            </div>
            <div class="col s5">
                <a class="waves-effect waves-light btn-large bid-button brown lighten-1 white-text">Lance</a>
            </div>
        </div>
    </div>
</footer>

<jsp:include page="../../../templates/script.jsp"/>
<script>
    $(".bid-button").click(function () {
        $("body").append(`
                    <div class="logo animated">
                        <div class="inner-circle">
                        <div class="border"></div>
                            <img class="doge" src="${pageContext.request.contextPath}/assets/images/doge-icon-01.png" alt="">
                        </div>
                    </div>
                    <p class="service-name animated">Feito</p>
                    <p class="service-name shadow animated">Feito</p>

                    <a class="waves-effect waves-light btn-large brown lighten-1 white-text animated">Voltar à Home</a>

                <div class="black-bg fadeTeste"></div>

                `);

        $(".black-bg").addClass("fadeTeste");
        setTimeout(function () {
            $(".logo, .service-name").addClass("bounceIn");
            $(".service-name+a").addClass("fadeIn")
        },200);
    });
</script>
</body>
</html>
