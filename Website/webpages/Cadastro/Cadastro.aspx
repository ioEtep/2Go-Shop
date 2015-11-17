<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cadastro.aspx.cs" Inherits="webpages_Cadastro_Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="description" content="A website about Bakeries"/>
    <meta name="author" content="Caiobep"/>
    <meta name="viewport" content="width=device-width,
     initial-scale=1"/>
    <link rel="stylesheet" type="text/css" href="../../stylesheet/style.css">
    <link rel="icon" href="../../images/Main.png">
    <title>Project Esondidinho</title>
</head>
<body>
    <div id="notMainMenubar" class="menubar_notMain">
        <nav>
          <ul>
            <li id="logo_img">
              <a href="../../index.html">
                <img src="../../images/MainWhite.png" alt="Home" width="60px" height="60px">
              </a>
            </li>
            <li><a class="menubar_a" href="../Login/Login.aspx">Entrar</a></li>
            <li><a class="menubar_a" href="cadastro.aspx">Cadastre-se</a></li>
            <li><a class="menubar_a" href="../sobre.html">Quem Somos</a></li>
            <li><a class="menubar_a" href="../contato.html">Contato</a></li>
            <li><a class="menubar_a" href="../join.html">Faça Parte</a></li>
            <li><a id="loja_img" href="../loja.html">
              <img src="../../images/Shop.png" alt="Loja" height="60" width="40"/>
            </a></li>
          </ul>
        </nav>
    </div>
    <div class="HeaderCadastro">
       <h1>Cadastro</h1>
       <p>Primeiro vamos selecionar uma opção:</p>
    </div>
    <div class="fis_jud">
        <div class="chooseBotoes">
             <input type="button" id="inputFisica" value="Pessoa Física" onClick="location.href='CadastroFisica/cadFis.aspx'"/>
             <input type="button" id="inputJuridica" value="Pessoa Jurídica" href="CadastroJuridica/cadjud.aspx"/>
         </div>
    </div>
</body>
</html>
