using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class Adminlogin : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["UNAME"] != null && Request.Cookies["UPWD"] != null)
            {
                txtUsername.Text = Request.Cookies["UNAME"].Value;
                txtPass.Text = Request.Cookies["UPWD"].Value;
                CheckBox1.Checked = true;

            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Artgallery"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Admin where adminname= @username and password= @pwd", con);
            cmd.Parameters.AddWithValue("@username", txtUsername.Text);

            cmd.Parameters.AddWithValue("@pwd", txtPass.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                Response.Redirect("~/default.aspx");
                lblError.Text = "valid Username and password";
                if (CheckBox1.Checked)
                {
                    Response.Cookies["UNAME"].Value = txtUsername.Text;
                    Response.Cookies["UPWD"].Value = txtPass.Text;

                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(10);

                    Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(10);

                }
                else
                {
                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);

                    Response.Cookies["UPWD"].Expires = DateTime.Now.AddDays(-1);
                }
                /*string Utype;
                Utype = dt.Rows[0][6].ToString().Trim();

                if (Utype == "User")
                {
                    Session["Username"] = txtUsername.Text;
                    Response.Redirect("~/UserHome.aspx");

                }
                if (Utype == "Admin")
                {
                    Session["Username"] = txtUsername.Text;
                    Response.Redirect("~/AdminHome.aspx");

                }   */

            }

            else
            {
                lblError.Text = "Invalid Username and password";
            }
            //lblMsg.Text = "Registration Successfully done";
            //lblMsg.ForeColor = System.Drawing.Color.Green;

            con.Close();
        }
    }
}