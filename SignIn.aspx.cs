using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.IO;
using System.Configuration;

namespace BloodDonation.com
{
    public partial class SignIn : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            string st = ConfigurationManager.ConnectionStrings["dbd"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(st))
                con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string st = ConfigurationManager.ConnectionStrings["dbd"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(st))
            {
                try
                {
                    Session["Email"] = TextBox1.Text;
                    string uid = TextBox1.Text;
                    string pass = TextBox2.Text;
                    con.Open(); 
                    string qry = "Select* from registration where Email='" + uid + "'and Password='" + pass + "'";
                    MySqlCommand cmd = new MySqlCommand(qry, con);
                    MySqlDataReader sdr = cmd.ExecuteReader();

                    if (sdr.Read())
                    {
                        if (uid == "admin@gmail.com")
                        {
                            Response.Redirect("~/Admin.aspx");
                        }
                        else
                        {
                            Response.Redirect("~/Home.aspx");
                        }
                    }
                    else
                    {
                        Label1.Text = "Email ID or Password incorrect";
                    }
                    con.Close();
                }
                catch (Exception ee)
                {
                    Response.Write(ee.Message);
                }
            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}