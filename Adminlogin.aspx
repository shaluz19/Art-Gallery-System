<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adminlogin.aspx.cs" Inherits="Adminlogin" %>


<!DOCTYPE html>
<script runat="server">

   
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
       <title>Admin login</title>
 <link href="Css/Styles1.css" rel="stylesheet"/>
    </head>
    <body>
        <div class ="loginbox">
            <img src="Pics/logicon1.jpg" alt="Alternate Text" class ="user" />
 LOGIN HERE</h2>
       <form id="Form1" runat="server">
           
           <br/>
           <asp:Label ID="Label1" runat="server" Text="EMAIL" CssClass="lblemail"></asp:Label>
           <asp:TextBox Type="Text"  ID="txtUsername" runat="server" placeholder="ENTER EMAIL ID" CssClass="txtemail"></asp:TextBox>
           <asp:Label ID="Label2" runat="server" Text="PASSWORD" CssClass="lblpass" Visible="True"></asp:Label>
           <asp:TextBox Type="Text"  ID="txtPass" runat="server" placeholder="ENTER PASSWORD" TextMode="Password" CssClass="txtpass"></asp:TextBox>
          <center> <asp:CheckBox ID="CheckBox1" runat="server" Text="SHOW PASSWORD" Forecolor="White"/></center><br/>
         <asp:Button ID="Button1" runat="server" Text="SIGN IN" CssClass="btnsubmit" OnClick="Button1_Click" />
        <div class ="col-md-6 ">
                    <asp:Label ID="lblError" CssClass ="text-danger " runat="server" ForeColor="Red"></asp:Label>
                   </div>
           <center> <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/Adminlogin.aspx"><b>FORGOT PASSWORD</b></asp:HyperLink></center>
      <br/><br/><br/><br/>
       <center>    <asp:ImageButton ID="ImageButton1" runat="server"  Width="100px" Height="100px" ImageUrl="~/pics/homeicon.png" PostBackUrl="~/Homepage.aspx" /></center>
        
       </form>
   </div>
   
   
</body>

</html>
