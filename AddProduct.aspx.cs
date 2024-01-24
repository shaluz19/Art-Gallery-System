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

    static string imagelink;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getproductid();
        }

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Artgallery"].ConnectionString))

        {
            con.Open();
            SqlDataAdapter sqlda = new SqlDataAdapter("select * from product", con);
            DataTable dtb1 = new DataTable();
            sqlda.Fill(dtb1);
            GridView1.DataSource = dtb1;
            GridView1.DataBind();
            if (uploadimage() == true)
            {


                SqlCommand cmd = new SqlCommand("Insert into Product(id,Pname,PPrice,PQuantity,PDetail,PImage) Values(" + Label0.Text + ",'" + txtProductName.Text + "','" + txtsellPrice.Text + "','" + txtQuantity.Text + "','" + txtPDetail.Text + "','" + imagelink + "')", con);

                cmd.ExecuteNonQuery();
                Label01.Text = "Product Has Been Successfully Saved";
                getproductid();
                txtProductName.Text = "";
                txtsellPrice.Text = "";
                txtQuantity.Text = "";
                txtPDetail.Text = "";

            }
        }
    }
    private Boolean uploadimage()
    {
        Boolean imagesaved = false;
        if (fuImg01.HasFile == true)
        {

            String contenttype = fuImg01.PostedFile.ContentType;

            if (contenttype == "image/jpeg")
            {

                fuImg01.SaveAs(Server.MapPath("images//") + Label0.Text + ".jpg");
                imagelink = "images/" + Label0.Text + ".jpg";
                imagesaved = true;
            }
            else
            {
                Label01.Text = "Kindly Upload JPEG Format Image Only";
            }

        }

        else
        {
            Label01.Text = "You have not selected any file - Browse and Select File First";
        }

        return imagesaved;

    }
    public void getproductid()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Artgallery"].ConnectionString);
        con.Open();
        String myquery = "select id from Product";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        if (ds.Tables[0].Rows.Count < 1)
        {
            Label0.Text = "1001";

        }
        else
        {

            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["Artgallery"].ConnectionString);
            con1.Open();

            String myquery1 = "select max(id) from product";
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = myquery1;
            cmd1.Connection = con1;
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            Label0.Text = ds1.Tables[0].Rows[0][0].ToString();
            int a;
            a = Convert.ToInt16(Label0.Text);
            a = a + 1;
            Label0.Text = a.ToString();
            con1.Close();
        }

    }


}