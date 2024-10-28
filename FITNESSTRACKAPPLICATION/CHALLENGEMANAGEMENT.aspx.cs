using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FITNESSTRACKAPPLICATION
{
    public partial class CHALLENGEMANAGEMENT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnYourListChalllenge_Click(object sender, EventArgs e)
        {
            Response.Redirect("CHALLENGEUSERLIST.aspx");
        }

        protected void btngoinChalllenge_Click(object sender, EventArgs e)
        {
            Response.Redirect("userchallenges.aspx");

        }
    }
}