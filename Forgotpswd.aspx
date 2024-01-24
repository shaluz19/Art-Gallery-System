<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forgotpswd.aspx.cs" Inherits="Forgotpswd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>FORGOT PASSWORD</title>
     <link href="Css/StyleFP.css" rel="stylesheet"/>
</head>
<body style="background-image:url('Pics/background-2633962_1280.jpg')">
     <div class="loginbox">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="Pics/logicon1.jpg"  alt="Alternate Text" class="user"/>
       <h2>LOGIN HERE</h2>
       <form id="Form1" runat="server">
           <br/>
           <asp:Label ID="Label4" runat="server" Text="USERNAME" CssClass="lblemail"></asp:Label>
           <asp:TextBox ID="TextBox4" runat="server" placeholder="USERNAME" CssClass="txtemail"></asp:TextBox>
           <asp:Label ID="Label1" runat="server" Text="EMAIL" CssClass="lblemail"></asp:Label>
           <asp:TextBox ID="TextBox1" runat="server" placeholder="ENTER EMAIL ID" CssClass="txtemail" ></asp:TextBox>
           <asp:Label ID="Label2" runat="server" Text="ENTER PASSWORD" CssClass="lblpass" Visible="True"></asp:Label>
           <asp:TextBox ID="TextBox2" runat="server" placeholder="ENTER PASSWORD" TextMode="Password" CssClass="txtpass"></asp:TextBox>
           <asp:Label ID="Label3" runat="server" Text="RE-ENTER PASSWORD" CssClass="lblpass" Visible="True"></asp:Label>
           <asp:TextBox ID="TextBox3" runat="server" placeholder="ENTER PASSWORD"  TextMode="Password" CssClass="txtpass"></asp:TextBox>
          <center> <asp:CheckBox ID="CheckBox1" runat="server" Text="SHOW PASSWORD" Forecolor="White"/></center><br/>
           <asp:Button ID="Button1" runat="server" Text="Change Password" CssClass="btnsubmit" />
         
       </form>
   </div>
     <p>
         &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Userlogin.aspx" ForeColor="Black"><b>Previous Page</b></asp:HyperLink>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Homepage.aspx" ForeColor="Black"><b>Homepage Page</b></asp:HyperLink>
     </p>
</body>
</html>
