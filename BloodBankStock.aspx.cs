using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;
using System.IO;

namespace BloodDonation.com
{
    public partial class BloodBankStock : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string st = ConfigurationManager.ConnectionStrings["dbd"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(st))
            {
                DataTable dt = new DataTable();
                con.Open();
                MySqlCommand cmd = new MySqlCommand("select* from bloodstock", con);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);

                da.Fill(dt);

                if(dt.Rows.Count>0)
                {
                    Label1.Text = dt.Rows[0]["Ap"].ToString();
                    Label2.Text = dt.Rows[0]["An"].ToString();
                    Label3.Text = dt.Rows[0]["Bp"].ToString();
                    Label4.Text = dt.Rows[0]["Bn"].ToString();
                    Label5.Text = dt.Rows[0]["Op"].ToString();
                    Label6.Text = dt.Rows[0]["Onn"].ToString();
                    Label7.Text = dt.Rows[0]["ABp"].ToString();
                    Label8.Text = dt.Rows[0]["ABn"].ToString();
                
                }

            }
        }
    }
}