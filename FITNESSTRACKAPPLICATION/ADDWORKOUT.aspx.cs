using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FITNESSTRACKAPPLICATION
{
    public partial class ADDWORKOUT : System.Web.UI.Page
    {
        ADO d = new ADO();

      
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddWorkout_Click(object sender, EventArgs e)
        {
            d.CONNECTER();
            d.cmd.CommandText = " INSERT INTO Workouts (UserId, WorkoutType, Duration, CaloriesBurned, Date_, Notes) VALUES  ('" + Session["IDuser"] + "','" + txtWorkoutType.Text + "','" + txtDuration.Text + "','" + txtCaloriesBurned.Text + "','" + txtDate.Text + "','" + txtNotes.Text + "')  ";
            d.cmd.Connection = d.con;
            d.cmd.ExecuteNonQuery();
            d.DECONNECTER();
            Response.Write(" <script>alert('THE WORKOUT ADDED ! WELL DONE '); </script>  ");
            Response.Redirect("afterlogin.aspx");

        }
    }
}