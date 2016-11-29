<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dogel�o - Home</title>
	<link href="${pageContext.request.contextPath}/assets/css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    <jsp:include page="../../../templates/head.jsp"/>
</head>
<body>
	<nav class="amber accent-1">
    <div class="nav-wrapper ">
        <form>
            <div center class="input-field">
                <input id="search" type="search" required placeholder="Pesquise por leil�es ou usu�rios aqui">
                <label for="search"><i class="material-icons">search</i></label>
                <i class="material-icons">close</i>
            </div>
        </form>
    </div>
</nav>

<ul id="slide-out" class="side-nav fixed brown darken-4">


    <h4 class="white-text">
        <svg style="width:24px;height:24px" viewBox="0 0 24 24">
            <path fill="#FFFFFF" d="M5,9.5L7.5,14H2.5L5,9.5M3,4H7V8H3V4M5,20A2,2 0 0,0 7,18A2,2 0 0,0 5,16A2,2 0 0,0 3,18A2,2 0 0,0 5,20M9,5V7H21V5H9M9,19H21V17H9V19M9,13H21V11H9V13Z" />
        </svg>
        Menu
    </h4>

    <li><a id="home" class="" href="#!">Home</a></li>
    <li>
        <ul class="collapsible collapsible-accordion">
            <li>
                <a class="collapsible-header">Categorias</a>
                <div style="margin-left: 16px;" class="collapsible-body">
                    <ul class="brown darken-4">
                        <a href="">
                            <svg style="width:24px;height:24px" viewBox="0 0 24 24">
                                <path fill="#FFFFFF" d="M7,6H17A6,6 0 0,1 23,12A6,6 0 0,1 17,18C15.22,18 13.63,17.23 12.53,16H11.47C10.37,17.23 8.78,18 7,18A6,6 0 0,1 1,12A6,6 0 0,1 7,6M6,9V11H4V13H6V15H8V13H10V11H8V9H6M15.5,12A1.5,1.5 0 0,0 14,13.5A1.5,1.5 0 0,0 15.5,15A1.5,1.5 0 0,0 17,13.5A1.5,1.5 0 0,0 15.5,12M18.5,9A1.5,1.5 0 0,0 17,10.5A1.5,1.5 0 0,0 18.5,12A1.5,1.5 0 0,0 20,10.5A1.5,1.5 0 0,0 18.5,9Z" />
                            </svg>
                            Eletr�nicos
                        </a>
                        <a href="#!">
                            <svg style="width:24px;height:24px" viewBox="0 0 24 24">
                                <path fill="#FFFFFF" d="M20,17H4V5H20M20,3H4C2.89,3 2,3.89 2,5V17A2,2 0 0,0 4,19H8V21H16V19H20A2,2 0 0,0 22,17V5C22,3.89 21.1,3 20,3Z" />
                            </svg>
                            Eletrodom�sticos
                        </a>
                        <a href="#!">
                            <svg style="width:24px;height:24px" viewBox="0 0 24 24">
                                <path fill="#FFFFFF" d="M5,11L6.5,6.5H17.5L19,11M17.5,16A1.5,1.5 0 0,1 16,14.5A1.5,1.5 0 0,1 17.5,13A1.5,1.5 0 0,1 19,14.5A1.5,1.5 0 0,1 17.5,16M6.5,16A1.5,1.5 0 0,1 5,14.5A1.5,1.5 0 0,1 6.5,13A1.5,1.5 0 0,1 8,14.5A1.5,1.5 0 0,1 6.5,16M18.92,6C18.72,5.42 18.16,5 17.5,5H6.5C5.84,5 5.28,5.42 5.08,6L3,12V20A1,1 0 0,0 4,21H5A1,1 0 0,0 6,20V19H18V20A1,1 0 0,0 19,21H20A1,1 0 0,0 21,20V12L18.92,6Z" />
                            </svg>
                            Autom�veis
                        </a>
                        <a href="#!">
                            <svg style="width:24px;height:24px" viewBox="0 0 24 24">
                                <path fill="#FFFFFF" d="M7,6H9A2,2 0 0,1 11,8V12H5V8A2,2 0 0,1 7,6M15,6H17A2,2 0 0,1 19,8V12H13V8A2,2 0 0,1 15,6M1,9H2A1,1 0 0,1 3,10V12A2,2 0 0,0 5,14H19A2,2 0 0,0 21,12V11L21,10A1,1 0 0,1 22,9H23A1,1 0 0,1 24,10V19H21V17H3V19H0V10A1,1 0 0,1 1,9Z" />
                            </svg>
                            M�veis
                        </a>
                        <a href="#!">
                            <svg style="width:24px;height:24px" viewBox="0 0 24 24">
                                <path fill="#FFFFFF" d="M6,21V8A2,2 0 0,1 8,6L16,3V6A2,2 0 0,1 18,8V21H12V16H8V21H6M14,19H16V16H14V19M8,13H10V9H8V13M12,13H16V9H12V13Z" />
                            </svg>
                            Im�veis
                        </a>
                        <a href="#!">
                            <svg style="width:24px;height:24px" viewBox="0 0 24 24">
                                <path fill="#FFFFFF" d="M12,2C15.31,2 18,4.66 18,7.95C18,12.41 12,19 12,19C12,19 6,12.41 6,7.95C6,4.66 8.69,2 12,2M12,6A2,2 0 0,0 10,8A2,2 0 0,0 12,10A2,2 0 0,0 14,8A2,2 0 0,0 12,6M20,19C20,21.21 16.42,23 12,23C7.58,23 4,21.21 4,19C4,17.71 5.22,16.56 7.11,15.83L7.75,16.74C6.67,17.19 6,17.81 6,18.5C6,19.88 8.69,21 12,21C15.31,21 18,19.88 18,18.5C18,17.81 17.33,17.19 16.25,16.74L16.89,15.83C18.78,16.56 20,17.71 20,19Z" />
                            </svg>
                            Terrenos e Lotes
                        </a>
                        <a href="#!">
                            <svg style="width:24px;height:24px" viewBox="0 0 24 24">
                                <path fill="#FFFFFF" d="M4,18V20H8V18H4M4,14V16H14V14H4M10,18V20H14V18H10M16,14V16H20V14H16M16,18V20H20V18H16M2,22V8L7,12V8L12,12V8L17,12L18,2H21L22,12V22H2Z" />
                            </svg>
                            Aparelhos Industriais
                        </a>
                    </ul>
                </div>
            </li>
        </ul>
    </li>
    <li><a id="profile" class="menu-item" href="#profile-panel">Meu Perfil</a></li>
    <li><a id="config" class="menu-item" href="#config-panel">Configura��es</a></li>

    <h4 class="white-text">
        <svg style="width:24px;height:24px" viewBox="0 0 24 24">
            <path fill="#FFFFFF" d="M5,13H19V11H5M3,17H17V15H3M7,7V9H21V7" />
        </svg>
        Notifica��es
    </h4>

    <!--<img src="images/doge-icon-01.svg" alt="">-->
