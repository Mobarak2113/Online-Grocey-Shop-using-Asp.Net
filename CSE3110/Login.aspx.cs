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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

 

        protected void loginButton_Click(object sender, EventArgs e)
        {
            try
            {
               
                SqlConnection con = new SqlConnection(@"Data Source = localhost\sqlexpress; Initial Catalog = mobarak2113; Integrated Security = True ");
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter("Select *from Reg where Email='" + txtEmail.Text + "'and Password='" + txtPassword.Text + "'", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if(dt.Rows.Count==1)
                {
                    Session["Username"]=txtEmail.Text;
                    Label1.Text = "Login Successfull";
                    Label1.ForeColor=System.Drawing.Color.Green;
                    //Response.Write(" <script> alert('Login Successfull'); </script> ");
                    if(txtEmail.Text=="Admin")
                    {
                        Response.Redirect("~/AdminHome.aspx");
                    }
                    else
                    {
                        Response.Redirect("~/Home.aspx");
                    }
                   
                }
                else
                {
                    Label1.Text = "Login Unsuccessfull. Please Try again.";
                    Label1.ForeColor = System.Drawing.Color.Red;
                }

            }

            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }

        }
    }
}