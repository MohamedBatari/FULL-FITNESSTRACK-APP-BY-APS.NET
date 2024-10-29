using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FITNESSTRACKAPPLICATION
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=SIMO\\SQLEXPRESS; database=FITNESSAPPLICATION; integrated security=true");
        int id;

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["FullName"] = TextBox1.Text;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            con.Open();
            bool trouver = false;
            SqlCommand mc = new SqlCommand("select * from Users", con);
            SqlDataReader red = mc.ExecuteReader();
            while (red.Read())
            {
                if (TextBox1.Text == red[1].ToString() && TextBox2.Text == red[2].ToString() )
                {
                    trouver = true;
                    break;
                }
               id = int.Parse(red[0].ToString()) + 1 ;
            }
            Session["user"] = TextBox1.Text;
            Session["IDuser"] = id ;
            if (trouver == true)
            {
                Response.Redirect("afterlogin.aspx");
            }
            else
            {
                Response.Write("<script>alert('username or password incorrect')</script>");
            }
            con.Close();
        }
    }
}