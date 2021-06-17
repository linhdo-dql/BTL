using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Products> s = (List<Products>)Application["products"];
            List<Products> hotp = new List<Products>();
            foreach (Products x in s)
            {
                int tmp = int.Parse(x.id);
                if(tmp<50)
                {  
                    if(tmp%3==0)
                    hotp.Add(x);
                }    
            }
           
            foreach (Products z in hotp)
            {
                
                product1.InnerHtml += "<div class='product-container1-list-items'><img id ='product-items-img' class='product-items-img' src='"+z.img+"'/><p id = 'product-items-name' > "+z.name+"</p><p id = ''product-items-price' > "+z.price+" </ p ></div>"; 
            }
            GridView1.DataSource = hotp;
            GridView1.DataBind();
        }
       
    }
}