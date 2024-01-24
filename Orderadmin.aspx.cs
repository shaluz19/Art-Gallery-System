using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Artgallery"].ConnectionString))

        {
            con.Open();
            SqlDataAdapter sqlda = new SqlDataAdapter("select * from orderdetails", con);
            DataTable dtb1 = new DataTable();
            sqlda.Fill(dtb1);
            GV1.DataSource = dtb1;
            GV1.DataBind();

        }
    }
    protected void b_Click(object sender, EventArgs e)
    {
        String b = ((sender as LinkButton).CommandArgument);
        SqlConnection con3 = new SqlConnection(ConfigurationManager.ConnectionStrings["Artgallery"].ConnectionString);
        con3.Open();
        Response.Write("<script>alert(" + b + ");</script>");
        SqlCommand cmd2 = con3.CreateCommand();
        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = "delete orderdetails WHERE orderid = '" + b + "'; ";
        cmd2.ExecuteNonQuery();
        con3.Close();
    }
}