using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class historial_fic : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        SqlDataAdapter sda = new SqlDataAdapter("Select * from Book where catagory='historical_fiction'", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        ListView1.DataSource = dt;
        ListView1.DataBind();
    }
}