using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.IO;

namespace BloodDonation.com
{
    public partial class UserInfo : System.Web.UI.Page
    {
        string email, mobile, name, bg, address, url, age, ht, wt, gender;
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
                    age = mdr["Age"].ToString();
                    wt = mdr["Weight"].ToString();
                    ht = mdr["Height"].ToString();
                    gender = mdr["Gender"].ToString();
                }
               
                txtName.Text = name;
                txtEmail.Text = email;
                txtMobile.Text = mobile;
                txtGender.Text = gender;
                txtWeight.Text = wt;
                txtHeight.Text = ht;
                txtAge.Text = age;
                txtAddress.Text = address;
                txtBg.Text = bg;
                Image1.ImageUrl = url;

                mdr.Close();
                con.Close();
            }
        }
    }
}