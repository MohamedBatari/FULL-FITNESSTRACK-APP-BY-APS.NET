<%@ Page Title="User Challenges" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="userchallenges.aspx.cs" Inherits="FITNESSTRACKAPPLICATION.userchallenges" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
    <!-- Load Bootstrap for modern layout and styling -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="bodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <h2 class="text-center">User Challenges</h2>
        <asp:GridView ID="GridViewUserChallenges" runat="server" AutoGenerateColumns="false" CssClass="table table-striped mt-3" DataKeyNames="UserChallengeId" OnRowDataBound="GridViewUserChallenges_RowDataBound">
            <Columns>
                <asp:BoundField DataField="ChallengeTitle" HeaderText="Challenge Title" />
                <asp:BoundField DataField="JoinedAt" HeaderText="Joined At" DataFormatString="{0:dd MMM yyyy}" />
                <asp:BoundField DataField="Progress" HeaderText="Progress (%)" />
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:Button ID="btnUpdateProgress" runat="server" CommandName="UpdateProgress" CommandArgument='<%# Eval("UserChallengeId") %>' Text="Update Progress" CssClass="btn btn-primary" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <div class="text-center mt-4">
            <asp:Button ID="btnAddChallenge" runat="server" Text="Join New Challenge" CssClass="btn btn-success" OnClick="btnAddChallenge_Click" />
        </div>
    </div>
</asp:Content>
