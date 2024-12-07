﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TutorManagementSystem.Admin
{
    public partial class AdminLogout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminUsername"] != null)
            {
                Session.Abandon();
                Response.Redirect("AdminLogin.aspx");
            }
        }
    }
}