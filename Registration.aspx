<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    <title>REGISTRATION</title>
     <link href="Styles1.css" rel="stylesheet"/>
</head>
<body style="background-image:url(pics/360_F_323089010_2Fwnv3GLTmKLGECyG4U39wmZ7UCiswAl.jpg); background-repeat:no-repeat; background-size:auto 100%;">
    <br/>
    <form id="form1" runat="server">
    <center>
        <img width="100" src="Pics/reg icon.png"/>
    </center>
                    
    <center>
        <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="REGISTRATION FORM" ForeColor="DarkBlue" BackColor="White" Font-Size="XX-Large" Font-Names="TIMES NEW ROMAN"></asp:Label>
    </center><br/><br/>
                   
    <center>  <asp:Label ID="L1" runat="server" CssClass="lblreg" text="FULL NAME" Font-Names="TIMES NEW ROMAN"></asp:Label> </center>
                       
    <center><asp:TextBox Type="Text" ID="TextBox1" CssClass="txtreg"  runat="server"  placeholder="Full Name" Height="50px" Width="500px" Font-Size="Larger" Font-Names="TIMES NEW ROMAN"></asp:TextBox> </center><br/>
                           
    <center><asp:Label ID="Label2" runat="server" CssClass="lblreg" text="DATE OF BIRTH" Font-Names="TIMES NEW ROMAN"></asp:Label> </center>
                     
    <center> <asp:TextBox Type="Text" ID="TextBox2" CssClass="txtreg" runat="server" TextMode="Date" Height="50px" Width="500px" Font-Size="Larger" Font-Names="TIMES NEW ROMAN" ></asp:TextBox> </center><br/>
                      
    <center><asp:Label ID="Label3" runat="server" CssClass="lblreg" text="CONTACT NUMBER" Font-Names="TIMES NEW ROMAN"></asp:Label> </center>
                             
    <center>   <asp:TextBox  Type="Text" ID="TextBox3" CssClass="txtreg" runat="server"  placeholder="Contact No" Font-Size="Larger" Font-Names="TIMES NEW ROMAN" TextMode="Number" Height="50px" Width="500px"></asp:TextBox></center><br/>
                       
    <center> <asp:Label ID="Label4" runat="server" CssClass="lblreg" text="EMAIL ID" Font-Names="TIMES NEW ROMAN"></asp:Label> </center>
                       
    <center>  <asp:TextBox Type="Text" ID="TextBox4" CssClass="txtreg" runat="server" placeholder="Email ID" Font-Size="Larger" Font-Names="TIMES NEW ROMAN" TextMode="Email" Height="50px" Width="500px"></asp:TextBox> </center><br/>
                     
    <center> <asp:Label ID="Label5" runat="server" CssClass="lblreg" text="STATE" Font-Names="TIMES NEW ROMAN"></asp:Label>
                       
    <center><asp:DropDownList CssClass="txtreg" ID="DropDownList1"  runat="server" Font-Size="Larger" Font-Names="TIMES NEW ROMAN" Height="50px" Width="500px"> 
                              <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                              <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                              <asp:ListItem Text="Assam" Value="Assam" />
                              <asp:ListItem Text="Bihar" Value="Bihar" />
                              <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                              <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                              <asp:ListItem Text="Goa" Value="Goa" />
                              <asp:ListItem Text="Gujarat" Value="Gujarat" />
                              <asp:ListItem Text="Haryana" Value="Haryana" />
                              <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                              <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                              <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                              <asp:ListItem Text="Karnataka" Value="Karnataka" />
                              <asp:ListItem Text="Kerala" Value="Kerala" />
                              <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                              <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                              <asp:ListItem Text="Manipur" Value="Manipur" />
                              <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                              <asp:ListItem Text="Mizoram" Value="Mizoram" />
                              <asp:ListItem Text="Nagaland" Value="Nagaland" />
                              <asp:ListItem Text="Odisha" Value="Odisha" />
                              <asp:ListItem Text="Punjab" Value="Punjab" />
                              <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                              <asp:ListItem Text="Sikkim" Value="Sikkim" />
                              <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                              <asp:ListItem Text="Telangana" Value="Telangana" />
                              <asp:ListItem Text="Tripura" Value="Tripura" />
                              <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                              <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                              <asp:ListItem Text="West Bengal" Value="West Bengal" />
                           </asp:DropDownList> </center><br/>
                      
       
                    
      <center><asp:Label  ID="Label11" runat="server" CssClass="lblreg"  Font-Names="TIMES NEW ROMAN" text="CITY"></asp:Label> </center>
                        
      <center> <asp:TextBox Type="Text" ID="TextBox5" CssClass="txtreg" runat="server" Font-Names="TIMES NEW ROMAN" Font-Size="Larger" placeholder="City" Height="50px" Width="500px"></asp:TextBox> </center><br/>
                          
      <center><asp:Label ID="Label6" runat="server" CssClass="lblreg"  Font-Names="TIMES NEW ROMAN" text="PINCODE"></asp:Label></center>
                                                     
      <center><asp:TextBox Type="Text" ID="TextBox6" CssClass="txtreg" runat="server" Font-Size="Larger" Font-Names="TIMES NEW ROMAN" placeholder="Pincode" Height="50px" Width="500px"></asp:TextBox> </center><br/>
                       
      <center><asp:Label ID="Label7" runat="server" CssClass="lblreg" Font-Names="TIMES NEW ROMAN" text="Full ADDRESS"></asp:Label> </center>
                     
      <center><asp:TextBox Type="Text" ID="TextBox7" CssClass="txtreg" runat="server" Font-Size="Larger" Font-Names="TIMES NEW ROMAN" placeholder="Full Address" TextMode="MultiLine" Rows="2" Height="50px" Width="500px"></asp:TextBox> </center><br/>
                                                
                       
      <center><asp:Label ID="Label9" runat="server" CssClass="lblreg" Font-Names="TIMES NEW ROMAN" text="CREATE PASSWORD"></asp:Label></center>
                        
      <center> <asp:TextBox Type="Text" ID="TextBox8"   CssClass="txtreg" runat="server" Font-Size="Larger" Font-Names="TIMES NEW ROMAN" placeholder="Create Password" TextMode="Password" Height="50px" Width="500px"></asp:TextBox> </center><br/>
                        
      <center><asp:Label Type="Text" ID="Label10" runat="server" CssClass="lblreg"  text="RE-TYPE PASSWORD" Font-Names="TIMES NEW ROMAN"></asp:Label> </center>
       <asp:CheckBox ID="CheckBox1" runat="server" Text="SHOW PASSWORD" CssClass="lblreg" Font-Size="Medium" Font-Names="TIMES NEW ROMAN" ></asp:CheckBox>
        <br/><br/>
                        
      <center><asp:Button ID="Button1"  CssClass="btnsubmit" width="200px"  Font-Names="TIMES NEW ROMAN" Height="60px"  runat="server" Text="SUBMIT" ForeColor="Black" OnClick="Button1_Click" /></center><br/>
         
       <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btnsubmit"  width="200px"  Font-Names="TIMES NEW ROMAN" Height="30px" ForeColor="Black" NavigateUrl="~/Homepage.aspx">HOMEPAGE</asp:HyperLink> 
    
        </form>
</body>
</html>
