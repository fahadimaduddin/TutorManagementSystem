<%@ Page Title="" Language="C#" MasterPageFile="~/TMS.Master" AutoEventWireup="true" CodeBehind="TutorSignup.aspx.cs" Inherits="TutorManagementSystem.TutorSignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #shadow {
            box-shadow: -2px 2px 29px 1px rgba(0,0,0,0.75);
            -webkit-box-shadow: -2px 2px 29px 1px rgba(0,0,0,0.75);
            -moz-box-shadow: -2px 2px 29px 1px rgba(0,0,0,0.75);
        }
    </style>
    <script type="text/javascript">
        function SuccessSignup() {
            Swal.fire(
                'Success!',
                'Congratulations, your account has been successfully created.',
                'success'
            )
        }
        function FailedSignup() {
            Swal.fire(
                'Failure!',
                "We can't sign in to your account",
                'error'
            )
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <div class="container" id="shadow" style="background-color: whitesmoke;">
        <br />
        <div class="row">
            <div class="col-md-12">
                <h1 class="jumbotron text-center text-white" style="background-color: #1e4356;">Tutor Sign Up</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <asp:TextBox ID="NameTextBox" class="form-control" placeholder="Your Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="NameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="NameRequiredFieldValidator" runat="server" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="surnameTextBox" class="form-control" placeholder="Your Surname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="surnameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="SurnameRequiredFieldValidator" runat="server" ErrorMessage="Surname is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="EmailTextBox" TextMode="Email" class="form-control" placeholder="Your Email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="EmailRequiredFieldValidator" runat="server" ErrorMessage="Email is Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" runat="server" ErrorMessage="Email is Invalid" ControlToValidate="EmailTextBox" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="AgeTextBox" class="form-control" placeholder="Your Age" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="AgeTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="AgeRequiredFieldValidator" runat="server" ErrorMessage="Age is Required"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="AgeRangeValidator" runat="server" ErrorMessage="Age Should be Within 18 to 60" ControlToValidate="AgeTextBox" Display="Dynamic" ForeColor="Red" MaximumValue="60" MinimumValue="18" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                <br />
                <asp:DropDownList ID="CountriesDropDownList" class="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CountriesDropDownList_SelectedIndexChanged" >
                </asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="CountriesDropDownList" InitialValue="Select Country" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="CountryRequiredFieldValidator" runat="server" ErrorMessage="Country is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:DropDownList ID="CitiesDropDownList" class="form-control" runat="server">
               <asp:ListItem>Select City</asp:ListItem>
                    </asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="CitiesDropDownList" InitialValue="Select City" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="CityRequiredFieldValidator" runat="server" ErrorMessage="City is Required"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-4">

                <asp:DropDownList ID="GenderDropDownList" class="form-control" runat="server">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="GenderDropDownList" InitialValue="Select Gender" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="GenderRequiredFieldValidator" runat="server" ErrorMessage="Gender is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:DropDownList ID="MaritalStatusDropDownList" class="form-control" runat="server">
                    <asp:ListItem>Select Marital Status</asp:ListItem>
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Engaged</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Divorced</asp:ListItem>
                    <asp:ListItem>Widowed</asp:ListItem>
                    <asp:ListItem>Separated</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="MaritalStatusDropDownList" InitialValue="Select Marital Status" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="MaritalStatusRequiredFieldValidator" runat="server" ErrorMessage="Marital Status is Required"></asp:RequiredFieldValidator>

                <br />

                <asp:DropDownList ID="QualificationDropDownList" class="form-control" runat="server">
                    <asp:ListItem>Select Qualification</asp:ListItem>
                    <asp:ListItem>Intermediate</asp:ListItem>
                    <asp:ListItem>Graduate</asp:ListItem>
                    <asp:ListItem>Masters</asp:ListItem>
                    <asp:ListItem>MPHIL</asp:ListItem>
                    <asp:ListItem>PHD</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="QualificationDropDownList" InitialValue="Select Qualification" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="QualificationRequiredFieldValidator" runat="server" ErrorMessage="Qualification is Required"></asp:RequiredFieldValidator>

                <br />
                <asp:TextBox ID="AddressTextBox" TextMode="MultiLine" Rows="6" Columns="20" class="form-control" placeholder="Your Address" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="AddressTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="AddressRequiredFieldValidator" runat="server" ErrorMessage="Address is Required"></asp:RequiredFieldValidator>

            </div>
            <div class="col-md-4">

                <asp:TextBox ID="DegreeTextBox" class="form-control" placeholder="Your Degree" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="DegreeTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="DegreeRequiredFieldValidator" runat="server" ErrorMessage="Degree is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="ContactTextBox" class="form-control" TextMode="Phone" placeholder="Your Contact" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="ContactTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="ContactRequiredFieldValidator" runat="server" ErrorMessage="Contact is Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="ContactRegularExpressionValidator" runat="server" ErrorMessage="Contact is Invalid" ControlToValidate="ContactTextBox" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^((\+92)|(0092))-{0,1}\d{3}-{0,1}\d{7}$|^\d{11}$|^\d{4}-\d{7}$"></asp:RegularExpressionValidator>
                <br />
                <asp:DropDownList ID="ExperienceDropDownList" class="form-control" runat="server">
                    <asp:ListItem>Select Experience</asp:ListItem>
                    <asp:ListItem>One year</asp:ListItem>
                    <asp:ListItem>Two years</asp:ListItem>
                    <asp:ListItem>Three years</asp:ListItem>
                    <asp:ListItem>Four years</asp:ListItem>
                    <asp:ListItem>More than five years</asp:ListItem>
                    <asp:ListItem>More than Eight years</asp:ListItem>
                    <asp:ListItem>More than Ten years</asp:ListItem>
                    <asp:ListItem>More than Fifteen years</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ControlToValidate="ExperienceDropDownList" InitialValue="Select Experience" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="ExperienceRequiredFieldValidator" runat="server" ErrorMessage="Experience is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="UsernameTextBox" class="form-control" placeholder="Your Username" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="UsernameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="UsernameRequiredFieldValidator" runat="server" ErrorMessage="Username is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="PasswordTextBox" TextMode="Password" class="form-control" placeholder="Your Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="PasswordRequiredFieldValidator" runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ControlToValidate="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="PasswordRegularExpressionValidator" runat="server" ErrorMessage="Password must be strong" ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="ConfirmPasswordTextBox" TextMode="Password" class="form-control" placeholder="Your Confirm Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="ConfirmPasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="ConfirmPasswordRequiredFieldValidator" runat="server" ErrorMessage="Confirm Password is Required"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="ConfirmPasswordCompareValidator" runat="server" ErrorMessage="The confirmation password do not match." ControlToCompare="PasswordTextBox" ControlToValidate="ConfirmPasswordTextBox" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                <br />
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-4 mx-auto">
                <asp:Button ID="SignupButton" onclick="SignupButton_Click" CssClass="form-control btn text-white" style="background-color: #1e4356;" runat="server" Text="Sign Up" />
            </div>
        </div>
        <br />
    </div>
    <br />
</asp:Content>
