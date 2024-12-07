using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace TutorManagementSystem.Admin
{
    public partial class ViewContact : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminUsername"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
            }
            if (!IsPostBack)
            {
                BindGridView();
            }
        }
        void BindGridView()
        {
            SqlConnection con = new SqlConnection(cs);
            string sp = "spViewContact";
            SqlDataAdapter sda = new SqlDataAdapter(sp, con);
            sda.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable data = new DataTable();
            sda.Fill(data);
            ViewContactGridView.DataSource = data;
            ViewContactGridView.DataBind();
        }

        protected void ViewContactGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = ViewContactGridView.Rows[e.RowIndex];
            Label ItemId = (Label)row.FindControl("LabelID");
            string Id = ItemId.Text;
            SqlConnection con = new SqlConnection(cs);
            string query = "delete from Contact_tbl where Id = @id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", Id);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("<script>alert('Data has been Deleted Successfully!')</script>");
                BindGridView();
            }
            con.Close();
        }
    }
}