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
    public partial class SignUp : System.Web.UI.Page
    {
        string gender, filename;
        protected void Page_Load(object sender, EventArgs e)
        {
            string st = ConfigurationManager.ConnectionStrings["dbd"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(st))
                con.Open();
        }

       
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string st = ConfigurationManager.ConnectionStrings["dbd"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(st))
            {
                try
                {

                    con.Open();

                    if (rbMale.Checked)
                    {
                        gender = "Male";
                    }
                    else if (rbFemale.Checked)
                    {
                        gender = "Female";
                    }
                    filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    FileUpload1.SaveAs(Server.MapPath("~/Images/" + filename));

                    string qry = "insert into registration values(?,?,?,?,?,?,?,?,?,?,?)";
                    MySqlCommand cmd = new MySqlCommand(qry, con);

                    cmd.Parameters.AddWithValue("1", txtName.Text);
                    cmd.Parameters.AddWithValue("2", txtEmail.Text);
                    cmd.Parameters.AddWithValue("3", txtMobile.Text);
                    cmd.Parameters.AddWithValue("4", gender);
                    cmd.Parameters.AddWithValue("5", ddAge.SelectedValue);
                    cmd.Parameters.AddWithValue("6", ddBg.SelectedValue);
                    cmd.Parameters.AddWithValue("7", txtWeight.Text);
                    cmd.Parameters.AddWithValue("8", txtHeight.Text);
                    cmd.Parameters.AddWithValue("9", "Images/" + filename);
                    cmd.Parameters.AddWithValue("10", txtPassword.Text);
                    cmd.Parameters.AddWithValue("11", txtAddress.Text);

                    cmd.ExecuteNonQuery();
                    Response.Write("Registration is successfull");
                    con.Close();
                    Response.Redirect("~/SignIn.aspx");
                   
                }
                catch (Exception ee)
                {
                    Response.Write("Error:" + ee.ToString());
                }

            }
        }

    }
}