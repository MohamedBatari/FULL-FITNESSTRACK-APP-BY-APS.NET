using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FITNESSTRACKAPPLICATION
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

     

     
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("HOME.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WORKOUT.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("GOALS.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("CHALLENGES.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("PROGRESSREPORT.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("userpage.aspx");

        }

        protected void btnTerms_Click(object sender, EventArgs e)
        {
            Response.Redirect("TERMS.aspx");

        }

        protected void btnPrivacy_Click(object sender, EventArgs e)
        {
            Response.Redirect("PRIVACY.aspx");

        }

        protected void btnMenu_Click(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Write(" <script>alert('Login first or sign up '); </script>  ");
            }
            else
            {
                Response.Redirect("afterlogin.aspx");
            }
        }
    }
}