<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Entrar.aspx.cs" Inherits="stylesheet_Entrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="description" content="A website about Bakeries"/>
    <meta name="author" content="Caiobep"/>
    <meta name="viewport" content="width=device-width,
     initial-scale=1"/>
    <link rel="stylesheet" type="text/css" href="stylesheet/style.css"/>
    <link rel="icon" href="images/Main.png"/>
    <title>Login</title>
</head>
<body>
  <!-- StyleSheet -->
    <style>
  @charset "UTF-8";

body
{
font-family: "San Francisco", "Helvetica Neue", "Lucida Grande";

}
a{
text-decoration: none;
color:black;
}
main{
padding: 0;
margin: 0;
}
#menubar_main
{
position: absolute;
top: 0;
left: 0;

width: 100%;
height: 70px;
margin: 0;
padding: 0;

opacity: .9;
background: #545151;
}

.menubar ul
{
margin: 0;

list-style: none;

color: white


text-decoration: none;
}

.menubar a
{
text-decoration: none;

color: white;
}

.menubar li
{
font-family: LucidaGrande;
font-size: 14.22px;
line-height: 17px;

display: inline;

color: #fff;
color: white
text-decoration: none;
}

.menubar ul,
li,
a
{
padding: 1.5px 25px;
}

.menubar_a
{
position: relative;
top: -20px;
}

#header_img
{
position: absolute;
z-index: -1;
top: 0;
left: 0;

width: 100%;
height: 700px;
}

#logo_img
{
position: relative;
z-index: 1;
}

#loja_img
{
position: relative;
z-index: ;
right: 20px;
}

main
{
position: relative;
top: 700px;
text-align: center;
}


#menubar_main
{
/* MainMenu: */
opacity: .9;
background: #545151;
}
/*-----------Main------------*/
#simpleBar{
margin-top: 0;
margin-bottom: 0;
padding: 0;
}

.MainContent h1{
/* Porque Participar?: */
font-family: HannotateSC-W5;
font-size: 36px;
color: rgba(0,0,0,0.65);
line-height: 50px;
}
/*-----------------Destaque------------------*/
.Content_Destaque {
/*local div*/
position:relative;
top:50%;
width: 836px;
height: 291px;

padding: 20px;
}
.Content_Destaque p{
/*texto div local*/
position:relative;
top:10%;
left:50%;
float: left;
max-width: 370px;
text-align: left;
font-family: HannotateSC-W5;
font-size: 17px;
color: #000000;
line-height: 17px;
}

.Content_Destaque h2{
/*titulo div local*/
position:relative;
left:14%;
top:4%;
color:black;
font-family: HannotateSC-W5;
font-size: 25.52px;
color: #000000;
line-height: 36px;
}

#Desc_Icon{
/*icone local*/
position:absolute;
top:15%;
}

#Desc_Main_Image{
/*Imagem local*/
position: absolute;
margin:0;
padding: 0;
left:0;
top:40px;
width:405px;
height:260px;
}
/*---------------Velocidade----------------------*/
.Content_Velocidade{

position:relative;
top:50%;
width: 836px;
left:26%;
height: 291px;
padding: 20px;
}
.Content_Velocidade p{
/*texto div Velocidade*/
position:relative;
top:15%;
left:8%;
float: left;
max-width: 370px;
text-align: left;
font-family: HannotateSC-W5;
font-size: 17px;
color: #000000;
line-height: 17px;
}

#Vel_Main_Image{
/*Imagem Velocidade*/
position: absolute;
margin:0;
padding: 0;
left:55%;
top:40px;
width: 350px;
}

#Vel_Icon{
/*icone Velocidade*/
position:absolute;
top:20%;
left:5%;
}

.Content_Velocidade h2{
/*titulo div local*/
position:relative;
left:-18%;
top:10%;
color:black;
font-family: HannotateSC-W5;
font-size: 25.52px;
color: #000000;
line-height: 36px;
}
/*------------Local-------------*/
.Content_Local {
/*local div*/
position:relative;
top:20px;
left: -10px;
width: 836px;
height: 291px;
padding: 20px;
}
.Content_Local p{
/*texto div local*/
position:relative;
top:10%;
left:50%;
float: left;
max-width: 370px;
text-align: left;
font-family: HannotateSC-W5;
font-size: 17px;
color: #000000;
line-height: 17px;
}