</ul>
<!--<li data-activates="slide-out"></li>-->


<main>
    <div class="row">
        <div class="col s9 gambi">
            <ul class="tabs">
                <li class="tab col s3"><a class="active brown-text" href="#new">Recentes</a></li>
                <li class="tab col s3"><a class="brown-text" href="#hot">Novos</a></li>
                <li class="tab col s3"><a class="brown-text" href="#ending">Usados</a></li>
            </ul>
        </div>
       
        <div id="new" class="col s12">
            <div class="row">
                <div class="col s4">
                    <div class="card medium">
                        <div class="card-image">
                            <img src="sample-1.jpg" >
                            <span class="card-title">Card Title</span>
                        </div>
                <c:forEach var="auction" items="${recentAuction}">
                    <div class="col s4">
                        <div class="card medium">
                            <div class="card-image">
                                <img src="${pageContext.request.contextPath}/assets/images/doge-01.png" >
                                <span class="card-title">${auction.item.name}</span>
                            </div>
                            <div class="card-content">
                            </div>
                            <div class="card-action">
                                <a href="#">Doge lance</a>
                            </div>
                        </div>
                     </div>
                </c:forEach>
            </div>
        </div>
    </div>
    <div id="hot" class="col s12">Test 2</div>
    <div id="ending" class="col s12">Test 4</div>

    <!--bot�o de adicionar leil�o-->
    <div class="fixed-action-btn horizontal">
        <a class="modal-trigger btn-floating btn-large waves-effect waves-light brown tooltipped menu-item" href="#auction-panel" data-position="top" data-delay="50" data-tooltip="Leiloar item">
            <i class="large material-icons">library_add</i>
        </a>
    </div>

    <div id="auction-panel" class="modal bottom-sheet">
        <div class="modal-content">
            <h4>Preencha o formul�rio abaixo</h4>
            <form action="/dogepqp/register-auction" method="POST">
                <div class="row">
                    <div class="input-field col s6">
                        <input id="item_name" type="text"  placeholder=" " name="auction.item.name">
                        <label for="item_name">Nome do item</label>
                    </div>
                    <div class="input-field col s6">
                        <textarea id="descripition" class="materialize-textarea" placeholder="Informa��es relevantes sobre o item"></textarea>
                        <label for="descripition">Descri��o</label>
                    </div>
                </div>
                <div class="row">

                    <!--TODO: ADICIONAR MASCARA-->
                    <div class="input-field col s3">
                        <input id="price" type="text" placeholder=""name="auction.item.price">
                        <label for="price">Pre�o inicial</label>
                    </div> 

                    <!--TODO: ADICIONAR MASCARA
                    <div class="input-field col s3">
                        <input id="time" type="date" placeholder="HH:MM" name="auction.durationTime">
                        <label for="time">Dura��o inicial</label>
                    </div>
                </div>-->

                <div class="row">
                    <div class="input-field col s3">
                        <select name="auction.item.isUsed">
                            <option value="false">Novo</option>
                            <option value="true">Usado</option>
                        </select>
                        <label>Estado de Uso</label>
                    </div>
                    
                    <div class="input-field col s3">
                        <select name="auction.item.category">
                            <option value="ELETRONICO">ELETRONICO</option>
                            <option value="ELETRODOMESTICO">ELETRODOMESTICO</option>
                            <option value="AUTOMOVEL">AUTOMOVEL</option>
                            <option value="MOVEL">MOVEL</option>
                            <option value="IMOVEL">IMOVEL</option>
                            <option value="TERRENO">TERRENO</option>
                            <option value="INDUSTRIAL">INDUSTRIAL</option>
                        </select>
                        <label>Estado de Uso</label>
                    </div>

                    <!--  <div class="file-field input-field col s5">
                        <div class="btn">
                            <span>Imagem</span>
                            <input type="file" name="auction.item.img">
                        </div>
                        <div class="file-path-wrapper">
                            <input class="file-path validate" type="text">
                        </div>
                    </div>-->

                    <div class="col">
                        <div class="image-container">
                            <span class="helper"></span>
                            <img id="output">
                        </div>
                    </div>
                </div>
            <input type="submit">
            </form>

        </div>
        <div class="modal-footer">
            
        </div>
        
    </div>
    

    <div id="config-panel" class="modal bottom-sheet">
        <div class="modal-content">
            <div class="row">
                <h3>Ativar notifica��es para:</h3>
                <h6>Voc� ser� notificado sempre que um novo item das categorias selecionadas estiver dispon�vel</h6>
            </div>
            <form action="">
                <div class="row">
                    <div class="col s3">
                        <input type="checkbox" class="filled-in" id="eletronicos" />
                        <label for="eletronicos">Eletr�nicos</label>
                    </div>

                    <div class="col s3 offset-s3">
                        <input type="checkbox" class="filled-in" id="eletrodomesticos" />
                        <label for="eletrodomesticos">Eletrodom�sticos</label>
                    </div>
                </div>

                <div class="row">
                    <div class="col s3">
                        <input type="checkbox" class="filled-in" id="automoveis" />
                        <label for="automoveis">Autom�veis</label>
                    </div>

                    <div class="col s3 offset-s3">
                        <input type="checkbox" class="filled-in" id="moveis" />
                        <label for="moveis">M�veis</label>
                    </div>
                </div>

                <div class="row">
                    <div class="col s3">
                        <input type="checkbox" class="filled-in" id="imoveis" />
                        <label for="imoveis">Im�veis</label>
                    </div>

                    <div class="col s3 offset-s3">
                        <input type="checkbox" class="filled-in" id="terrenos" />
                        <label for="terrenos">Terrenos e Lotes</label>
                    </div>
                </div>

                <div class="row">
                    <div class="col s5">
                        <input type="checkbox" class="filled-in" id="industriais" />
                        <label for="industriais">Aparelhos Industriais</label>
                    </div>
                </div>
            </form>
        </div>
        <div class="modal-footer">
            <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Salvar</a>
        </div>
    </div>

    <div id="profile-panel" class="modal bottom-sheet">
        <div class="modal-content">

            <form action="">
                <div class="row">
                    <h4>Informa��es Pessoais & Contato</h4>
                        <div class="input-field col s3">
                            <input placeholder="" id="name" type="text">
                            <label for="name">Nome</label>
                        </div>

                        <div class="input-field col s3">
                            <input placeholder="" id="email" type="email" class="validate">
                            <label for="email">E-mail</label>
                        </div>

                        <div class="input-field col s3">
                            <input placeholder="" id="phone" type="text" class="phone">
                            <label for="phone">Telefone</label>
                        </div>

                    <div class="input-field col s3">
                        <input type="date" id="date-birth" placeholder="" class="datepicker">
                        <label for="date-birth">Data de Nascimento</label>
                    </div>
                </div>
                <div class="row">
                    <h4>Localidade</h4>
                    <div class="input-field col s3">
                        <input placeholder="" id="street" type="text">
                        <label for="street">Rua</label>
                    </div>

                    <div class="input-field col s3">
                        <input placeholder="" id="neighborhood" type="text">
                        <label for="neighborhood">Bairro</label>
                    </div>

                    <div class="input-field col s1">
                        <input placeholder="" id="house-number" type="text">
                        <label for="house-number">N�mero</label>
                    </div>

                    <div class="input-field col s3">
                        <input placeholder="" id="city" type="text">
                        <label for="city">Cidade</label>
                    </div>
                </div>
                <div class="row">
                    <h4>Conta</h4>
                    <div class="input-field col s3">
                        <input placeholder="" id="login" type="text">
                        <label for="login">Login</label>
                    </div>

                    <div class="input-field col s3">
                        <input placeholder="" id="password" type="password">
                        <label for="password">Senha</label>
                    </div>
                </div>
            </form>

            <div class="row">
                <h4>Meus Items em Leil�o</h4>
            </div>

            <div class="row">
                <h4>Itens Adquiridos por Mim</h4>
            </div>
        </div>
        <div class="modal-footer">
            <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Salvar</a>
        </div>
    </div>
            </div>
    </div>

</main>


    <jsp:include page="../../../templates/script.jsp"/>
    <script src="${pageContext.request.contextPath}/assets/js/vanilla-masker.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/js.js"></script>
</body>
</html>