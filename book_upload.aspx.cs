using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class book_upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int length = FileUpload1.PostedFile.ContentLength;
        byte[] pic = new byte[length];

        FileUpload1.PostedFile.InputStream.Read(pic, 0, length);

        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();

            string insertQuery = "insert into Book values (@id ,@title ,@description ,@url,'cover.jpg',@catagory,@source)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@id", TextBoxID.Text);
            com.Parameters.AddWithValue("@title", TextBoxTitle.Text);
            com.Parameters.AddWithValue("@description", TextBoxDescription.Text);
            com.Parameters.AddWithValue("@url", TextBoxURL.Text);
            com.Parameters.AddWithValue("@catagory", DropDownListCounrty.SelectedItem.ToString());
            com.Parameters.AddWithValue("@source", pic);
            com.ExecuteNonQuery();
            //Response.Redirect("Manager.aspx");
            Response.Write("Book Uploaded!");
            conn.Close();
        }

        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
}