using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace TutorManagementSystem.Student
{
    public partial class ViewTutors : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["StudentUsername"] == null)
            {
                Response.Redirect("~/StudentLogin.aspx");
            }
            if (!IsPostBack)
            {
                BindRepeater();
            }
        }
        void BindRepeater()
        {
            SqlConnection con = new SqlConnection(cs);
            string sp = "spViewTutors";
            SqlDataAdapter sda = new SqlDataAdapter(sp, con);
            sda.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable data = new DataTable();
            sda.Fill(data);
            ViewtutorsRepeater.DataSource = data;
            ViewtutorsRepeater.DataBind();
        }

        protected void Searchbtn_ServerClick(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from TutorSignup_tbl where ([Name] like('%"+SearchTextBox.Text+"%')or[Gender] like('%"+SearchTextBox.Text+"%')or[Country] like('%"+SearchTextBox.Text+"%')or[City] like('%"+SearchTextBox.Text+"%')or[Degree] like('%"+SearchTextBox.Text+"%')or[Experience] like('%"+SearchTextBox.Text+ "%')or[Qualification] like('%" + SearchTextBox.Text + "%'))";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            if (data.Rows.Count > 0)
            {
                ViewtutorsRepeater.DataSource = data;
                ViewtutorsRepeater.DataBind();
            }
            else
            {
                Response.Write("<script>alert('No Records Founds!')</script>");
                ViewtutorsRepeater.DataSource = null;
                ViewtutorsRepeater.DataBind();
            }
        }
    }
}