using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;
using System.Threading;

public partial class UserHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {
            //btnlogout.Visible = true;
            // btnLogin.Visible = false;
            // lblSuccess.Text = "Login Success, Welcome <b>" + Session["Username"].ToString() + "</b>";
            // Button1.Text = "Welcome: " + Session["Username"].ToString().ToUpper(); 

            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            if (dt != null)
            {
                Label03.Text = dt.Rows.Count.ToString();
            }
            else
            {
                Label03.Text = "0";
            }


        }
        else
        {
            //btnlogout.Visible = false;
         //   btnLogin.Visible = true;
            Response.Redirect("SignIn.aspx");
        }
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



    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
        Response.Redirect("cart.aspx?id=" + e.CommandArgument.ToString() + "&PQuantity=" + dlist.SelectedItem.ToString());

    }
}
    
