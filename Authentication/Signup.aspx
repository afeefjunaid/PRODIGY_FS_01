<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Authentication.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Sign Up</title>
    <link rel="styleSheet" href="StyleSheet.css"/>
    <script src="JavaScript.js" defer="defer"></script>
</head>

<body>
    <div class="container">
        <h2>Sign Up</h2>
        <form method="post" onsubmit="return validateSignup()" runat="server">
            <label for="username">Username:</label>
            <asp:TextBox ID="username" runat="server" required="required"></asp:TextBox>

            <label for="email">Email:</label>
            <asp:TextBox ID="email" runat="server" TextMode="Email" required="required"></asp:TextBox>

            <label for="password">Password:</label>
            <asp:TextBox ID="password" runat="server" TextMode="Password" required="required"></asp:TextBox>
            <asp:Label ID="lblMessage" runat="server"  Visible="false" ></asp:Label>

            <asp:Button runat="server" type="submit" CssClass="btn" Text="SignUp" OnClick="btnSignup_Click" />
            
        </form>
        <asp:Label ID="lblSuccess" runat="server" ForeColor="Green" Visible="false" Text="Registration successful!"></asp:Label>
        <p>Already have an account? <a href="Login.aspx">Login</a></p>
    </div>
</body>
</html>