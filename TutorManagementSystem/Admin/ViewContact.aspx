<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminDashboard.Master" AutoEventWireup="true" CodeBehind="ViewContact.aspx.cs" Inherits="TutorManagementSystem.Admin.ViewContact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.6.0.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <h1 class="jumbotron bg-dark text-white text-center">VIEW CONTACT DETAILS
            </h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <asp:GridView class="table table-hover table-bordered table-striped table-dark" ID="ViewContactGridView" runat="server" AutoGenerateColumns="False" OnRowDeleting="ViewContactGridView_RowDeleting">
                <Columns>
                    <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label ID="LabelID" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="NAME">
                        <ItemTemplate>
                            <asp:Label ID="LabelName" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="EMAIL">
                        <ItemTemplate>
                            <asp:Label ID="LabelEmail" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="SUBJECT">
                        <ItemTemplate>
                            <asp:Label ID="LabelSubject" runat="server" Text='<%# Bind("Subject") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="MESSAGE">
                        <ItemTemplate>
                            <asp:Label ID="LabelMessage" runat="server" Text='<%# Bind("Message") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Operation" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="DeleteLinkButton" runat="server" OnClientClick="return confirm('Are You Sure To Delete Data??')" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                        <ControlStyle CssClass="btn btn-danger text-white" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
