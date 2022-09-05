<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="new_project1.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Username:<asp:TextBox runat="server" ID="Rgname"></asp:TextBox><br />
            Password:<asp:TextBox runat="server" ID="Rgpassword"></asp:TextBox><br />
            Reenterpassword:<asp:TextBox runat="server" ID="Repassword"></asp:TextBox><br />
            Phone Number:<asp:TextBox runat="server" ID="Rgphone"></asp:TextBox><br />
            <asp:Button runat="server" Text="Register" OnClientClick="return Registration()"/>
        </div>
    </form>
</body>
</html>
