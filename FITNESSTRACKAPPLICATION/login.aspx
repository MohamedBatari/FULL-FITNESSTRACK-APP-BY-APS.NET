<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="FITNESSTRACKAPPLICATION.login" %>
 <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .login-container {
            width: 60%;
            margin: 0 auto;
            padding: 20px;
            border: 2px solid #ccc;
            border-radius: 10px;
            background-color: #222;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .login-table {
            width: 100%;
            border-collapse: collapse;
        }
        .login-table td {
            padding: 10px;
            vertical-align: middle;
        }
        .login-table .label-cell {
            text-align: right;
            font-weight: bold;
            color: #333;
        }
        .login-table .input-cell {
            text-align: left;
        }
        .login-table .input-cell input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .login-table .button-cell {
            text-align: center;
        }
        .login-table .button-cell input {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
        }
        .login-table .button-cell input:hover {
            background-color: #0056b3;
        }
        /* Password visibility toggle styles */
        .password-container {
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .password-toggle {
            cursor: pointer;
            font-size: 0.9em;
            color: #007bff;
            background: none;
            border: none;
            padding: 0;
            text-decoration: underline;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-container">
        <table class="login-table">
            <tr>
                <td class="label-cell" style="color: #FFFFFF">Username</td>
                <td class="input-cell">
                    <asp:TextBox ID="TextBox1" runat="server" Width="476px" />
                </td>
            </tr>
            <tr>
                <td class="label-cell" style="color: #FFFFFF">Password</td>
                <td class="input-cell">
                    <div class="password-container">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" />
                        <button type="button" class="password-toggle" onclick="togglePassword()">Show</button>
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="button-cell">
                    <asp:Button ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>

    <script type="text/javascript">
        function togglePassword() {
            var passwordField = document.getElementById('<%= TextBox2.ClientID %>');
            var toggleButton = event.target;
            if (passwordField.type === 'password') {
                passwordField.type = 'text';
                toggleButton.textContent = 'Hide';
            } else {
                passwordField.type = 'password';
                toggleButton.textContent = 'Show';
            }
        }
    </script>
</asp:Content>
