using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class Cart1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Cart> c = (List<Cart>)Application["cart"];
            gv1.DataSource = c;
            gv1.DataBind();
        }
    }
}