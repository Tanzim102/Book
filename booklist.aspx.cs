using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class booklist : System.Web.UI.Page
{
    string title;
    string description;
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int i = 101; i <= 103; i++)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();

                string matchQuery = "select title,description,url from Book where id=" + i.ToString() + ";";
                SqlCommand com = new SqlCommand(matchQuery, conn);
                SqlDataReader sdr = com.ExecuteReader();
                if (sdr.Read())
                {
                    title = sdr[0].ToString();
                    description = sdr[1].ToString();
                    string temp1 = "title" + i.ToString();
                    if (i == 101)
                    {
                        title1.InnerHtml = title;
                        author1.InnerHtml = description;
                    }
                    if (i == 102)
                    {
                        title2.InnerHtml = title;
                        author2.InnerHtml = description;
                    }
                    if (i == 103)
                    {
                        title3.InnerHtml = title;
                        author3.InnerHtml = description;
                    }
                  

                }
                else
                {
                    title1.InnerHtml = "";
                    author1.InnerHtml = "";
                }

                conn.Close();
            }

            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Button lnk = sender as Button;
        String Value1 = lnk.Attributes["CustomParameter"].ToString();
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();

            string matchQuery = "select url from Book where id=" + Value1 + ";";
            SqlCommand com = new SqlCommand(matchQuery, conn);
            SqlDataReader sdr = com.ExecuteReader();
            if (sdr.Read())
            {
                string url = sdr[0].ToString();
                Response.Redirect(url);
            }
            else
            {
                
            }

            conn.Close();
        }

        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
}