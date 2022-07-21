using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSE3110
{
    public partial class MGS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"]!=null)
            {
                Label1.Text=Session["Username"].ToString();

                
            }
        }
    }
}