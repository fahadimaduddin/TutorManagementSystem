<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentDashboard.Master" AutoEventWireup="true" CodeBehind="ViewTutors.aspx.cs" Inherits="TutorManagementSystem.Student.ViewTutors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.6.0.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <h1 class=" bg-dark text-white text-center jumbotron">VIEW TUTORS DETAILS
            </h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="input-group">
                <asp:TextBox ID="SearchTextBox" placeholder="Search Tutors" class="form-control" runat="server"></asp:TextBox>
                <div class="input-group-append">
                    <button id="Searchbtn" runat="server" onserverclick="Searchbtn_ServerClick" type="button" class="btn btn-secondary">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>
<br />
    <div class="row">
        <asp:Repeater ID="ViewtutorsRepeater" runat="server">
            <ItemTemplate>
                <div class="col-md-4">
                    <div class="card bg-dark text-white text-center">
                        <div class="card-header">
                            <small style="font-size: 15px; color: steelblue;">Name</small>
                            <h3>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                            </h3>
                        </div>
                        <div class="card-body">
                            <small style="font-size: 15px; color: steelblue;">Email</small>
                            <h5>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                            </h5>
                            <small style="font-size: 15px; color: steelblue;">Country</small>
                            <h5>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Country") %>'></asp:Label>
                            </h5>
                            <small style="font-size: 15px; color: steelblue;">City</small>
                            <h5>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                            </h5>
                            <small style="font-size: 15px; color: steelblue;">Experience</small>
                            <h5>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Experience") %>'></asp:Label>
                            </h5>
                            <small style="font-size: 15px; color: steelblue;">Qualification</small>
                            <h5>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("Qualification") %>'></asp:Label>
                            </h5>
                            <small style="font-size: 15px; color: steelblue;">Contact No</small>
                            <h5>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("ContactNo") %>'></asp:Label>
                            </h5>
                        </div>
                        <div class="card-footer">
                            <small style="font-size: 15px; color: steelblue;">Degree</small>
                            <h4>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("Degree") %>'></asp:Label>
                            </h4>
                        </div>
                    </div>
                    <br />
                </div>
            </ItemTemplate>

        </asp:Repeater>
    </div>
</asp:Content>
