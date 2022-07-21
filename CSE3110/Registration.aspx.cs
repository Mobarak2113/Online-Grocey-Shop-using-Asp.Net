using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CSE3110
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void Register_Click1(object sender, EventArgs e)
        {
            
            try
            {
                bool exist = false;
                SqlConnection con = new SqlConnection(@"Data Source = localhost\sqlexpress; Initial Catalog = mobarak2113; Integrated Security = True ");

                con.Open();
                string qry = "select Email from Reg";
                SqlCommand cm = new SqlCommand(qry, con);
                SqlDataReader sdr = cm.ExecuteReader();
                while (sdr.Read())
                {
                    if (sdr["Email"].ToString().ToUpper() == txtEmail.Text.ToUpper())
                    {
                        exist = true;
                    }
                }

                if (exist)
                {
                    Label1.Text = "Email Already Exist";
                    sdr.Close();
                    con.Close();
                    cm.Dispose();
                }
                else
                {
                        sdr.Close();
                        cm.Dispose();
                   
                        SqlCommand cmd = new SqlCommand("insert into Reg" + "(Name,Email,Password,Phone,Gender,Address) values(@Name, @Email, @Password, @Phone,@Gender,@Address)", con);
                        cmd.Parameters.AddWithValue("@Name", txtName.Text);
                        cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                        cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                        cmd.Parameters.AddWithValue("@Phone", txtPhone.Text);
                        cmd.Parameters.AddWithValue("@Gender", dropListGender.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("Data Inserted Successfully");
                        Label1.Text = "Registered Successfully";

                        HttpCookie cookie = new HttpCookie("MyCookie");
                        cookie.Value = txtEmail.Text;
                        cookie.Expires=DateTime.Now.AddSeconds(30);
                        Response.Cookies.Add(cookie);

                        //Response.Write("<script> alert('Welcome" + "txtName.Text') </script> ");
                        Response.Redirect("~/Home.aspx");
                        cmd.Dispose(); 

                }
            }

            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }

             


        }

        protected void Sign_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }

        
    }
}