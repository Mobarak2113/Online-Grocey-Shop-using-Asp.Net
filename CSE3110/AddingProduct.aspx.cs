using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace CSE3110
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddProduct_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source = localhost\sqlexpress; Initial Catalog = mobarak2113; Integrated Security = True ");
        
            if(FileUpload1.HasFile)
            {
                string filename = FileUpload1.PostedFile.FileName;
                string filepath = "Images/" + FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/") + filename);
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into Product values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+ TextBox3.Text+"','"+filepath+"','"+TextBox4.Text+"')",con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Home.aspx");

            }
        }
    }
}