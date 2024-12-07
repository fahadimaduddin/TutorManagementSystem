﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TutorManagementSystem.Student
{
    public partial class StudentLogout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["StudentUsername"] != null)
            {
                Session.Abandon();
                Response.Redirect("~/StudentLogin.aspx");
            }
        }
    }
}