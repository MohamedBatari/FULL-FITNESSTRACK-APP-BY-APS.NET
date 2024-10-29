using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FITNESSTRACKAPPLICATION
{
    public partial class WORKOUTLIST : System.Web.UI.Page
    {

        ADO d = new ADO();

        public void RemplirGrid()
        {
            d.CONNECTER();
            d.dap = new SqlDataAdapter("select *from Workouts where UserId = '" + Session["IDuser"] + "'", d.con);
            d.dap.Fill(d.ds, "workout");
            GridView1.DataSource = d.ds.Tables["workout"];
            GridView1.DataBind();

            d.DECONNECTER();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                RemplirGrid();

            }
        }
    }
}