using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class cart : System.Web.UI.Page
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
                if (Session["buyitems"] == null)
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
                    dr["PQuantity"] = Request.QueryString["PQuantity"];

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
                    dr["Id"] = ds.Tables[0].Rows[0]["id"].ToString();
                    dr["PName"] = ds.Tables[0].Rows[0]["PName"].ToString();
                    dr["PImage"] = ds.Tables[0].Rows[0]["PImage"].ToString();
                    dr["PQuantity"] = Request.QueryString["PQuantity"];
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
            Label1.Text = GridView1.Rows.Count.ToString();
        }


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

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            int sr;
            int srl;
            string qdata;
            string dtdata;
            sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
            TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
            qdata = cell.Text;
            dtdata = sr.ToString();
            srl = Convert.ToInt32(qdata);
            if (sr == srl)
            {
                dt.Rows[i].Delete();
                dt.AcceptChanges();
                //Label1.Text="iTem deleted from cart";
                break;

            }
        }
        for (int i = 1; i <= dt.Rows.Count; i++)
        {
            dt.Rows[i - 1]["sno"] = i;
            dt.AcceptChanges();


        }
        Session["buyitems"] = dt;
        Response.Redirect("cart.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("PlaceOrder.aspx");
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Session["Username"] = null;
        Response.Redirect("Homepage.aspx");
    }
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        //Session.Abandon();
        Session["Username"] = null;
        Response.Redirect("~/index.aspx");

    }
}
