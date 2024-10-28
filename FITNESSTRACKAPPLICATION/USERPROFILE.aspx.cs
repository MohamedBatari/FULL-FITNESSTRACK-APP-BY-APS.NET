using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FITNESSTRACKAPPLICATION
{
    public partial class USERPROFILE : System.Web.UI.Page
    {
        ADO d = new ADO();

        public void RemplirGrid()
        {
            d.CONNECTER();
            d.dap = new SqlDataAdapter("select*from Users where UserId = '" + Session["IDuser"] + "'", d.con);
            d.dap.Fill(d.ds);

            txtFullName.Text = d.ds.Tables[0].Rows[0]["FullName"].ToString();
            txtUsername.Text = d.ds.Tables[0].Rows[0]["Username"].ToString();
            txtEmail.Text = d.ds.Tables[0].Rows[0]["Email"].ToString();
            txtDateOfBirth.Text = d.ds.Tables[0].Rows[0]["DateOfBirth"].ToString();
            txtGender.Text = d.ds.Tables[0].Rows[0]["Gender"].ToString();



            d.DECONNECTER();

        }



        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                RemplirGrid();
            }


        }

        protected void btnEditProfile_Click(object sender, EventArgs e)
        {
            d.CONNECTER();
            d.cmd.CommandText = " update Users set FullName =@a , Username =@b , Email =@c , DateOfBirth =@d , Gender =@e where UserId  ='" + Session["IDuser"] + "'";
            SqlParameter p1 = new SqlParameter("@a", txtFullName.Text);
            SqlParameter p2 = new SqlParameter("@b", txtUsername.Text);
            SqlParameter p3 = new SqlParameter("@c", txtEmail.Text);
            SqlParameter p4 = new SqlParameter("@d", txtDateOfBirth.Text);
            SqlParameter p5 = new SqlParameter("@e", txtGender.Text);
            d.cmd.Parameters.Add(p1);
            d.cmd.Parameters.Add(p2);
            d.cmd.Parameters.Add(p3);
            d.cmd.Parameters.Add(p4);
            d.cmd.Parameters.Add(p5);
            d.cmd.Connection = d.con;

            d.cmd.ExecuteNonQuery();
            RemplirGrid();

            d.DECONNECTER();
            Response.Write(" <script>alert('YOU PROFILE HAS BEEN EDITED'); </script> ");
            txtFullName.ReadOnly = false;
            txtGender.ReadOnly = false;
            txtDateOfBirth.ReadOnly = false;

        }

        protected void btnclickEditProfile_Click(object sender, EventArgs e)
        {
            txtFullName.ReadOnly = false;
            txtGender.ReadOnly = false;
            txtDateOfBirth.ReadOnly = false;
        }
    }
}