<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Orderadmin.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class ="form-horizontal">
           
           <br />
           <br />
           <h2>Order details</h2>
           
          
           <asp:GridView ID="GV1" runat="server" AutoGenerateColumns="false"  >
        <Columns> 
        <asp:BoundField DataField="orderid" HeaderText="Order id" />
        <asp:BoundField DataField="sno" HeaderText="Serial No" />
            <asp:BoundField DataField="productid" HeaderText="Product Id" />
            <asp:BoundField DataField="productname" HeaderText="Product Name" />
    
            <asp:BoundField DataField="price" HeaderText="Price" />
            <asp:BoundField DataField="quantity" HeaderText="Order Quantity" />
            <asp:BoundField DataField="dateoforder" HeaderText="Date Of Order" />
             <asp:BoundField DataField="Payment" HeaderText="Payment status" />
            <asp:BoundField DataField="userid" HeaderText="user id" />
            <asp:TemplateField>
               <ItemTemplate>
                    <asp:LinkButton ID="b" Text="Remove" runat="server"  CommandArgument='<%# Eval("orderid") %>' OnClick="b_Click"></asp:LinkButton>
                 
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