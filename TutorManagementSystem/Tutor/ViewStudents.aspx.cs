using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


namespace TutorManagementSystem.Tutor
{
    public partial class ViewStudents : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TutorUsername"] == null)
            {
                Response.Redirect("~/TutorLogin.aspx");
            }
            if (!IsPostBack)
            {
                BindRepeater();
            }
        }
        void BindRepeater()
        {
            SqlConnection con = new SqlConnection(cs);
            string sp = "spViewStudents";
            SqlDataAdapter sda = new SqlDataAdapter(sp, con);
            sda.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable data = new DataTable();
            sda.Fill(data);
            ViewStudentsRepeater.DataSource = data;
            ViewStudentsRepeater.DataBind();
        }

        protected void Searchbtn_ServerClick(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from StudentSignup_tbl where ([Name] like('%" + SearchTextBox.Text + "%')or[Gender] like('%" + SearchTextBox.Text + "%')or[Country] like('%" + SearchTextBox.Text + "%')or[City] like('%" + SearchTextBox.Text + "%')or[TuitionType] like('%" + SearchTextBox.Text + "%')or[Standard] like('%" + SearchTextBox.Text + "%')or[Subject] like('%" + SearchTextBox.Text + "%'))";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            if (data.Rows.Count > 0)
            {
                ViewStudentsRepeater.DataSource = data;
                ViewStudentsRepeater.DataBind();
            }
            else
            {
                Response.Write("<script>alert('No Records Founds!')</script>");
                ViewStudentsRepeater.DataSource = null;
                ViewStudentsRepeater.DataBind();
            }
        }
    }
}