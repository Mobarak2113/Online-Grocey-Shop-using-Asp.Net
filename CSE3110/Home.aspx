<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CSE3110.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <table style="width: 1280px; height: 50px;" >
            <tr style="background-color: aliceblue;">
                <td colspan="2" style="text-align:left;">
                    <asp:Label ID="Label4" runat="server" Style="text-align: left;" Font-Bold="True"></asp:Label>
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" NavigateUrl="~/Login.aspx">Click To Login</asp:HyperLink>
                    <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Logout" Width="106px" OnClick="Button2_Click" />
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Style="text-align: ;" Font-Bold="True" Text=""></asp:Label>
                </td>
                
                <td style="text-align: right;">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" CssClass="offset-sm-0" Font-Bold="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>
                    <asp:TextBox ID="TextBox1" Height="40px" Width="250px" placeholder="Search" runat="server"></asp:TextBox>
                    <asp:Button ID="Button3" class="btn btn-success" runat="server" Text="Search" OnClick="Button3_Click" />
                </td>
            </tr>
        </table>
    </div>
    <div class="container" id="Product">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Product_id" DataSourceID="SqlDataSource1" RepeatColumns="3" CellPadding="2" Height="286px" Width="1276px" ExtractTemplateRows="False" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <table>
                    <tr>
                        <td style="text-align: center;">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Pname") %>' Font-Bold="true" ForeColor="Blue"></asp:Label>

                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center; background-color: #ffffff">
                            <asp:Image ID="image1" runat="server" Height="280px" Width="300px" ImageUrl='<%# Eval("Pimage") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center; background-color: #ffffff">
                            <asp:Label ID="Label2" runat="server" Text="Price: Tk" Font-Bold="true" ForeColor="White" Style="text-align: center;"></asp:Label>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Pprice") %>' Font-Bold="true" ForeColor="White" Style="text-align: center;"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">Quantity
                  <asp:DropDownList ID="DropDownList1" runat="server">
                      <asp:ListItem>1</asp:ListItem>
                      <asp:ListItem>2</asp:ListItem>
                      <asp:ListItem>3</asp:ListItem>
                      <asp:ListItem>4</asp:ListItem>
                      <asp:ListItem>5</asp:ListItem>
                  </asp:DropDownList>
                        </td>
                    </tr>

                    <tr>
                        <td align="center">
                            <asp:ImageButton ID="ImageButton1" Width="160px" runat="server" CommandName="AddToCart" CommandArgument='<%# Eval("Product_id") %>' ImageUrl="~/Images/AddToCart.png" />
                           
                        </td>
                    </tr>

                </table>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mobarak2113ConnectionString %>"  SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
    </div>
</asp:Content>
