using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["userid"] != null)
        {
            hello.Text = "|| Hello, " + Request.Cookies["userid"].Value.ToString() + " ||";
        }
        else if(Session["New"] != null)
        {
            hello.Text = "|| Hello, " + Session["New"].ToString() + " ||";
        }
        else
        {
            hello.Text = "";
        }
    }
}
