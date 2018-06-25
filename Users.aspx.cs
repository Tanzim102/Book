using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["userid"] != null)
        {
            LabelWelcome.Text += " " + Request.Cookies["userid"].Value.ToString();
        }
        else if (Session["New"] != null)
        {
            LabelWelcome.Text += " " + Session["New"].ToString();
        }

        else
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void ButtonLogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("Logout.aspx");
    }
}