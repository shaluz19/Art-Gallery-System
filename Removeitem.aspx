<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Removeitem.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class ="container">
       <div class ="form-horizontal">
           
           <br />
           <br />
           <h2>Add Product</h2>
           <hr />
          
           <asp:GridView ID="GV1" runat="server" AutoGenerateColumns="false"  >
        <Columns> 
        <asp:BoundField DataField="Id" HeaderText="Product id" />
        <asp:BoundField DataField="PName" HeaderText="Product Name" />
            <asp:BoundField DataField="PPrice" HeaderText="Prduct Price" />
            <asp:BoundField DataField="PQuantity" HeaderText="Quantity Available" />
    
            <asp:BoundField DataField="PDetail" HeaderText="About" />
            <asp:BoundField DataField="PImage" HeaderText="Poduct" />
         
            
             <asp:TemplateField>
               <ItemTemplate>
                    <asp:LinkButton ID="b" Text="Remove" runat="server"  CommandArgument='<%# Eval("Id") %>' OnClick="b_Click"></asp:LinkButton>
                 
                </ItemTemplate> 
            </asp:TemplateField>
            
           
            </Columns> 
               <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" Height="40px" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
           
           

    </div>
        </div>
</asp:Content>

