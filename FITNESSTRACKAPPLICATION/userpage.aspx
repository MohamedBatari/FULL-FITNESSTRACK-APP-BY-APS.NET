<%@ Page Title="User Registration" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userpage.aspx.cs" Inherits="FITNESSTRACKAPPLICATION.userpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .form-container {
            max-width: 500px;
            margin: auto;
            background-color: #222;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }

        .btn-custom {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 30px;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .btn-custom:hover {
            background-color: #218838;
            transform: translateY(-2px);
        }

        .show-password {
            cursor: pointer;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <h2 class="text-center text-white">Welcome to Fitness Track Application</h2>

        <div class="row">
            <div class="col-md-12">
                <div class="form-container">
                    <h3 class="text-center text-white">Register</h3>
                    <asp:Panel ID="RegistrationPanel" runat="server">
                        <asp:Label ID="lblUsername" runat="server" Text="Username:" AssociatedControlID="TextBox1" CssClass="text-white"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>

                        <asp:Label ID="lblPassword" runat="server" Text="Password:" AssociatedControlID="txtPassword" CssClass="text-white"></asp:Label>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        <asp:CheckBox ID="chkShowPassword" runat="server" Text="Show Password" CssClass="show-password" AutoPostBack="true" OnCheckedChanged="chkShowPassword_CheckedChanged" />

                        <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:" AssociatedControlID="txtConfirmPassword" CssClass="text-white"></asp:Label>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>

                        <asp:Label ID="lblEmail" runat="server" Text="Email:" AssociatedControlID="txtEmail" CssClass="text-white"></asp:Label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>

                        <asp:Label ID="lblFullName" runat="server" Text="Full Name:" AssociatedControlID="txtFullName" CssClass="text-white"></asp:Label>
                        <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control"></asp:TextBox>

                        <asp:Label ID="lblDateOfBirth" runat="server" Text="Date of Birth:" AssociatedControlID="txtDateOfBirth" CssClass="text-white"></asp:Label>
                        <asp:TextBox ID="txtDateOfBirth" runat="server" CssClass="form-control" TextMode="date"></asp:TextBox>

                        <asp:Label ID="lblGender" runat="server" Text="Gender:" AssociatedControlID="ddlGender" CssClass="text-white"></asp:Label>
                        <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
                            <asp:ListItem Text="Select" Value=""></asp:ListItem>
                            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                            <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                        </asp:DropDownList>

                        <asp:Label ID="lblProfileImage" runat="server" Text="Profile Image:" CssClass="text-white"></asp:Label>
                        <asp:FileUpload ID="fileUploadProfileImage" runat="server" CssClass="form-control" />

                        <asp:Label ID="lblError" runat="server" Text="" CssClass="text-danger"></asp:Label><br /> 
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-custom" Text="REGISTER" OnClick="Button1_Click" />
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