.Content_Local h2{
/*titulo div local*/
position:relative;
left:27%;
top:10%;
color:black;
font-family: HannotateSC-W5;
font-size: 25.52px;
color: #000000;
line-height: 36px;
}

#local_Icon{
/*icone local*/
position:absolute;
top:15%;
height: 60px;
}

#local_Main_Image{
/*Imagem destaque*/
position: absolute;
margin:0;
padding: 0;
left:0;
top:40px;
width:405px;
height:260px;
}
/*----------------Organiza��o----------------*/
.Content_org{
position:relative;
top:50%;
width: 836px;
left:26%;
height: 291px;
padding: 20px;
}
.Content_org p{
  /*texto div Velocidade*/
  position:relative;
  top:5%;
  left:7%;
  float: left;
  max-width: 370px;
  text-align: left;
  font-family: HannotateSC-W5;
  font-size: 17px;
  color: #000000;
  line-height: 17px;
}

#org_Main_Image{
/*Imagem Velocidade*/
position: absolute;
margin:0;
padding: 0;
left:53.5%;
top:40px;
height:250px;
z-index: 0;
}

#org_Icon{
/*icone Velocidade*/
position:absolute;
height: 60px;
top:18%;
left:5%;
}

.Content_org h2{
/*titulo div local*/
position:relative;
left:-12%;
top:10%;
color:black;
font-family: HannotateSC-W5;
font-size: 25.52px;
color: #000000;
line-height: 36px;

z-index: 1;
}


/*------------Footer--------------*/

.fotter{
position: relative;
margin: 20
height:200px;
width:100%;
background: #665D5D;
border: 1px solid #979797;
font-family: HannotateSC-W5;
font-size: 18.41px;
color: rgba(255,255,255,0.65);
}
.fotter_mail{
font-family: HannotateSC-W5;
font-size: 18.41px;
color: rgba(255,255,255,0.65);
line-height: 26px;
}

#fotter_ioetep{
color:white;


}


/*+++++++++++++++++LOGIN++++++++++++++++++++/*/

.frmLogin
{
position: absolute;
top:23.5%;
left:41.5%;
font-family: "San Francisco", "Helvetica Neue", "Lucida Grande";
font-size: 36px;
}
.frmLogin label{
text-align: center;
color: #F6F6F6;
position:absolute;
top:-30px;
left:50px;
}
.frmLogin input{
width:300px;
height:35px;
font-size: 18px;
}

#inputlogin{
position:absolute;
left:-47px;
top:60px;
}

#inputPassword{
position:absolute;
left:-47px;
top:150px;
}

#btnlogin{
font-family: "San Francisco", "Helvetica Neue", "Lucida Grande";
font-size: 24px;
position: absolute;
top:290px;
height: 50px;
width: 200px;
}

#btncadastro{
font-family: "San Francisco", "Helvetica Neue", "Lucida Grande";
font-size: 24px;
position: absolute;
top:370px;
height: 50px;
width: 200px;
  }

    /*******************TELA CADASTRO*********************/

  </style>
    <div id="menubar_main" class="menubar">
        <nav>
          <ul>
            <li id="logo_img">
              <a href="index.html">
                <img src="images/Main.png" alt="Home" width="60px" height="60px">
              </a>
            </li>
            <li><a class="menubar_a" href="entrar.html">Entrar</a></li>
            <li><a class="menubar_a" href="cadastro.html">Cadastre-se</a></li>
            <li><a class="menubar_a" href="sobre.html">Quem Somos</a></li>
            <li><a class="menubar_a" href="contato.html">Contato</a></li>
            <li><a class="menubar_a" href="join.html">Faça Parte</a></li>
            <li><a id="loja_img" href="loja.html">
              <img src="images/Shop.png" alt="Loja" height="60" width="40"/>
            </a></li>
          </ul>
        </nav>
    </div>
    <header>
       <div class="header_div">
         <form class="frmLogin" runat="server">
           <label>Entrar</label>
         </br>
           <asp:Textbox ID="inputlogin" Placeholder="Login" runat="server"></asp:Textbox>
         </br>
           <asp:Textbox id="inputPassword" placeholder="Senha" runat="server" TextMode="password" ></asp:Textbox>
         </br>
           <asp:button id="btnlogin" runat="server" text="Entrar" />
         </br>
           <asp:Button id="btncadastro" runat="server" Text="Cadastre-se" PostBackUrl="~/Cadastro.aspx"/>
         </form>
        <img  id="header_img" alt="Project Escondidinho" src="images/login_bkg.png">
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
