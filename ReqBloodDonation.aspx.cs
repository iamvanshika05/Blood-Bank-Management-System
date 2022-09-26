using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.IO;
using System.Configuration;

namespace BloodDonation.com
{
    public partial class ReqBloodDonation : System.Web.UI.Page
    {
        string email, mobile, name, bg, address, url;
        protected void Page_Load(object sender, EventArgs e)
        {
            string st = ConfigurationManager.ConnectionStrings["dbd"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(st))
            {
               
               
                string email2 = string.Empty;
                email2 = Convert.ToString(Session["Email"]);
                con.Open();
                MySqlCommand scmd = new MySqlCommand("Select * from registration where Email=@Email", con);
                scmd.Parameters.AddWithValue("@Email", email2);
                MySqlDataReader mdr;
                mdr = scmd.ExecuteReader();

                while (mdr.Read())
                {
                    email = mdr["Email"].ToString();
                    mobile = mdr["Mobile"].ToString();
                    name = mdr["Name"].ToString();
                    bg = mdr["BloodGroup"].ToString();
                    address = mdr["Address"].ToString();
                    url = mdr["Image"].ToString();

                }
                Image1.ImageUrl = url;
                Image1.Width=200;
                Image1.Height = 200;
                txtName.Text = name;
                txtEmail.Text = email;
                txtMobile.Text = mobile;
                txtAddress.Text = address;
                txtBg.Text = bg;
                con.Close();
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            string st = ConfigurationManager.ConnectionStrings["dbd"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(st))
            {
                con.Open();
                string qry = "insert into donorregistration values(?,?,?,?,?,?)";
                MySqlCommand cmd = new MySqlCommand(qry, con);

                cmd.Parameters.AddWithValue("1",name);
                cmd.Parameters.AddWithValue("2",email);
                cmd.Parameters.AddWithValue("3",mobile);
                cmd.Parameters.AddWithValue("4",bg);
                cmd.Parameters.AddWithValue("5",address);
                cmd.Parameters.AddWithValue("6",url);


                cmd.ExecuteNonQuery();
                con.Close();

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Request Added Successfully.....!!!');window,location='Home.aspx';", true);
                name = "";
                email = "";
                mobile = "";
                bg = "";
                address = "";
                url = "";
            }
        }
    }
}