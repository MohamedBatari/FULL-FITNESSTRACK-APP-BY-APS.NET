using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace FITNESSTRACKAPPLICATION
{
    public class ADO
    {
        public SqlConnection con = new SqlConnection();
        public SqlCommand cmd = new SqlCommand();
        public SqlDataReader dr;
        public SqlDataAdapter dap = new SqlDataAdapter();
        public DataSet ds = new DataSet();
        public SqlCommandBuilder bc;
        public DataView dv = new DataView();
        public DataView dv1 = new DataView();

        public void CONNECTER()
        {
            if (con.State == ConnectionState.Closed || con.State == ConnectionState.Broken)
            {
                con.ConnectionString = "server=SIMO\\SQLEXPRESS; database=FITNESSAPPLICATION; integrated security=true";
                con.Open();
            }
        }

        public void DECONNECTER()
        {
            if (con.State == ConnectionState.Open)
            {

                con.Close();
            }
        }
    }
}