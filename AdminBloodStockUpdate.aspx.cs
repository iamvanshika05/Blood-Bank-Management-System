using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace BloodDonation.com
{
    public partial class AdminBloodStockUpdate : System.Web.UI.Page
    {
        MySqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            string st = ConfigurationManager.ConnectionStrings["dbd"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(st))
            {
                DataTable dt = new DataTable();
                con.Open();

                MySqlCommand scmd = new MySqlCommand("SELECT * from bloodstock", con);
                MySqlDataAdapter sda = new MySqlDataAdapter(scmd);
                sda.Fill(dt);
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
                con.Close();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            string st = ConfigurationManager.ConnectionStrings["dbd"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(st))
            {

                con.Open();
                if (DropDownList1.SelectedIndex.Equals(1))
                {
                    cmd = new MySqlCommand("Update bloodstock SET Ap ='" + TextBox1.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                }
                else if (DropDownList1.SelectedIndex.Equals(2))
                {
                    cmd = new MySqlCommand("Update bloodstock SET An ='" + TextBox1.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                }
                else if (DropDownList1.SelectedIndex.Equals(3))
                {
                    cmd = new MySqlCommand("Update bloodstock SET Bp ='" + TextBox1.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                }
                else if (DropDownList1.SelectedIndex.Equals(4))
                {
                    cmd = new MySqlCommand("Update bloodstock SET Bn ='" + TextBox1.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                }
                else if (DropDownList1.SelectedIndex.Equals(5))
                {
                    cmd = new MySqlCommand("Update bloodstock SET Op ='" + TextBox1.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                }
                else if (DropDownList1.SelectedIndex.Equals(6))
                {
                    cmd = new MySqlCommand("Update bloodstock SET Onn ='" + TextBox1.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                }
                else if (DropDownList1.SelectedIndex.Equals(7))
                {
                    cmd = new MySqlCommand("Update bloodstock SET ABp ='" + TextBox1.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                }
                else if (DropDownList1.SelectedIndex.Equals(8))
                {
                    cmd = new MySqlCommand("Update bloodstock SET ABn ='" + TextBox1.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                }
                con.Close();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Request Added Successfully.....!!!');window,location='AdminBloodStockUpdate.aspx';", true);
            }
        }
    }
}