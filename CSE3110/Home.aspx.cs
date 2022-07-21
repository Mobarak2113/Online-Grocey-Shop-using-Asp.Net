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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Username"] != null)
            {
                Label4.Text = Session["Username"].ToString();
                HyperLink1.Visible = false;
                Button2.Visible = true;
            }
            else
            {
                Label4.Text = "Login Here";
                HyperLink1.Visible = true;
                Button2.Visible = false;
            }
            if(!IsPostBack)
            {
                drp_ProductCategory();
            }

            //string str1 = Request.Cookies["MyCookie"].Value;
            //Label5.Text = str1;
        }
        public void drp_ProductCategory()
        {
            SqlConnection con = new SqlConnection(@"Data Source = localhost\sqlexpress; Initial Catalog = mobarak2113; Integrated Security = True ");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select distinct(Category) from Product",con);
            DropDownList2.DataSource = cmd.ExecuteReader();
            DropDownList2.DataTextField = "Category";
            DropDownList2.DataValueField = "Category";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "Product Category");
            con.Close();
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Home.aspx");
            Label4.Text = "Logout Successfully";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source = localhost\sqlexpress; Initial Catalog = mobarak2113; Integrated Security = True ");
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select *from Product where (Pname like '%"+TextBox1.Text+ "%') or(Product_id like '%"+TextBox1.Text+"%')", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DataList1.DataSourceID = null;
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            try
            {
                Session["addproduct"] = "true";
                if (e.CommandName == "AddToCart")
                {
                    DropDownList List = (DropDownList)(e.Item.FindControl("DropDownList1"));
                    Response.Redirect("Cart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + List.SelectedItem.ToString());

                }
            }
            catch (Exception ex)
            { 

            }
            
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            string strQuery = "";
            string selectedProduct = DropDownList2.SelectedItem.Text;
            if( selectedProduct == "Product Category")
            {
                strQuery = "";
                Response.Redirect("Home.aspx");
            }
            else
            {
                strQuery = "where Category = '" + selectedProduct + "'";
                SqlConnection con = new SqlConnection(@"Data Source = localhost\sqlexpress; Initial Catalog = mobarak2113; Integrated Security = True ");
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter("Select *from Product "  + strQuery + " ", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                DataList1.DataSourceID = null;
                DataList1.DataSource = dt;
                DataList1.DataBind();
                con.Close();
            }
        }
    }
}