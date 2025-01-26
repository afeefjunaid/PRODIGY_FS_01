<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Authentication.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Login</title>
    <link rel="StyleSheet" href="StyleSheet.css"/>
    <script src="JavaScript.js" defer="defer"></script>
</head>
<body>

   <div class="container">
        <h2>Login</h2>
        <form method="post" onsubmit="return validateLogin()" runat="server">
             <label for="username">Username:</label>
            <asp:TextBox ID="username" runat="server" required="required"></asp:TextBox>

            <label for="password">Password:</label>
            <asp:TextBox ID="password" runat="server" TextMode="Password" required="required"></asp:TextBox>

            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" OnClick="btnLogin_Click" />

        </form>
        <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false" Text="Invalid login credentials."></asp:Label>
        <p>Don't have an account? <a href="Signup.aspx">Sign up</a></p>
    </div>
</body>
</html>