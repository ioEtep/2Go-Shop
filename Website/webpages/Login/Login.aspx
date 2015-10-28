<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="webpages_Login_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="pt-br">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,
     initial-scale=1"/>
    <link rel="stylesheet" type="text/css" href="stylesheet/style.css"/>
    <link rel="icon" href="../../images/Main.png"/>
    <title>Login</title>
</head>
<body>
  <div id="menubar_main" class="menubar">
   <nav>
      <ul>
        <li id="logo_img">
           <a href="../../index.html">  
                <img src="../../images/Main.png" alt="Home" width="60px" height="60px">
            </a>
            </li>
            <li><a class="menubar_a" href="../Login/Login.aspx">Entrar</a></li>
            <li><a class="menubar_a" href="../Cadastro/cadastro.aspx">Cadastre-se</a></li>
            <li><a class="menubar_a" href="../sobre.html">Quem Somos</a></li>
            <li><a class="menubar_a" href="../contato.html">Contato</a></li>
            <li><a class="menubar_a" href="../join.html">Faça Parte</a></li>
            <li><a id="loja_img" href="../loja.html">
            <img src="../../images/Shop.png" alt="Loja" height="60" width="40"/> 
               <a>
            </li>
      </ul>
  </nav>
    </div>
    <header>
       <div class="header_div">
         <form class="frmLogin" runat="server">
           <label>Entrar</label>
         </br>
           <asp:Textbox ID="inputlogin" placeholder="Login" runat="server"></asp:Textbox>
         </br>
           <asp:Textbox id="inputPassword" placeholder="Senha" runat="server" TextMode="password" ></asp:Textbox>
         </br>
           <asp:button id="btnlogin" runat="server" text="Entrar" />
         </br>
           <asp:Button id="btncadastro" runat="server" Text="Cadastre-se" PostBackUrl="~/Cadastro.aspx"/>
         </form>
        <img  id="header_img" alt="Project Escondidinho" src="../../images/login_bkg.png">
       </div>
    </header>
    <main>
      <div class="fotter">
        <p class="fotter_mail">Email:<a class="fotter_mail" href="mailto: caiobep@me.com">Caiobep@me.com</a></p>

        <p>Made by <a id="fotter_ioetep" target="_tab" href ="https://github.com/ioEtep">io.Etep</a></p>
      </div>
   </main>
</body>
</html>
