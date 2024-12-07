<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="TutorManagementSystem.Admin.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Log In</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../dist/sweetalert2.min.css" rel="stylesheet" />
    <script src="../dist/sweetalert2.min.js"></script>
    <style>
        #shadow {
            box-shadow: -2px 2px 29px 1px rgba(0,0,0,0.75);
            -webkit-box-shadow: -2px 2px 29px 1px rgba(0,0,0,0.75);
            -moz-box-shadow: -2px 2px 29px 1px rgba(0,0,0,0.75);
        }

        body {
            background-color: whitesmoke;
        }
    </style>
    <script type="text/javascript">
        function ErrorLogin() {
            Swal.fire(
                'Failure!',
                'Your user username or password is incorrect.',
                'error'
            )
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <div class="container">
            <div class="row">
                <div class="col-md-4 mx-auto" id="shadow">
                    <br />
                    <div class="jumbotron text-center text-white bg-primary">
                        <h2>Admin Log In</h2>
                    </div>
                    <asp:TextBox ID="UsernameTextBox" class="form-control" placeholder="Username" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="UsernameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="UsernameRequiredFieldValidator" runat="server" ErrorMessage="Username is Required"></asp:RequiredFieldValidator><br />
                    <asp:TextBox ID="PasswordTextBox" TextMode="Password" class="form-control" placeholder="Password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="PasswordRequiredFieldValidator" runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator><br />
                    <asp:Button ID="LoginButton" OnClick="LoginButton_Click" class="btn btn-block btn-primary" runat="server" Text="Log In" /><br />
                </div>
            </div>
        </div>
    </form>
    <script src="../Scripts/jquery-3.6.0.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
</body>
</html>
