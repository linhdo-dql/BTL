using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class Detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Products> s = (List<Products>)Application["products"];
            List<Cart> c = (List<Cart>)Application["cart"];
            if (c.Count != 0)
            {
                numberItems.Attributes["style"] = "display:block";
                numberItems.InnerHtml = c.Count.ToString();
                getCart(c);
                allMoney.InnerText = "Tổng tiền: " + getAllMoney(c);
            }
            else
            {
                cartlistItems.InnerText = "Trống";
                btnPay.Attributes["style"] = "display:none;";
            }
        }
        public void getCart(List<Cart> s)
        {
            foreach (Cart x in s)
            {
                cartlistItems.InnerHtml += "<div class='items-cart-icon'>" +
                        "<img class='items-img-cart' src='" + x.img + "'/>" +
                        "<div class='items-content-cart'>" +
                            "<span class='items-name-cart'>" + x.name + "</span>" +
                            "<br />" +
                             "<p class='items-number-cart'>Số lượng: " + x.number + "</p>" +
                        "</div>" +
                        "<div class='items-price-cart'>" +
                            "<span class='items-price-cart1'>" + x.price + "</span>" +
                        "</div>" +
                    "</div>";
            }
        }
        public string getAllMoney(List<Cart> c)
        {
            int s = 0;
            foreach (Cart x in c)
            {
                string k = x.price.Replace(".", string.Empty);
                s += int.Parse(k) * int.Parse(x.number);
            }
            return s.ToString();
        }
    }
}