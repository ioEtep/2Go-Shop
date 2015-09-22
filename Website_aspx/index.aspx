<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en-us">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    <title>Project Escondidinho</title>
</head>
<body>
    <form id="frmHome" runat="server">
    <div class="BigDaddy">
     <div class="menu" id="menu">
             <ul>
                 <li id="homeLogo"><figure width="50px" height="50px">
                     <a href="">
                         <img width="50px" height="50px" src="images/Main.png" href="index.html" alt="home"/>
                         </a>
                     </figure></li>
                 <li><a href="">Login</a></li>
                 <li><a href="">Join</a></li>
                 <li><a href="">Vantages</a></li>
                 <li><a href="">About Us</a></li>
                 <li><a href="">Contact</a></li>
                 <li id="storeLogo"><figure width="50px" height="50px">
                     <a href="">
                         <img width="50px" height="60px" src="images/Shop.png" href="index.html" alt="Store"/></figure>
                     </a>
                 </li>
             </ul>
     </div>
        <div class="content">
            <figure>  
                <img src="images/PadariaDemo.jpg" width="100%" height="800px"/>
            </figure>
        </div>
    </div>
    </form>
</body>
</html>
