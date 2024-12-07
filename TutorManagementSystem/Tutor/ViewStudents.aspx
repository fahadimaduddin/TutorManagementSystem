<%@ Page Title="" Language="C#" MasterPageFile="~/Tutor/TutorDashboard.Master" AutoEventWireup="true" CodeBehind="ViewStudents.aspx.cs" Inherits="TutorManagementSystem.Tutor.ViewStudents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.6.0.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
        <div class="col-md-12">
            <h1 class=" bg-dark text-white text-center jumbotron">VIEW STUDENTS DETAILS
            </h1>
        </div>
    </div>
      <div class="row">
        <div class="col-md-4">
            <div class="input-group">
                <asp:TextBox ID="SearchTextBox" placeholder="Search Students" class="form-control" runat="server"></asp:TextBox>
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
        <asp:Repeater ID="ViewStudentsRepeater" runat="server">
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
                             <small style="font-size: 15px; color: steelblue;">Gender</small>
                            <h5>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                            </h5>
                            <small style="font-size: 15px; color: steelblue;">Country</small>
                            <h5>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Country") %>'></asp:Label>
                            </h5>
                            <small style="font-size: 15px; color: steelblue;">City</small>
                            <h5>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                            </h5>
                            <small style="font-size: 15px; color: steelblue;">Contact No</small>
                            <h5>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("ContactNo") %>'></asp:Label>
                            </h5>
                             <small style="font-size: 15px; color: steelblue;">Subject</small>
                            <h5>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("Subject") %>'></asp:Label>
                            </h5>
                             <small style="font-size: 15px; color: steelblue;">Tuition Type</small>
                            <h5>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("TuitionType") %>'></asp:Label>
                            </h5>
                        </div>
                        <div class="card-footer">
                            <small style="font-size: 15px; color: steelblue;">Standard</small>
                            <h4>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Standard") %>'></asp:Label>
                            </h4>
                        </div>
                    </div>
                    <br />
                </div>
            </ItemTemplate>
            
        </asp:Repeater>
    </div>

</asp:Content>
