<%@ Page Title="Goals Management" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="GOALSMANAGEMENT.aspx.cs" Inherits="FITNESSTRACKAPPLICATION.GOALSMANAGEMENT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        h1 {
            text-align: center;
            color: #28a745;
            margin-top: 30px;
        }
        .container {
            margin-top: 30px;
        }
        .grid-container {
            margin-top: 20px;
            background-color: white;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        .btn-custom {
            background-color: #28a745;
            color: white;
            margin: 10px 5px;
        }
        .btn-custom:hover {
            background-color: #218838;
        }
        .table th {
            background-color: #28a745;
            color: white;
        }
        .table tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Goals Management</h1>

        <div class="mb-3">
            <asp:Label ID="Label1" runat="server" Text="Goal ID:" AssociatedControlID="txtGoalId"></asp:Label>
            <asp:TextBox ID="txtGoalId" runat="server" CssClass="form-control" ReadOnly="True" />
        </div>

        <div class="mb-3">
            <asp:Label ID="lblGoalType" runat="server" Text="Goal Type:" AssociatedControlID="txtGoalType"></asp:Label>
            <asp:TextBox ID="txtGoalType" runat="server" CssClass="form-control" />
        </div>
        <div class="mb-3">
            <asp:Label ID="lblTargetValue" runat="server" Text="Target Value:" AssociatedControlID="txtTargetValue"></asp:Label>
            <asp:TextBox ID="txtTargetValue" runat="server" CssClass="form-control" />
        </div>
        <div class="mb-3">
            <asp:Label ID="lblCurrentValue" runat="server" Text="Current Value:" AssociatedControlID="txtCurrentValue"></asp:Label>
            <asp:TextBox ID="txtCurrentValue" runat="server" CssClass="form-control" />
        </div>
        <div class="mb-3">
            <asp:Label ID="lblStartDate" runat="server" Text="Start Date:" AssociatedControlID="txtStartDate"></asp:Label>
            <asp:TextBox ID="txtStartDate" runat="server" CssClass="form-control" TextMode="Date" />
        </div>
        <div class="mb-3">
            <asp:Label ID="lblEndDate" runat="server" Text="End Date:" AssociatedControlID="txtEndDate"></asp:Label>
            <asp:TextBox ID="txtEndDate" runat="server" CssClass="form-control" TextMode="Date" />
        </div>

        <asp:Button ID="btnAddGoal" runat="server" CssClass="btn btn-custom" Text="Add Goal" OnClick="btnAddGoal_Click1"  />
        <asp:Button ID="btnUpdateGoal" runat="server" CssClass="btn btn-custom" Text="Update Goal" OnClick="btnUpdateGoal_Click"  />

        <div class="grid-container">
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" >
                <Columns>
                    <asp:BoundField DataField="GoalId" HeaderText="Goal ID" />
                    <asp:BoundField DataField="GoalType" HeaderText="Goal Type" />
                    <asp:BoundField DataField="TargetValue" HeaderText="Target Value" />
                    <asp:BoundField DataField="CurrentValue" HeaderText="Current Value" />
                    <asp:BoundField DataField="StartDate" HeaderText="Start Date" DataFormatString="{0:yyyy-MM-dd}" />
                    <asp:BoundField DataField="EndDate" HeaderText="End Date" DataFormatString="{0:yyyy-MM-dd}" />
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:CommandField ShowSelectButton="True" UpdateText="Edite" />
                </Columns>
            </asp:GridView>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.min.js"></script>
</asp:Content>
