using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FITNESSTRACKAPPLICATION
{
    public partial class WORKOUTMANAGEMENT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }


        protected void btnAddNewWorkout_Click(object sender, EventArgs e)
        {

        }

        protected void btnYourListWorkout_Click1(object sender, EventArgs e)
        {
            Response.Redirect("WORKOUTLIST.aspx");

        }

        protected void btnAddNewWorkout_Click1(object sender, EventArgs e)
        {
            Response.Redirect("ADDWORKOUT.aspx");

        }

        protected void btnUpdateWorkout_Click(object sender, EventArgs e)
        {

        }
    }
}