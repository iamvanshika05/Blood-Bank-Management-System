using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;

namespace BloodDonation.com
{
    public partial class SearchBloodDonor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string st = ConfigurationManager.ConnectionStrings["dbd"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(st))
            {

                string qry = "SELECT Name,Email,Mobile,BloodGroup,Address FROM  donorregistration WHERE BloodGroup='" + DropDownList1.SelectedItem.Text + "'";
                con.Open();
                MySqlCommand cmd = new MySqlCommand(qry, con);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();

            }

        }
       
    }
}