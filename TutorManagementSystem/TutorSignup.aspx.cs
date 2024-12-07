using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace TutorManagementSystem
{
    public partial class TutorSignup : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCountryDDL();
            }
        }
        void ResetContact()
        {
            NameTextBox.Text = "";
            surnameTextBox.Text = "";
            EmailTextBox.Text = "";
            AgeTextBox.Text = "";
            CitiesDropDownList.ClearSelection();
            CountriesDropDownList.ClearSelection();
            AddressTextBox.Text = "";
            DegreeTextBox.Text = "";
            ContactTextBox.Text = "";
            UsernameTextBox.Text = "";
            PasswordTextBox.Text = "";
            QualificationDropDownList.ClearSelection();
            GenderDropDownList.ClearSelection();
            ExperienceDropDownList.ClearSelection();
            MaritalStatusDropDownList.ClearSelection();

        }
        protected void SignupButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            try
            {
                string sp = "spTutorSignup";
                SqlCommand cmd = new SqlCommand(sp, con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@name", NameTextBox.Text);
                cmd.Parameters.AddWithValue("@surname", surnameTextBox.Text);
                cmd.Parameters.AddWithValue("@email", EmailTextBox.Text);
                cmd.Parameters.AddWithValue("@gender", GenderDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@Age", AgeTextBox.Text);
                cmd.Parameters.AddWithValue("@country", CountriesDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@city", CitiesDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@address", AddressTextBox.Text);
                cmd.Parameters.AddWithValue("@maritalStatus", MaritalStatusDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@qualicaftion", QualificationDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@degree", DegreeTextBox.Text);
                cmd.Parameters.AddWithValue("@experience", ExperienceDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@contactNo", ContactTextBox.Text);
                cmd.Parameters.AddWithValue("@username", UsernameTextBox.Text);
                cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);
                con.Open();
                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "SuccessSignup();", true);
                    ResetContact();
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "FailedSignup();", true);
                }
            }
            catch (SqlException ex)
            {
                if (ex.Message.Contains("UNIQUE KEY constraint"))
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", " Swal.fire('Failure!','We cant sign in to your account " + UsernameTextBox.Text + " Username is already Exist.','error' )", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "FailedSignup();", true);
                }
            }
            finally
            {
                con.Close();
            }
        }
        void BindCountryDDL()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from Countries";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            CountriesDropDownList.DataSource = data;
            CountriesDropDownList.DataTextField = "CountryName";
            CountriesDropDownList.DataValueField = "CountryID";
            CountriesDropDownList.DataBind();

            ListItem selectItem = new ListItem("Select Country", "Select Country");
            selectItem.Selected = true;
            CountriesDropDownList.Items.Insert(0, selectItem);
        }
        void BindCityDDL(int CountryID)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from Cities where CountryId = @CountryID";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            sda.SelectCommand.Parameters.AddWithValue("@CountryID", CountryID);
            DataTable data = new DataTable();
            sda.Fill(data);
            CitiesDropDownList.DataSource = data;
            CitiesDropDownList.DataTextField = "CityName";
            CitiesDropDownList.DataValueField = "CityID";
            CitiesDropDownList.DataBind();



            ListItem selectItem = new ListItem("Select City", "Select City");
            selectItem.Selected = true;
            CitiesDropDownList.Items.Insert(0, selectItem);
        }

        protected void CountriesDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int countryId = Convert.ToInt32(CountriesDropDownList.SelectedValue);
                BindCityDDL(countryId);
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Country is Required')</script>");
            }
        }
    }
}