<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="CHALLENGEMANAGEMENT.aspx.cs" Inherits="FITNESSTRACKAPPLICATION.CHALLENGEMANAGEMENT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .container {
            margin-top: 50px;
        }ng-pluralize
        .card {
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.1);
            padding: 40px;
            text-align: center;
        }
        h2 {
            color: #343a40;
            margin-bottom: 30px;
            font-size: 2rem; /* Increased font size */
        }
        .btn {
            width: 100%;
            margin-top: 15px;
            padding: 15px; /* Increased padding for larger buttons */
            font-size: 1.25rem; /* Larger font size */
            border-radius: 8px; /* Rounded corners */
            transition: all 0.3s ease; /* Smooth transition */
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .btn-success {
            background-color: #28a745;
            border: none;
        }
        .btn-success:hover {
            background-color: #218838;
        }
        .btn-warning {
            background-color: #ffc107;
            border: none;
        }
        .btn-warning:hover {
            background-color: #d39e00;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="card">
            <h2>Challlenge Management</h2>
            <asp:Button ID="btnYourListChalllenge" runat="server" CssClass="btn btn-primary" Text="Your Challlenges" OnClick="btnYourListChalllenge_Click"   />
            <asp:Button ID="btngoinChalllenge" runat="server" CssClass="btn btn-warning" Text="Join a members challenges" OnClick="btngoinChalllenge_Click"  />
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.min.js"></script>
</asp:Content>

