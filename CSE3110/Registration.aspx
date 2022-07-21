<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="CSE3110.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Page</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
            height: 77px;
        }
        .auto-style2 {
            height: 77px;
        }
        .auto-style3 {
            width: 703px;
            height: 648px;
            margin-left: 251px;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
        <div align="center" class="container">

            <table   style="padding: 10px; margin: 60px 10px 10px 10px; width: 700px; height: 600px;  background-color: #FFFFCC; text-align: center; vertical-align: middle;">
                <tr>
                    <td colspan="2" align="center" class="auto-style2"><h2>Registration Page</h2></td>
                    
                </tr>
                <tr>
                    <td style="width:50%"><b>Name </b></td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" Height="42px" Width="260px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtName" ErrorMessage="Name is Empty" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%"><b>Email </b></td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" Height="42px" Width="260px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Emil is Empty" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%"><b>Password </b></td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" Height="42px" Width="260px" TextMode="Password"></asp:TextBox>
                        <br />
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is Empty" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"><b>Phone </b></td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtPhone" runat="server" Height="42px" Width="260px"></asp:TextBox>
                        <br />
                        <asp:RegularExpressionValidator ID="Invalid_Phone_Number" runat="server" ControlToValidate="txtPhone" ErrorMessage="11 Digit Number" ValidationExpression="[0-9]{11}"></asp:RegularExpressionValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="width:50%"><b>Gender </b></td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="dropListGender" runat="server" Height="42px" Width="260px" AutoPostBack="True">
                            <asp:ListItem>Select Gender</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="width:50%"><b>Address </b></td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server" Height="42px" Width="260px"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                     <td style="width:50%">
                       
                        &nbsp;
                    </td>
                    <td>
                        
                        <asp:Button ID="Register" runat="server" Height="33px" Text="Register" Width="103px" OnClick="Register_Click1"  />
                        
                    </td>
      
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </td>

                </tr>
                <tr>
                    <td colspan="2">

                         <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </td>

                </tr>
            </table>

       

        </div>
    </form>
</body>
</html>
