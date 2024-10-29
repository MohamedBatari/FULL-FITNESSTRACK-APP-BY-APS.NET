using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FITNESSTRACKAPPLICATION
{
    public partial class userpage : System.Web.UI.Page
    {
        ADO d = new ADO();

        public int number()
        {
            d.CONNECTER();
            int cpt;
            d.cmd.CommandText = " select COUNT(*) from Users where Email ='" + txtEmail.Text + "' or Username ='" + TextBox1.Text + "'";
            d.cmd.Connection = d.con;
            cpt = (int)d.cmd.ExecuteScalar();
            d.DECONNECTER();
            return cpt;
        }

        public bool add()
        {
            if (number() == 0)
            {
                d.CONNECTER();
                d.cmd.CommandText = " INSERT INTO Users (Username, PasswordHash, Email, FullName, DateOfBirth, Gender, ImageUrl) VALUES ('" + TextBox1.Text + "','" + txtPassword.Text + "','" + txtEmail.Text + "','" + txtFullName.Text + "','" + txtDateOfBirth.Text + "','" + ddlGender.Text + "','" + fileUploadProfileImage + "')";
                d.cmd.Connection = d.con;
                d.cmd.ExecuteNonQuery();
                d.DECONNECTER();
                return true;
            }
            return false;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["FullName"] = txtFullName.Text;
        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (add() == true)
            {
                TextBox1.Text = "";
                txtPassword.Text = "";
                txtConfirmPassword.Text = "";
                txtEmail.Text = "";
                txtFullName.Text = "";
                txtDateOfBirth.Text = "";
                ddlGender.Text = "";

                Response.Redirect("welcome.aspx");

            }
            else
            {
                Response.Write(" <script>alert('THE USER IS ALREADY IN THE SYSTEM'); </script>  ");
            } 

           


        }

        protected void chkShowPassword_CheckedChanged(object sender, EventArgs e)
        {
            if (chkShowPassword.Checked)
            {
                txtPassword.TextMode = TextBoxMode.SingleLine;
                txtConfirmPassword.TextMode = TextBoxMode.SingleLine;
            }
            else
            {
                txtPassword.TextMode = TextBoxMode.Password;
                txtConfirmPassword.TextMode = TextBoxMode.Password;
            }
        }
    }
}