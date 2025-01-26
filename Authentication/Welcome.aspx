<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Authentication.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Welcome</title>
    <link rel="StyleSheet" href="StyleSheet.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
         <h2>Welcome, <asp:Label ID="lblUsername" runat="server"></asp:Label>!</h2>
        <p>You have successfully logged in.</p>
        <asp:Button runat="server" type="submit" Text="Logout" OnClick="logout_Btn" />
    </div>
</form>
</body>
</html>
