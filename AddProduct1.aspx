<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddProduct1.aspx.cs" Inherits="AddProduct" %>

<!DOCTYPE html>
 

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
      <div class ="container">
       <div class ="form-horizontal">
           
           <br />
           <br />
           <h2>Add Product</h2>
           <hr />

            <div class ="form-group">
                <asp:Label ID="Label0" runat="server" CssClass ="col-md-2 control-label" Text="Proudct Id"></asp:Label>
                </div>

           <div class ="form-group">
               <asp:Label ID="Label1" runat="server" CssClass ="col-md-2 control-label" Text="Proudct Name"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox type="text" ID="txtProductName" CssClass ="form-control" runat="server"></asp:TextBox>


               </div>
           </div>

          


           <div class ="form-group">
               <asp:Label ID="Label3" runat="server" CssClass ="col-md-2 control-label" Text="SellingPrice"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox type="Number" ID="txtsellPrice" CssClass ="form-control" runat="server"></asp:TextBox>
               </div>
           </div>


           


           

         

           

           <div class ="form-group">
               <asp:Label ID="Label20" runat="server" CssClass ="col-md-2 control-label" Text="Quantity"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox  ID="txtQuantity" CssClass ="form-control" runat="server"></asp:TextBox>
               </div>
           </div>

            


            <div class ="form-group">
               <asp:Label ID="Label9" runat="server" CssClass ="col-md-2 control-label" Text="Product Details"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox type="text" ID="txtPDetail" TextMode ="MultiLine" CssClass ="form-control" runat="server"></asp:TextBox>
               </div>
           </div>

           
           

            <div class ="form-group">
               <asp:Label ID="Label11" runat="server" CssClass ="col-md-2 control-label" Text="Upload Image"></asp:Label>
               <div class ="col-md-3">
                   <asp:FileUpload ID="fuImg01" CssClass ="form-control" runat="server" />
               </div>
           </div>

          

          

          



        


           <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnAdd" CssClass ="btn btn-success " runat="server" Text="ADD Product" OnClick="btnAdd_Click"  />
                        
                    </div>
                </div>

       </div>
        <div class ="form-group">
            <asp:Label ID="Label01" runat="server" Text="Label"></asp:Label>
                </div>
        <hr />
    <div>
                    <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="false">
                    <Columns>  
                        <asp:BoundField DataField="ID" HeaderText="Id" />  
                        <asp:BoundField DataField="PName" HeaderText="PName" />  
                        <asp:BoundField DataField="PPrice" HeaderText="Price" />  
                        <asp:BoundField DataField="PQuantity" HeaderText="Quantity" />  
                        <asp:BoundField DataField="PDetail" HeaderText="Detail" />  
                        
                        
                        <asp:TemplateField HeaderText="Photo">  
                    <ItemTemplate>  
                        <%-- <img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("ImageName") %>" style=" height:150px; width:150px;"/> --%>
                    </ItemTemplate>  
                </asp:TemplateField> 

                       <%-- <asp:CommandField ShowEditButton="true" />  
                        <asp:CommandField ShowDeleteButton="true" />--%>
                        
                         </Columns> 
                    </asp:GridView>
                </div>
              
              </div>
           
           

    </div>
    </form>
</body>
</html>
