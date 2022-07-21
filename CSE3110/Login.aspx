<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CSE3110.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <style type="text/css">
      
        .auto-style1 {
            margin-top: 100px;
            width: 647px;
            height: 494px;
            box-shadow: 5px 5px 5px #808080;
        }
      
    </style>
</head>
<body >

    <form id="form1" runat="server">
        <div class="container">
            <table align="center" class="auto-style1" style="background-color: #99CCFF">
                <tr >
                    <td colspan="2" align="center"><h2>Login Page</h2></td>
                    
                </tr>
                <tr>
                    <td align="center" style="width:50%"><b>Email</b></td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" Height="46px" Width="299px"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td align="center" style="width:50%"><b>Password</b></td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" Height="46px" TextMode="Password" Width="299px"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="loginButton" class="btn btn-success" runat="server" Text="Login" Height="44px" OnClick="loginButton_Click" Width="130px" />

                    </td>
                   
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server"></asp:Label>

                    </td>
                   
                </tr>
            </table>
         </div>
    </form>
</body>
</html>
