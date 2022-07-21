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
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Session["buyitems"]==null)
                {
                    Button1.Enabled = false;
                }
                else
                {
                    Button1.Enabled = true;
                }
                Session["addproduct"] = "false";
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("SNo");
                dt.Columns.Add("PId");
                dt.Columns.Add("PImage");
                dt.Columns.Add("PName");
                dt.Columns.Add("PPrice");
                dt.Columns.Add("PQuantity");
                dt.Columns.Add("PTotalPrice");

                if (Request.QueryString["id"]!=null)
                {
                    if (Session["buyitems"]==null)
                    {
                        dr=dt.NewRow();
                        SqlConnection con = new SqlConnection(@"Data Source = localhost\sqlexpress; Initial Catalog = mobarak2113; Integrated Security = True ");
                        con.Open();
                        SqlDataAdapter da = new SqlDataAdapter("select *from Product where Product_id=" + Request.QueryString["id"], con);
                        DataSet ds = new DataSet(); 
                        da.Fill(ds);

                        dr["SNo"] = 1;
                        dr["PId"] = ds.Tables[0].Rows[0]["Product_id"].ToString();
                        dr["PImage"] = ds.Tables[0].Rows[0]["Pimage"].ToString();
                        dr["PName"] = ds.Tables[0].Rows[0]["Pname"].ToString();
                        dr["PPrice"] = ds.Tables[0].Rows[0]["Pprice"].ToString();
                        dr["PQuantity"] = Request.QueryString["quantity"];

                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["Pprice"].ToString());
                        int quantity =Convert.ToUInt16(Request.QueryString["quantity"].ToString());
                        int TotalPrice = price * quantity;
                        dr["PTotalPrice"] = TotalPrice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Button1.Enabled = true;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("Cart.aspx");
                        con.Close(); 
                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr=dt.Rows.Count;

                        dr=dt.NewRow();
                        SqlConnection con = new SqlConnection(@"Data Source = localhost\sqlexpress; Initial Catalog = mobarak2113; Integrated Security = True ");
                        con.Open();
                        SqlDataAdapter da = new SqlDataAdapter("select *from Product where Product_id=" + Request.QueryString["id"], con);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["SNo"] = sr + 1; ;
                        dr["PId"] = ds.Tables[0].Rows[0]["Product_id"].ToString();
                        dr["PImage"] = ds.Tables[0].Rows[0]["Pimage"].ToString();
                        dr["PName"] = ds.Tables[0].Rows[0]["Pname"].ToString();
                        dr["PPrice"] = ds.Tables[0].Rows[0]["Pprice"].ToString();
                        dr["PQuantity"] = Request.QueryString["quantity"];

                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["Pprice"].ToString());
                        int quantity = Convert.ToUInt16(Request.QueryString["quantity"].ToString());
                        int TotalPrice = price * quantity;
                        dr["PTotalPrice"] = TotalPrice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Button1.Enabled = true;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("Cart.aspx");
                        con.Close();
                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if(GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    }
               }
            }
            string OrderDate = DateTime.Now.ToShortDateString();
            Session["Orderdate"]=OrderDate;
           

            
        }

        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int totalprice = 0;
            while (i < nrow)
            {
                totalprice = totalprice + Convert.ToInt32(dt.Rows[i]["PPrice"].ToString());
                i++;

            }
            return totalprice;
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt=new DataTable();
            dt = (DataTable)Session["buyitems"];

            for(int i=0;i<=dt.Rows.Count-1;i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["SNo"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);
                if(sr==sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    break;
                }
            }
            for(int i=1;i<=dt.Rows.Count;i++)
            {
                dt.Rows[i - 1]["SNo"] = i;
                dt.AcceptChanges();
            }
            Session["buyitems"] = dt;
            Response.Redirect("Cart.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["buyitems"];
            for(int i=0;i<=dt.Rows.Count-1;i++)
            {
                SqlConnection scon = new SqlConnection(@"Data Source = localhost\sqlexpress; Initial Catalog = mobarak2113; Integrated Security = True ");
                scon.Open();
                SqlCommand cmd = new SqlCommand("insert into OrderDetails (sno,productid,productname,price,quantity,orderdate)values("+ dt.Rows[i]["SNo"]+ "," + dt.Rows[i]["PId"] + ",'"
                    + dt.Rows[i]["PName"]+"',"+ dt.Rows[i]["PPrice"]+ "," + dt.Rows[i]["PQuantity"] + ",'"+Session["Orderdate"]+"')",scon);
                cmd.ExecuteNonQuery();
                scon.Close();
            }

            if (Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if(GridView1.Rows.Count.ToString()=="0")
                {
                    Response.Write("<script>alert('Your Cart is Empty');</script>");

                }
                else
                {
                    Response.Write("<script>alert('Thank You');</script>");
                    //Response.Redirect("PlaceOrder.aspx");
                }
            }    
        }
    }
}