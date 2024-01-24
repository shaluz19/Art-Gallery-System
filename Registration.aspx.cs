using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Artgallery"].ConnectionString))
            {
                con.Open();
            SqlCommand cmd = new SqlCommand("Insert into User_detail Values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','"+DropDownList1.Text+"','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "')", con);
            //SqlCommand cmd = new SqlCommand("INSERT INTO USER (Id) Values('2')", con);
            //string insertQuery = "INSERT INTO User_detail Values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','1')";

           
           
            cmd.ExecuteNonQuery();
             
               
                Response.Write("<script> alert('Registration Successfully done');  </script>");
                Response.Write("<script> alert('Registration Success');  </script>");
                con.Close();
               

            }
         
        }
       

    }
