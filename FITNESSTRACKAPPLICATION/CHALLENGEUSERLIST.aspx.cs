using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FITNESSTRACKAPPLICATION
{
    public partial class CHALLENGEUSERLIST : System.Web.UI.Page
    {

        ADO d = new ADO();

        public void RemplirGrid()
        {
            d.CONNECTER();
            d.dap = new SqlDataAdapter("select *from Challenges where CreatedBy = '" + Session["IDuser"] + "'", d.con);
            d.dap.Fill(d.ds, "Challenge");
            GridView1.DataSource = d.ds.Tables["Challenge"];
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

        protected void btnAddChallenge_Click(object sender, EventArgs e)
        {
            d.CONNECTER();
            d.cmd.CommandText = " insert into Challenges (Title, Description_,StartDate,EndDate,CreatedBy) values ('" + txttitle + "','" + txtdiscription.Text + "','" + txtStartDate.Text + "','" + txtEndDate.Text + "','" + Session["IDuser"] + "')  ";
            d.cmd.Connection = d.con;
            d.cmd.ExecuteNonQuery();
            RemplirGrid();
            d.DECONNECTER();
            Response.Write(" <script>alert('Your Challenge added! Let's acheive it on time '); </script>  ");
            
            txtStartDate.Text = "";
            txtEndDate.Text = "";
            txtdiscription.Text = "";
            txttitle.Text = "";
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            int r = e.NewSelectedIndex;
            txtChallengeId.Text = GridView1.Rows[r].Cells[0].Text;
            txttitle.Text = GridView1.Rows[r].Cells[1].Text;
            txtdiscription.Text = GridView1.Rows[r].Cells[2].Text;
            txtStartDate.Text = GridView1.Rows[r].Cells[3].Text;
            txtEndDate.Text = GridView1.Rows[r].Cells[4].Text;

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int a = e.RowIndex;
            int code = Convert.ToInt32(GridView1.Rows[a].Cells[0].Text);
            d.CONNECTER();
            d.cmd.CommandText = "delete from Challenges where ChallengeId ='" + code + "'";
            d.cmd.Connection = d.con;
            d.cmd.ExecuteNonQuery();
            RemplirGrid();
            d.DECONNECTER();
            Response.Write(" <script>alert('YOU CHALLENGE HAS BEEN DELETED'); </script> ");
        }

        protected void btnUpdateGoal_Click(object sender, EventArgs e)
        {
            if (txtChallengeId.Text == "")
            {
                Response.Write(" <script>alert('SELECT THE THE CHALLENGE BEFORE TO UPDATE'); </script> ");
            }
            else
            {
                d.CONNECTER();
                d.cmd.CommandText = " update Challenges set Title =@a , Description_ =@b , StartDate =@c , EndDate =@d  where ChallengeId  ='" + txtChallengeId.Text + "'";
                SqlParameter p1 = new SqlParameter("@a", txttitle.Text);
                SqlParameter p2 = new SqlParameter("@b", txtdiscription.Text);
                SqlParameter p3 = new SqlParameter("@c", txtStartDate.Text);
                SqlParameter p4 = new SqlParameter("@d", txtEndDate.Text);
                d.cmd.Parameters.Add(p1);
                d.cmd.Parameters.Add(p2);
                d.cmd.Parameters.Add(p3);
                d.cmd.Parameters.Add(p4);
                d.cmd.Connection = d.con;
                d.cmd.ExecuteNonQuery();
                RemplirGrid();
                d.DECONNECTER();
                Response.Write(" <script>alert('YOU CHALLENGE HAS BEEN EDITED'); </script> ");
                txtChallengeId.Text = "";
                txtdiscription.Text = "";
                txtStartDate.Text = "";
                txtEndDate.Text = "";
                txttitle.Text = "";

            }
         
        }
    }
}