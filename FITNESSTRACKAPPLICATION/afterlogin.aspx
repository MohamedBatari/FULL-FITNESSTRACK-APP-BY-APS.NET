<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="afterlogin.aspx.cs" Inherits="FITNESSTRACKAPPLICATION.afterlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .dashboard-container {
            max-width: 800px;
            margin: auto;
            padding: 30px;
            border-radius: 10px;
            background-color: #ffffff;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
        }
        .welcome-message {
            font-size: 28px;
            font-weight: bold;
            color: #333;
            text-align: center;
        }
        .action-buttons {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 20px;
        }
        .btn-custom {
            background-color: red;
            color: white;
            border: none;
            padding: 15px 30px;
            border-radius: 8px;
            margin: 10px;
            font-size: 16px;
            transition: background-color 0.3s ease, transform 0.2s ease;
            width: 200px; /* Set a fixed width for uniformity */
        }
        .btn-custom:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dashboard-container">
        <div class="welcome-message">
            Welcome, <asp:Label ID="lblFullName" runat="server" Text="" CssClass="text-primary" />!
        </div>
        <div class="text-center">
            <p style="color: #000000">Your login was successful. Here’s what you can do:</p>
        </div>
        <div class="action-buttons">
            <asp:Button ID="btnProfile" runat="server" CssClass="btn btn-custom" Text="View Profile" OnClick="btnProfile_Click" />
            <asp:Button ID="btnWorkouts" runat="server" CssClass="btn btn-custom" Text="My Workouts" OnClick="btnWorkouts_Click" />
            <asp:Button ID="btnGoals" runat="server" CssClass="btn btn-custom" Text="Set Goals" OnClick="btnGoals_Click" />
            <asp:Button ID="btnChallenges" runat="server" CssClass="btn btn-custom" Text="Challenges" OnClick="btnChallenges_Click" />
            <asp:Button ID="btnProgressReport" runat="server" CssClass="btn btn-custom" Text="Progress Report" />
        </div>
    </div>
</asp:Content>

