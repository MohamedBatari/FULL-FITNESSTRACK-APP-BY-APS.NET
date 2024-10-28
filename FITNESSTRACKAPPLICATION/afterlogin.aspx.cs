using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FITNESSTRACKAPPLICATION
{
    public partial class afterlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string fullName = (string)Session["FullName"];
                lblFullName.Text = fullName ?? "Guest";
            }

            
        }

        protected void btnWorkouts_Click(object sender, EventArgs e)
        {
            Response.Redirect("WORKOUTMANAGEMENT.aspx");
        }

        protected void btnProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("USERPROFILE.aspx");

        }

        protected void btnGoals_Click(object sender, EventArgs e)
        {
            Response.Redirect("GOALSMANAGEMENT.aspx");

        }

        protected void btnChallenges_Click(object sender, EventArgs e)
        {
            Response.Redirect("CHALLENGEMANAGEMENT.aspx");

        }
    }
}