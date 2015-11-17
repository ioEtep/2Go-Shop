<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cadjud.aspx.cs" Inherits="webpages_Cadastro_Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="description" content="A website about Bakeries"/>
    <meta name="author" content="Caiobep"/>
    <meta name="viewport" content="width=device-width,
     initial-scale=1"/>
    <link rel="stylesheet" type="text/css" href="../../../stylesheet/style.css">
    <link rel="icon" href="../../../images/Main.png">
    <title>Cadastro</title>
</head>
<body>
    <div id="notMainMenubar" class="menubar_notMain">
        <nav>
          <ul>
            <li id="logo_img">
              <a href="index.html">
                <img src="../../../images/MainWhite.png" alt="Home" width="60px" height="60px">
              </a>
            </li>
            <li><a class="menubar_a" href="../../Login/Login.aspx">Entrar</a></li>
            <li><a class="menubar_a" href="../cadastro.aspx">Cadastre-se</a></li>
            <li><a class="menubar_a" href="../../sobre.html">Quem Somos</a></li>
            <li><a class="menubar_a" href="../../contato.html">Contato</a></li>
            <li><a class="menubar_a" href="../../join.html">Faça Parte</a></li>
            <li><a id="loja_img" href="../../loja.html">
              <img src="../../../images/Shop.png" alt="Loja" height="60" width="40"/>
            </a></li>
          </ul>
        </nav>
    </div>
    <div class="HeaderCadastro">
       <h1>Bem-Vindo</h1>
       <p>Para configurar sua conta precisamos de algumas informações:</p>
    </div>

    <div class="cadFis">
        <div class="Fis">
        <div class="formCadastro-Fis">
             <form class="frmFisica" runat="server">
                 <asp:TextBox runat="server" MaxLength="30" ID="txtLogin" placeholder="Login"></asp:TextBox>
                 <asp:TextBox runat="server" MaxLength="30" ID="txtSenha" placeholder="Senha"></asp:TextBox>
                 <asp:TextBox runat="server" MaxLength="30" ID="txtNome" placeholder="Nome da Empresa"></asp:TextBox>
                 <asp:TextBox runat="server" MaxLength="30" ID="txtRNome" placeholder="Nome do Representante"></asp:TextBox>
                 <asp:TextBox runat="server" MaxLength="30" ID="txtEmail" placeholder="Email"></asp:TextBox>
                 <asp:TextBox runat="server" MaxLength="20" ID="txtEstado" placeholder="Estado"></asp:TextBox>
                 <asp:TextBox runat="server" MaxLength="30" ID="txtCidade" placeholder="Cidade"></asp:TextBox>
                 <asp:TextBox runat="server" MaxLength="30" ID="txtCnpj" placeholder="Cnpj"></asp:TextBox>
                 <br />
                 <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" />
                 <asp:SqlDataSource ID="SqlEmpresa" runat="server" ConnectionString="<%$ ConnectionStrings:escondidinhoConnectionString2 %>" InsertCommand="INSERT INTO empresa(nome_emp, nomeR_emp, login_emp, senha_emp, cidade_emp, uf_emp, email_emp, cnpj_emp) VALUES (@Nome, @NomeR, @Login, @Senha, @Cidade, @Estado, @Email, @Cnpj)" ProviderName="<%$ ConnectionStrings:escondidinhoConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [empresa]">
                     <InsertParameters>
                         <asp:ControlParameter ControlID="txtNome" Name="Nome" PropertyName="Text" />
                         <asp:ControlParameter ControlID="txtRNome" Name="NomeR" PropertyName="Text" />
                         <asp:ControlParameter ControlID="txtLogin" Name="Login" PropertyName="Text" />
                         <asp:ControlParameter ControlID="txtSenha" Name="Senha" PropertyName="Text" />
                         <asp:ControlParameter ControlID="txtCidade" Name="Cidade" PropertyName="Text" />
                         <asp:ControlParameter ControlID="txtEstado" Name="Estado" PropertyName="Text" />
                         <asp:ControlParameter ControlID="txtEmail" Name="Email" PropertyName="Text" />
                         <asp:ControlParameter ControlID="txtCnpj" Name="Cnpj" PropertyName="Text" />
                     </InsertParameters>
                 </asp:SqlDataSource>
                 <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                 <div class="validators">
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLogin" ErrorMessage="Preencha seu Login!"></asp:RequiredFieldValidator>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSenha" ErrorMessage="Preencha sua Senha!"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNome" ErrorMessage="Preencha o nome de sua empresa!"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtRNome" ErrorMessage="Preencha o nome do representante!"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" ErrorMessage="Preencha o eMail da empresa!"></asp:RequiredFieldValidator>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtCnpj" ErrorMessage="Preencha o Cnpj!"></asp:RequiredFieldValidator>
                 </div>
             </form>
         </div>
    </div>
    </div>
</body>
</html>
