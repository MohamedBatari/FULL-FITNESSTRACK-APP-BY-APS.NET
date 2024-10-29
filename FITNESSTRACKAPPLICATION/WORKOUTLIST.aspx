<%@ Page Title="Workout List" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="WORKOUTLIST.aspx.cs" Inherits="FITNESSTRACKAPPLICATION.WORKOUTLIST" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 50px;
        }
        .table-responsive {
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }
        th {
            background-color: #007bff;
            color: white;
            text-align: center;
        }
        td {
            text-align: center;
        }
        h2 {
            color: #343a40;
            font-size: 2rem;
            text-align: center;
            margin-bottom: 30px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2 style="color: #FFFFFF">Your Workout Details</h2>
        <div class="table-responsive">
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-hover" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="WorkoutId" HeaderText="ID" />
                    <asp:BoundField DataField="WorkoutType" HeaderText="Workout Type" />
                    <asp:BoundField DataField="Duration" HeaderText="Duration (min)" />
                    <asp:BoundField DataField="CaloriesBurned" HeaderText="Calories Burned" />
                    <asp:BoundField DataField="Date_" HeaderText="Date" DataFormatString="{0:yyyy-MM-dd}" />
                    <asp:BoundField DataField="Notes" HeaderText="Notes" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.min.js"></script>
</asp:Content>
