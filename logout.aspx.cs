using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["New"] != null)
        {
            Session["New"] = null;
            Response.Cookies["userid"].Expires = DateTime.Now.AddDays(-1);
            Response.Redirect("home.aspx");
        }

        if (Request.Cookies["userid"] != null)
        {
            Session["New"] = null;
            Response.Cookies["userid"].Expires = DateTime.Now.AddDays(-1);
            Response.Redirect("home.aspx");
        }
    }
}