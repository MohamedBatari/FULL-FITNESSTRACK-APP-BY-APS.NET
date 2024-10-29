<%@ Page Title="Welcome" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="welcome.aspx.cs" Inherits="FITNESSTRACKAPPLICATION.welcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .welcome-message {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #28a745;
            color: white;
            border-radius: 5px;
            text-align: center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="welcome-message">
        <h2>Welcome to the Fitness Track Application!</h2>
        <p>
            Hello, <asp:Label ID="lblFullName" runat="server" Text=""></asp:Label>! We're excited to have you on board.
        </p>
        <p>
            Explore our features and start your fitness journey today!
        </p>
    </div>
</asp:Content>



