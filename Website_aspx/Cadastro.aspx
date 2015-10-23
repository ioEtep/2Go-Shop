<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cadastro.aspx.cs" Inherits="Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="utf-8">
    <meta name="description" content="A website about Bakeries"/>
    <meta name="author" content="Caiobep"/>
    <meta name="viewport" content="width=device-width,
     initial-scale=1"/>
    <link rel="stylesheet" type="text/css" href="stylesheet/style.css">
    <link rel="icon" href="images/Main.png">
    <title>Cadastro</title>
</head>
<body>
    <div id="menubar_main" class="menubar">
        <nav>
          <ul>
            <li id="logo_img">
              <a href="index.html">
                <img src="images/Main.png" alt="Home" width="60px" height="60px">
              </a>
            </li>
            <li><a class="menubar_a" href="Entrar.aspx">Entrar</a></li>
            <li><a class="menubar_a" href="Cadastro.aspx">Cadastre-se</a></li>
            <li><a class="menubar_a" href="sobre.html">Quem Somos</a></li>
            <li><a class="menubar_a" href="contato.html">Contato</a></li>
            <li><a class="menubar_a" href="join.html">Faça Parte</a></li>
            <li><a id="loja_img" href="loja.html">
              <img src="images/Shop.png" alt="Loja" height="60" width="40"/>
            </a></li>
          </ul>
        </nav>
    </div>
   <form runat="server">
     <div id="FisOrJuri" runat="server" class="fmrChoose">
        <h1>Qual voce melhor se encaixa?</h1>
         <asp:Button ID="btnFisico" runat="server" Text="Pessoa Fisica" />
         <asp:Button ID="btnJuridico" runat="server" Text="Pessoa Juridica" />

    </div>

    <div class="frmCadastroFisica" runat="server">
         <asp:TextBox ID="cli_Nome" placeholder="Primeiro Nome" runat="server"></asp:TextBox>
         <asp:TextBox ID="cli_Sobrenome" placeholder="Sobrenome" runat="server"></asp:TextBox>
         <asp:TextBox ID="cli_Idade" placeholder="Sobrenome" runat="server"></asp:TextBox>
         <asp:TextBox ID="cli_Cpf" placeholder="Sobrenome" runat="server"></asp:TextBox>
         <asp:TextBox ID="TextBox6" placeholder="Sobrenome" runat="server"></asp:TextBox>
         <asp:TextBox ID="TextBox4" placeholder="Sobrenome" runat="server"></asp:TextBox>

    </div>

    <div class="frmCadastroJuridica" runat="server">
         <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
         <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </div>
       </form>
</body>
</html>
