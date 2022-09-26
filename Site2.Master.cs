using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;
using System.IO;

namespace BloodDonation.com
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        string url;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Email"]==null)
            {
                Response.Redirect("~/PlzLogin.aspx");
            }

            string st = ConfigurationManager.ConnectionStrings["dbd"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(st))
            {
                con.Open();
                string email2 = string.Empty;
                email2 = Convert.ToString(Session["Email"]);
                MySqlCommand scmd = new MySqlCommand("Select * from registration where Email=@Email", con);
                scmd.Parameters.AddWithValue("@Email", email2);
                MySqlDataReader mdr;
                mdr = scmd.ExecuteReader();

                while (mdr.Read())
                {
                   
                    url = mdr["Image"].ToString();

                }
                Image1.ImageUrl = url;
                con.Close();
             
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("~/SignIn.aspx");
        }
    }
}