using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class search_n : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] == null)
        {
            Response.Write("<tr>");
            Response.Write("<td style=\"width:200px; left:20px; right:20px;\">"); Response.Write("."); Response.Write("</td>");
            Response.Write("<td style=\"width:400px; left:20px; right:20px;\">"); Response.Write("<h3><font color=\"white\">Please login first to buy any book</font></h3>"); Response.Write("</font>"); Response.Write("</td>");
            Response.Write("<td style=\"width:400px; left:20px; right:20px;\">"); Response.Write("<input class=\"btn btn-success\" style=\"padding: 10px\" type=\"button\" onclick=\"location.href = 'login.aspx';\" value=\"Login\" />"); Response.Write("</td>");
            Response.Write("</tr>");
        }
        else
        {
            id = Request.QueryString["nm"].ToString();

            con.Open();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from book where Id="+id.ToString();
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            Response.Write("<table class=\"table\" style=\"width: 800px\">");

            foreach (DataRow dr in dt.Rows)
            {
                Response.Write("<tr>");
                Response.Write("<h2><font color=\"white\">Please conform your order</font></h2>");
                Response.Write("</tr>");
                Response.Write("<tr>");
                Response.Write("<h4><font color=\"white\">You will receieve your product after the confirmation</font></h4>");
                Response.Write("</tr>");
                Response.Write("<tr>");
                Response.Write("<td style=\"width:200px; left:20px; right:20px;\">"); Response.Write("<img style=\"top: 0px; left: 0px; height: 100px; width: 100px\" src=\"" + dr["image"].ToString() + "\" />"); Response.Write("</td>");
                Response.Write("<td style=\"width:400px; left:20px; right:20px;\">"); Response.Write("<font color=\"white\">"); Response.Write(dr["title"].ToString() + "<br>" + dr["description"].ToString()); Response.Write("</font>"); Response.Write("</td>");
                Response.Write("<td style=\"width:400px; left:20px; right:20px;\">"); Response.Write("<input class=\"btn btn-success\" style=\"padding: 10px\" type=\"button\" onclick=\"send('" + dr["Id"].ToString() + "');\" value=\"Confirm Order\" />"); Response.Write("</td>");
                Response.Write("</tr>");
            }
            Response.Write("</table>");
            con.Close();
        }
    }
}