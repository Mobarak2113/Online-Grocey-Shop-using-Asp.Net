<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AddingProduct.aspx.cs" Inherits="CSE3110.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 833px;
            height: 602px;
            box-shadow: 5px 5px 5px #808080;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center" class="container">
        <table align="center" style="background-color:aliceblue;" class="auto-style1">
            <tr>
                <td colspan="2" align="center" width="50%">
                    <h1>Adding Product</h1>
                    <hr />
                </td>
                
            </tr>
            <tr>
                <td align="center" width="50%"><h3>Product Id</h3></td>
                <td width="50%">
                    <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="250px"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td align="center" width="50%"><h3>Product Name</h3></td>
                <td width="50%"><asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="250px"></asp:TextBox></td>
            </tr>
            <tr>
               <td align="center" width="50%"><h3>Product Category</h3></td>
                <td width="50%"><asp:TextBox ID="TextBox3" runat="server" Height="40px" Width="250px"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="center" width="50%"><h3>Product Image</h3></td>
                <td width="50%">
                    <asp:FileUpload ID="FileUpload1" runat="server" />

                </td>
            </tr>
            <tr>
                <td align="center" width="50%"><h3>Product Price</h3></td>
                <td><asp:TextBox ID="TextBox4" runat="server" Height="40px" Width="250px"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" width="50%" align="center">
                    <asp:Button ID="AddProduct" class="btn btn-success" runat="server" Text="Add Product" Height="44px"  Width="130px" OnClick="AddProduct_Click" />

                </td>

            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>

                </td>

            </tr>
        </table>
    </div>
</asp:Content>
