using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string Uname = TextBoxUNlogin.Text;
            string Upass = TextBoxPassLogin.Text;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();

            string matchQuery = "select * from UserData where UserName='" + Uname + "' and Password='" + Upass + "'";
            SqlCommand com = new SqlCommand(matchQuery, conn);
            SqlDataReader sdr = com.ExecuteReader();
            if (sdr.Read())
            {
                if (rememberme.Checked == true)
                {
                    Response.Cookies["userid"].Value = TextBoxUNlogin.Text;
                    Response.Cookies["userid"].Expires = DateTime.Now.AddDays(15);
                }
                else
                {
                    Response.Cookies["userid"].Expires = DateTime.Now.AddDays(-1);
                }

                Session["New"] = TextBoxUNlogin.Text;
                Response.Write("login successful!");
                Response.Redirect("Users.aspx");
            }
            else
            {
                Response.Write("wrong username or password!");

            } 
            conn.Close();
        }

        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
}