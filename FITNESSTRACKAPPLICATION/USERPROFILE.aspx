<%@ Page Title="User Profile" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="USERPROFILE.aspx.cs" Inherits="FITNESSTRACKAPPLICATION.USERPROFILE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 50px;
        }
        .profile-card {
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            padding: 30px;
        }
        .profile-img {
            border-radius: 50%;
            width: 150px;
            height: 150px;
            object-fit: cover;
            margin-bottom: 20px;
        }
        h2 {
            color: #343a40;
            text-align: center;
            margin-bottom: 20px;
        }
        .btn-primary {
            width: 100%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="profile-card">
            <h2>User Profile</h2>
            <div class="text-center">
                <asp:Image ID="imgProfile" runat="server" CssClass="profile-img" ImageUrl="~/Images/default-profile.png" />
         
            </div>
            <div class="mt-4">
                <div class="mb-3">
                    <label for="txtFullName" class="form-label" style="color: #000000">Full Name</label>
                    <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="txtUsername" class="form-label" style="color: #000000">Username</label>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                </div>
                <div class="mb-3" style="color: #000000">
                    <label for="txtEmail" class="form-label">Email</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="txtDateOfBirth" class="form-label" style="color: #000000">Date of Birth</label>
                    <asp:TextBox ID="txtDateOfBirth" runat="server" CssClass="form-control"  ReadOnly="true"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="txtGender" class="form-label" style="color: #000000">Gender</label>
                    <asp:TextBox ID="txtGender" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                </div>
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Click to Edit " OnClick="btnclickEditProfile_Click" /><br /><br />

                <asp:Button ID="btnEditProfile" runat="server" CssClass="btn btn-primary" Text="Edit Profile" OnClick="btnEditProfile_Click" />
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.min.js"></script>
</asp:Content>
