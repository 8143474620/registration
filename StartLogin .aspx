<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StartLogin .aspx.cs" Inherits="new_project1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function Login() {
            var username = $("#txtlogin").val();
            var password = $("#txtpassword").val();
            if (username == 0 || password == 0) {
                window.alert("please enter the login details");
                return false;
            }

            $.ajax({
                type: "POST",
                url: "StartLogin.aspx/validation",
                data: JSON.stringify({ UserName: username, Password: password }),
                dataType: "json",
                contentType: "application/json; charset=utf-8",
                success: function (respose) {

                },
                failure: function () {
                    window.alert("please check the code")
                }
            })

            function Redirection() {
                window.Redirection("Registration.aspx")

                }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           Username: <input type="text" runat="server" id="txtlogin" /> <br /><br />
           Password: <input type="text" runat="server" id="txtpassword" /> <br /><br />
            <asp:Button Text="Login" runat="server"  OnClientClick="return Login()"/>
            <asp:Button Text="SignUp" runat="server" OnClientClick="Redirection()" />
        </div>
    </form>
</body>
</html>
