﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="webpages_adm_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="stylesheet/style.css" />
    <title>Administrador</title>
</head>
<body>
    <div class="sidebar">
        
    </div>
    <div class="headerImage">
        <p>Bem Vindo!</p>
        <p>Este é o Painel do Administrador</p>
        <p>Fique a vontade para desfrutar de todos os nossos recursos!</p>
    </div>
    <div class="appBar">
       <input type="button" id="Clientes"/>
       <input type="button" id="Funcionarios" />  
       <input type="button" id ="Produtos" />
       <input type="button" id="Estatisticas" />
    </div>
</body>
</html>
