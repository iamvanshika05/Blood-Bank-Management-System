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
    public partial class BloodRequest : System.Web.UI.Page
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
                Image1.Width = 200;
                Image1.Height = 200;
                txtName.Text = name;
                txtEmail.Text = email;
                txtMobile.Text = mobile;
                txtAddress.Text = address;
                txtBG.Text = bg;
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string st = ConfigurationManager.ConnectionStrings["dbd"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(st))
            {

                con.Open();

                MySqlCommand cmd = new MySqlCommand("insert into bloodrequest values(@Name,@Bg,@Email,@Mobile,@Address)", con);
                
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Bg", bg);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Mobile", mobile);
                cmd.Parameters.AddWithValue("@Address", address);
               


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