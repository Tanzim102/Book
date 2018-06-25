using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class REGISTER_INFO : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();

            string checkuser = "select count(*) from UserData where UserName='" + TextBoxUN.Text + "' ";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Write("User already exists!");
            }

            conn.Close();
        }
    }
        protected void Button1_Click(object sender, EventArgs e)
    {
        

        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();

            string insertQuery = "insert into UserData (UserName,Email,Password,Country) values (@Uname ,@email ,@password ,@country )";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@Uname", TextBoxUN.Text);
            com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
            com.Parameters.AddWithValue("@password", TextBoxPass.Text);
            com.Parameters.AddWithValue("@country", DropDownListCounrty.SelectedItem.ToString());
            com.ExecuteNonQuery();
            Response.Redirect("Manager.aspx");
            Response.Write("Registration Successful!");
            conn.Close();
        }

        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
}