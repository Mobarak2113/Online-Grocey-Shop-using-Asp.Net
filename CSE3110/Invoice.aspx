<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="CSE3110.Invoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Invoice </title>
    <style>
        .container{
            margin-top:40px;
        }
    </style>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container text-center">
            <asp:Button ID="Button1" runat="server" Text="DownLoad Invoice" Font-Bold="True" />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Go To Home</asp:HyperLink>
            <asp:Panel ID="Panel1" runat="server">

                <table border="1">
                    <tr>
                        <td style="text-align: center">
                            <h2 style="text-align: center">Retail Invoice</h2>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td>Buyer Address:
                                        <br />
                                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td>Seller Address:
                                        <br />
                                        <br />
                                        Raipura,Narsingdi
                                    </td>
                                </tr>
                            </table>
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" Width="1000px" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:BoundField DataField="SNo" HeaderText="Sl No">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PId" HeaderText="ProductId">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PName" HeaderText="ProductName">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PPrice" HeaderText="Price">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PQuantity" HeaderText="Quantity">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PTotalPrice" HeaderText="TotalPrice">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                </Columns>
                            </asp:GridView>

                        </td>

                    </tr>
                    <tr>
                        <td>
                            Grand Total:
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Thank You
                        </td>
                    </tr>

                </table>


            </asp:Panel>
        </div>
    </form>
</body>
</html>--%>
