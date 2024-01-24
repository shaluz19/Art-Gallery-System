<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="Userlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>LoginPage</title>
        <link href="Css/Styles1.css" rel="stylesheet"/>
    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
   
</head>
<body>
   <div class="loginbox">
       <img src="Pics/logicon1.jpg"  alt="Alternate Text" class="user"/>
       <h2>LOG IN HERE</h2>
       <form id="Form1" runat="server">
           <br/>
           <asp:Label  ID="Label1" runat="server" Text="EMAIL" CssClass="lblemail"></asp:Label>
           <asp:TextBox Type="Text" ID="txtUsername" runat="server" placeholder="ENTER EMAIL ID" CssClass="txtemail"></asp:TextBox>
           <asp:Label ID="Label2" runat="server" Text="PASSWORD" CssClass="lblpass" Visible="True"></asp:Label>
           <asp:TextBox Type="Text" ID="txtPass" runat="server" placeholder="ENTER PASSWORD" TextMode="Password" CssClass="txtpass"></asp:TextBox>
          <center> <asp:CheckBox ID="CheckBox1" runat="server" Text="SHOW PASSWORD" Forecolor="White"/></center><br/>
          
           <asp:Button ID="Button1" runat="server" Text="SIGN IN" CssClass="btnsubmit" OnClick="Button1_Click" />
           <div class ="col-md-6 ">
                    <asp:Label ID="lblError" CssClass ="text-danger " runat="server" ForeColor="Red"></asp:Label>
                   </div>
          <center> <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/forgotpswd.aspx"><b>FORGOT PASSWORD</b></asp:HyperLink></center>
       <br/><br/><br/><br/>
       <center>    <asp:ImageButton ID="ImageButton1" runat="server"  Width="100px" Height="100px" ImageUrl="~/pics/homeicon.png" PostBackUrl="~/Homepage.aspx" /></center>
       </form>
   </div>

</body>
</html>
