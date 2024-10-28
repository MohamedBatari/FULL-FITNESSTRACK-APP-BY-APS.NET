<%@ Page Title="Add Workout" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ADDWORKOUT.aspx.cs" Inherits="FITNESSTRACKAPPLICATION.ADDWORKOUT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #f4f4f9;
        }
        .form-container {
            background: white;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            margin: 50px auto;
            max-width: 600px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-container">
        <h2 class="text-center">Add Workout</h2>
        <asp:Panel ID="pnlMessage" runat="server" CssClass="alert alert-success" Visible="false">
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
        </asp:Panel>
        <asp:TextBox ID="txtWorkoutType" runat="server" CssClass="form-control" Placeholder="Workout Type" required="required"></asp:TextBox>
        <asp:TextBox ID="txtDuration" runat="server" CssClass="form-control mt-2" Placeholder="Duration (in minutes)" required="required"></asp:TextBox>
        <asp:TextBox ID="txtCaloriesBurned" runat="server" CssClass="form-control mt-2" Placeholder="Calories Burned"></asp:TextBox>
        <asp:TextBox ID="txtDate" runat="server" CssClass="form-control mt-2" TextMode="date" required="required"></asp:TextBox>
        <asp:TextBox ID="txtNotes" runat="server" CssClass="form-control mt-2" TextMode="MultiLine" Rows="4" Placeholder="Notes"></asp:TextBox>
        <asp:Button ID="btnAddWorkout" runat="server" CssClass="btn btn-success mt-3" Text="Add Workout" OnClick="btnAddWorkout_Click"  />
    </div>
    
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</asp:Content>
