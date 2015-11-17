<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cadFis.aspx.cs" Inherits="webpages_Cadastro_Cadastro" %>

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
    <title>Project Esondidinho</title>
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
       <h1>Cadastro</h1>
       <p>Preencha o formulario:</p>
    </div>
    <div class="cadFis">
        <div class="formCadastro-Fis">
             <form class="frmFisica" runat="server">
                 <asp:TextBox runat="server" MaxLength="30" ID="txtLogin" placeholder="Login"></asp:TextBox>
                 <asp:TextBox runat="server" MaxLength="30" ID="txtSenha" placeholder="Senha"></asp:TextBox>
                 <asp:TextBox runat="server" MaxLength="30" ID="txtpNome" placeholder="Primeiro Nome"></asp:TextBox>
                 <asp:TextBox runat="server" MaxLength="30" ID="txtsNome" placeholder="Segundo Nome"></asp:TextBox>
                 <asp:TextBox runat="server" MaxLength="30" ID="txtCelular" placeholder="Celular"></asp:TextBox>
                 <asp:TextBox runat="server" MaxLength="20" ID="txtDataNas" placeholder="Data de Nascimento"></asp:TextBox>
                 <asp:TextBox runat="server" MaxLength="30" ID="txtCidade" placeholder="Cidade"></asp:TextBox>
                 <asp:TextBox runat="server" MaxLength="30" ID="txtEstado" placeholder="Estado"></asp:TextBox>
                 <asp:TextBox runat="server" MaxLength="30" ID="txtNumero" placeholder="Numero"></asp:TextBox>
                 <asp:TextBox runat="server" MaxLength="30" ID="txtBairro" placeholder="Bairro"></asp:TextBox>
                 <asp:TextBox runat="server" MaxLength="30" ID="txtRua" placeholder="Rua"></asp:TextBox>
                 <asp:TextBox runat="server" MaxLength="30" ID="txtEmail" placeholder="Email"></asp:TextBox>
                 <asp:TextBox runat="server" MaxLength="30" ID="txtCep" placeholder="Cep"></asp:TextBox>
                 <asp:TextBox runat="server" MaxLength="30" ID="txtCpf" placeholder="Cpf"></asp:TextBox>
                 <asp:RadioButtonList ID="rdlSexo" runat="server">
                     <asp:ListItem>Masculino</asp:ListItem>
                     <asp:ListItem>Feminino</asp:ListItem>
                 </asp:RadioButtonList>
                 <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" OnClick="btnCadastrar_Click" />
                 <asp:SqlDataSource ID="sqlCliente" runat="server" ConnectionString="<%$ ConnectionStrings:escondidinhoConnectionString %>" InsertCommand="INSERT INTO clientes(nome_cli, nome2_cli, login_cli, senha_cli, end_cli, num_cli, bairro_cli, cidade_cli, uf_cli, cep_cli, email_cli, cpf_cli, dtnasc_cli, sex_cli, celular_cli) VALUES (@NOME, @NOME2, @LOGIN, @SENHA, @RUA, @NUM, @BAIRRO, @CIDADE, @ESTADO, @CEP, @EMAIL, @CPF, @DTNASC, @SEX, @CELULAR)" ProviderName="<%$ ConnectionStrings:escondidinhoConnectionString.ProviderName %>" SelectCommand="SELECT * FROM clientes">
                     <InsertParameters>
                         <asp:ControlParameter ControlID="txtpNome" Name="Nome" PropertyName="Text" />
                         <asp:ControlParameter ControlID="txtsNome" Name="Nome2" PropertyName="Text" />
                         <asp:ControlParameter ControlID="txtLogin" Name="Login" PropertyName="Text" />
                         <asp:ControlParameter ControlID="txtSenha" Name="Senha" PropertyName="Text" />
                         <asp:ControlParameter ControlID="txtRua" Name="Rua" PropertyName="Text" />
                         <asp:ControlParameter ControlID="txtNumero" Name="Num" PropertyName="Text" />
                         <asp:ControlParameter ControlID="txtBairro" Name="Bairro" PropertyName="Text" />
                         <asp:ControlParameter ControlID="txtCidade" Name="Cidade" PropertyName="Text" />
                         <asp:ControlParameter ControlID="txtEstado" Name="Estado" PropertyName="Text" />
                         <asp:ControlParameter ControlID="txtCep" Name="Cep" PropertyName="Text" />
                         <asp:ControlParameter ControlID="txtEmail" Name="Email" PropertyName="Text" />
                         <asp:ControlParameter ControlID="txtCpf" Name="Cpf" PropertyName="Text" />
                         <asp:Parameter Name="Dtnasc" />
                         <asp:ControlParameter ControlID="rdlSexo" Name="Sex" PropertyName="SelectedValue" />
                         <asp:ControlParameter ControlID="txtCelular" Name="Celular" PropertyName="Text" />
                     </InsertParameters>
                 </asp:SqlDataSource>
                 <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                 <div class="validators">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtLogin" ErrorMessage="Preencha o Login!"></asp:RequiredFieldValidator>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtSenha" ErrorMessage="Preencha sua Senha!"></asp:RequiredFieldValidator>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtpNome" ErrorMessage="Preencha seu Nome!"></asp:RequiredFieldValidator>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtsNome" ErrorMessage="Preencha seu Sobrenome!"></asp:RequiredFieldValidator>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Preencha o número de sua residencia!" ControlToValidate="txtNumero"></asp:RequiredFieldValidator>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtEmail" ErrorMessage="Preencha seu eMail!"></asp:RequiredFieldValidator>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtCep" ErrorMessage="Preencha o Cep!"></asp:RequiredFieldValidator>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtCpf" ErrorMessage="Preencha o Cpf!"></asp:RequiredFieldValidator>

                </div>
             </form>
         </div>
    </div>
</body>
</html>
