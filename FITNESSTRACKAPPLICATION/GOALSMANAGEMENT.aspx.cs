using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FITNESSTRACKAPPLICATION
{
    public partial class GOALSMANAGEMENT : System.Web.UI.Page
    {
        ADO d = new ADO();

        public void RemplirGrid()
        {
            d.CONNECTER();
            d.dap = new SqlDataAdapter("select * from Goals where UserId = '" + Session["IDuser"] + "'", d.con);
            d.dap.Fill(d.ds, "Goals");
            GridView1.DataSource = d.ds.Tables["Goals"];
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

      

        protected void btnAddGoal_Click1(object sender, EventArgs e)
        {
            d.CONNECTER();
            d.cmd.CommandText = " insert into Goals (UserId, GoalType,TargetValue,CurrentValue,StartDate,EndDate) values ('" + Session["IDuser"] + "','" + txtGoalType.Text + "','" + txtTargetValue.Text + "','" + txtCurrentValue.Text + "','" + txtStartDate.Text + "','" + txtEndDate.Text + "')  ";
            d.cmd.Connection = d.con;
            d.cmd.ExecuteNonQuery();
            RemplirGrid();
            d.DECONNECTER();
            Response.Write(" <script>alert('Your goal added! Let's acheive it on time '); </script>  ");
            txtEndDate.Text = "";
            txtStartDate.Text = "";
            txtTargetValue.Text = "";
            txtCurrentValue.Text = "";
            txtGoalType.Text = "";

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int a = e.RowIndex;
            int code = Convert.ToInt32(GridView1.Rows[a].Cells[0].Text);
            d.CONNECTER();
            d.cmd.CommandText = "delete from Goals where GoalId ='" + code + "'";
            d.cmd.Connection = d.con;
            d.cmd.ExecuteNonQuery();
            RemplirGrid();
            d.DECONNECTER();
            Response.Write(" <script>alert('YOU GOAL HAS BEEN DELETED'); </script> ");
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            int r = e.NewSelectedIndex;
            txtGoalId.Text = GridView1.Rows[r].Cells[0].Text;
            txtGoalType.Text = GridView1.Rows[r].Cells[1].Text;
            txtTargetValue.Text = GridView1.Rows[r].Cells[2].Text;
            txtCurrentValue.Text = GridView1.Rows[r].Cells[3].Text;
            txtStartDate.Text = GridView1.Rows[r].Cells[4].Text;
            txtEndDate.Text = GridView1.Rows[r].Cells[5].Text;

        }

        protected void btnUpdateGoal_Click(object sender, EventArgs e)
        {
            if(txtGoalId.Text == "")
            {
                Response.Write(" <script>alert('SELECT THE GOAL BEFORE TO UPDATE'); </script> ");
            }
            else
            {
                d.CONNECTER();
                d.cmd.CommandText = " update Goals set GoalType =@a , TargetValue =@b , CurrentValue =@c , StartDate =@d , EndDate =@e where GoalId  ='" + txtGoalId.Text + "'";
                SqlParameter p1 = new SqlParameter("@a", txtGoalType.Text);
                SqlParameter p2 = new SqlParameter("@b", float.Parse(txtTargetValue.Text));
                SqlParameter p3 = new SqlParameter("@c", float.Parse(txtCurrentValue.Text));
                SqlParameter p4 = new SqlParameter("@d", txtStartDate.Text);
                SqlParameter p5 = new SqlParameter("@e", txtEndDate.Text);
                d.cmd.Parameters.Add(p1);
                d.cmd.Parameters.Add(p2);
                d.cmd.Parameters.Add(p3);
                d.cmd.Parameters.Add(p4);
                d.cmd.Parameters.Add(p5);
                d.cmd.Connection = d.con;

                d.cmd.ExecuteNonQuery();
                RemplirGrid();

                d.DECONNECTER();
                Response.Write(" <script>alert('YOU GOAL HAS BEEN EDITED'); </script> ");
                txtGoalId.Text = "";
                txtEndDate.Text = "";
                txtStartDate.Text = "";
                txtTargetValue.Text = "";
                txtCurrentValue.Text = "";
                txtGoalType.Text = "";
            }

            
        }
    }
}