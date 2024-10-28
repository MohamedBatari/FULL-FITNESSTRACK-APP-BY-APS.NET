<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="CHALLENGEUSERLIST.aspx.cs" Inherits="FITNESSTRACKAPPLICATION.CHALLENGEUSERLIST" %>
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
        <h1>Challenges Management</h1>

      <div class="grid-container">
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" >
                <Columns>
                    <asp:BoundField DataField="ChallengeId" HeaderText="Challenge ID" />
                    <asp:BoundField DataField="Title" HeaderText="Title" />
                    <asp:BoundField DataField="Description_" HeaderText="Description" />
                    <asp:BoundField DataField="StartDate" HeaderText="Start Date" DataFormatString="{0:yyyy-MM-dd}"/>
                    <asp:BoundField DataField="EndDate" HeaderText="End Date" DataFormatString="{0:yyyy-MM-dd}" />
                    <asp:BoundField DataField="CreatedBy" HeaderText="Created By"  />
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:CommandField ShowSelectButton="True" /> 
                </Columns>
            </asp:GridView>
        </div>

        <asp:Button ID="btnAddChallenge" runat="server" CssClass="btn btn-custom" Text="Add Challenge" OnClick="btnAddChallenge_Click"   />
        <asp:Button ID="btnUpdateGoal" runat="server" CssClass="btn btn-custom" Text="Update Challenge" OnClick="btnUpdateGoal_Click"  />
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-custom" Text="Who Join your Challenge"  />

        <div class="mb-3">
            <asp:Label ID="LBLChallengeId" runat="server" Text="Challenge ID:" AssociatedControlID="txtChallengeId"></asp:Label>
            <asp:TextBox ID="txtChallengeId" runat="server" CssClass="form-control" ReadOnly="True" />
        </div>

        <div class="mb-3">
            <asp:Label ID="lblGoalType" runat="server" Text="Title:" AssociatedControlID="txttitle"></asp:Label>
            <asp:TextBox ID="txttitle" runat="server" CssClass="form-control" />
        </div>
        <div class="mb-3">
            <asp:Label ID="lblTargetValue" runat="server" Text="Description:" AssociatedControlID="txtdiscription"></asp:Label>
            <asp:TextBox ID="txtdiscription" runat="server" CssClass="form-control" />
        </div>
        <div class="mb-3">
            <asp:Label ID="lblCurrentValue" runat="server" Text="Start Date:" AssociatedControlID="txtStartDate"></asp:Label>
            <asp:TextBox ID="txtStartDate" runat="server" CssClass="form-control" TextMode="Date"/>
        </div>
        <div class="mb-3">
            <asp:Label ID="lblStartDate" runat="server" Text="End Date:" AssociatedControlID="txtStartDate"></asp:Label>
            <asp:TextBox ID="txtEndDate" runat="server" CssClass="form-control" TextMode="Date" />
        </div>
        


    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.min.js"></script>
</asp:Content>
