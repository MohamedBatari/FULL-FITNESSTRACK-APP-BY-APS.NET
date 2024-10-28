using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FITNESSTRACKAPPLICATION
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

     

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("USERPROFILE.aspx");

        }

        protected void LinkButton2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("WORKOUTMANAGEMENT.aspx");

        }

        protected void LinkButton3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("GOALSMANAGEMENT.aspx");

        }

        protected void LinkButton4_Click1(object sender, EventArgs e)
        {
            Response.Redirect("CHALLENGEMANAGEMENT.aspx");

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            
            Session.Clear(); 
            Session.Abandon(); 
            Response.Redirect("login.aspx");
        }
    }
}