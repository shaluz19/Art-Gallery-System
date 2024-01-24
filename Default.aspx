<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Button ID="Button1" runat="server" Text="Add Product" OnClick="Button1_Click" Width="157px"/>

    <asp:Button ID="Button2" runat="server" Text="Remove Product" OnClick="Button2_Click" />

    <asp:Button ID="Button3" runat="server" Text="Updated Stock" />

    <asp:Button ID="Button4" runat="server" Text="REPORT" />
</asp:Content>

