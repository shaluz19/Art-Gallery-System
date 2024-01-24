using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class PlaceOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
        if (!IsPostBack)
        {
           
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("Id");
            dt.Columns.Add("PName");
            dt.Columns.Add("PQuantity");
            dt.Columns.Add("PPrice");
            dt.Columns.Add("totalprice");
            dt.Columns.Add("PImage");


            if (Request.QueryString["id"] != null)
            {
                if (Session["Buyitems"] == null)
                {

                    dr = dt.NewRow();
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Artgallery"].ConnectionString);
                    con.Open();
                    String myquery = "select * from product where Id=" + Request.QueryString["Id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = con;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = 1;
                    dr["Id"] = ds.Tables[0].Rows[0]["Id"].ToString();
                    dr["PName"] = ds.Tables[0].Rows[0]["PName"].ToString();
                    dr["PImage"] = ds.Tables[0].Rows[0]["PImage"].ToString();
                    dr["Pquantity"] = Request.QueryString["PQuantity"];
                    dr["PPrice"] = ds.Tables[0].Rows[0]["PPrice"].ToString();
                    int price = Convert.ToInt16(ds.Tables[0].Rows[0]["PPrice"].ToString());
                    int PQuantity = Convert.ToInt16(Request.QueryString["PQuantity"].ToString());
                    int totalprice = price * PQuantity;
                    dr["totalprice"] = totalprice;

                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("cart.aspx");

                }
                else
                {

                    dt = (DataTable)Session["buyitems"];
                    int sr;
                    sr = dt.Rows.Count;

                    dr = dt.NewRow();
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Artgallery"].ConnectionString);
                    con.Open();
                    String myquery = "select * from product where Id=" + Request.QueryString["Id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = con;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = sr + 1;
                    dr["Id"] = ds.Tables[0].Rows[0]["Id"].ToString();
                    dr["PName"] = ds.Tables[0].Rows[0]["PName"].ToString();
                    dr["PImage"] = ds.Tables[0].Rows[0]["PImage"].ToString();
                    dr["PQantity"] = Request.QueryString["PQuantity"];
                    dr["PPrice"] = ds.Tables[0].Rows[0]["PPrice"].ToString();
                    int PPrice = Convert.ToInt16(ds.Tables[0].Rows[0]["PPrice"].ToString());
                    int PQuantity = Convert.ToInt16(Request.QueryString["PQuantity"].ToString());
                    int totalprice = PPrice * PQuantity;
                    dr["totalprice"] = totalprice;
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["buyitems"] = dt;
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("cart.aspx");

                }
            }
            else
            {
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (GridView1.Rows.Count > 0)
                {
                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

                }


            }
            // Label2.Text = GridView1.Rows.Count.ToString();

        }
        Label3.Text = DateTime.Now.ToShortDateString();
        findorderid();

    }
    public int grandtotal()
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        int nrow = dt.Rows.Count;
        int i = 0;
        int gtotal = 0;
        while (i < nrow)
        {
            gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

            i = i + 1;
        }
        return gtotal;
    }
    public void findorderid()
    {
        String pass = "abcdefghijklmnopqrstuvwxyz123456789";
        Random r = new Random();
        char[] mypass = new char[5];
        for (int i = 0; i < 5; i++)
        {
            mypass[i] = pass[(int)(35 * r.NextDouble())];

        }
        String orderid;
        orderid = "Order" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(mypass);

        Label2.Text = orderid;


    }

    public void saveaddress()
    {
        String updatepass = "insert into orderaddress(orderid,address,mobilenumber) values('" + Label2.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "')";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Artgallery"].ConnectionString);
        con.Open();

        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = updatepass;
        cmd1.Connection = con;
        cmd1.ExecuteNonQuery();
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt;
        dt = (DataTable)Session["buyitems"];

        string a = Session["Username"] as string;

        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Artgallery"].ConnectionString);
            con.Open();
            
            String updatepass = "insert into orderdetails(orderid,sno,productid,productname,price,quantity,dateoforder,Payment,userid) values('" + Label2.Text + "'," + dt.Rows[i]["sno"] + "," + dt.Rows[i]["Id"] + ",'" + dt.Rows[i]["PName"] + "'," + dt.Rows[i]["PPrice"] + "," + dt.Rows[i]["PQuantity"] + ",'" + Label3.Text + "','PAID','"+a.ToString()+"')";


            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = updatepass;
            cmd1.Connection = con;
            cmd1.ExecuteNonQuery();
            con.Close();

        }
        saveaddress();
        Session["buyitems"] = null;
        Response.Redirect("PlacedSuccessfully.aspx");
    }
    protected void rbl_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (rbl.SelectedItem.Value == "2")
        {

            ShowTextBoxes(true);
        }


        else


        {

            ShowTextBoxes(false);
        }


    }

    private void ShowTextBoxes(bool value)
    {

        Label5.Visible = value;
        Label6.Visible = value;
        Label7.Visible = value;
        tb1.Visible = value;


        tb2.Visible = value;


        tb3.Visible = value;


    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Session["Username"] = null;
        Response.Redirect("~/index.aspx");
    }
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        //Session.Abandon();
        Session["Username"] = null;
        Response.Redirect("~/index.aspx");

    }
}
