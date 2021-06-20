using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Unipluss.Sign.Common.Validation;

namespace BTL
{
    public partial class Home : System.Web.UI.Page
    {   

        protected void Page_Load(object sender, EventArgs e)
        {
            List<Products> s = (List<Products>)Application["products"];
            
            List<Products> np = new List<Products>();
            List<Products> hsp = new List<Products>();
            List<Products> hbp1 = new List<Products>();
            List<Products> hbp2 = new List<Products>();
            List<Products> hbp3 = new List<Products>();
            hsp.Clear();
            product1.InnerHtml = "";
            foreach (Products x in s)
            {
                int tmp = int.Parse(x.id);
                if (tmp < 45)
                {
                    if (tmp % 3 == 0)
                    { hsp.Add(x); }
                }
                if (tmp < 44)
                {
                    if (tmp % 2 == 0 && tmp % 3 != 0)
                    { np.Add(x); }
                }
                string tmp2 = x.type;
                if(tmp2.Equals("nu"))
                {
                    if (tmp % 4 == 0)
                    {
                        hbp1.Add(x);
                    }    
                }
                if (tmp2.Equals("nam"))
                {
                    if (tmp % 3 == 0)
                    {
                        hbp2.Add(x);
                    }
                }
                if (tmp2.Equals("phukien"))
                {
                    if (tmp % 4 == 0)
                    {
                        hbp3.Add(x);
                    }
                }
            }

            foreach (Products z in hsp)
            {
                product1.InnerHtml += "<div class='product-container1-list-items' id=" + z.id + ">" +
                   "<a href='Detail.aspx?id=" + z.id + "'><img class='product-items-img' src='" + z.img + "'/></a>" +
                   "<a id = 'product-items-name' href='Detail.aspx?id=" + z.id + "'>" + z.name + " </a>" +
                   "<div id='container-price'>" +
                   "<span id = 'product-items-oldprice' ><strike>" + z.oldprice + "</strike></span>" +
                   "<span id = 'product-items-price'> " + z.price + " </span>" +
                   "</div>" +
                   "<div class='container-button-items'>" +
                   "<button class='btnAddToCart' id='btnAddToCartx" + z.id + " runat='server' onclick='SizeColor()'>Thêm vào giỏ</button>" +
                   "<button class = 'btnAddToWhis' id = 'btnAddToWhis" + z.id + "' onclick='return ht(this)' ><i class='far fa-heart' aria-hidden='true'></i></button>" +
                   "</div>" +
                   "</div>";
            }
            foreach (Products y in np)
            {
                product2.InnerHtml += "<div class='product-container1-list-items' id=" + y.id + ">" +
                    "<a href='Detail.aspx?id=" + y.id + "'><img class='product-items-img' src='" + y.img + "'/></a>" +
                    "<a id = 'product-items-name2' href='Detail.aspx?id=" + y.id + "'> " + y.name + " </a>" +
                    "<div id='container-price'>" +
                    "<span id = 'product-items-price2'> " + y.price + " </span>" +
                    "</div>" +
                    "<div class='container-button-items'>" +
                    "<a href='Home.aspx?id=" + y.id + "'><button class='btnAddToCart' id='btnAddToCart" + y.id + "' onclick='addClick()'>Thêm vào giỏ</button></a>" +
                    "<button class= 'btnAddToWhis2' id = 'btnAddToWhis" + y.id + "' ><i class='far fa-heart' aria-hidden='true'></i></button>" +
                    "</div>" +
                    "</div>";
            }
             foreach (Products x1 in hbp1)
            {
                listtopwm.InnerHtml+= "<div class='listtop-items'>"+
                                      "<a href ='Detail.aspx?id=1'><img src='" +x1.img+"'/></a>"+
                                      "<div class='listtop-content'>"+
                                      "<p class='listop-name'>"+x1.name+"</p>"+
                                      "<p class='listop-detail'>"+x1.detail+"</p>"+
                                      "<p class='listop-price'>"+x1.price+"</p>" +
                                      "</div>"+
                                      "</div>";
            }
            foreach (Products x2 in hbp2)
            {
                listtopm.InnerHtml += "<div class='listtop-items'>" +
                                      "<a href ='Detail.aspx?id=1'><img src='" + x2.img + "'/></a>" +
                                      "<div class='listtop-content'>" +
                                      "<p class='listop-name'>" + x2.name + "</p>" +
                                      "<p class='listop-detail'>" + x2.detail + "</p>" +
                                      "<p class='listop-price'>" + x2.price + "</p>" +
                                      "</div>" +
                                      "</div>";
            }
            foreach (Products x3 in hbp3)
            {
                listtops.InnerHtml += "<div class='listtop-items'>" +
                                      "<a href ='Detail.aspx?id=1'><img src='" + x3.img + "'/></a>" +
                                      "<div class='listtop-content'>" +
                                      "<p class='listop-name'>" + x3.name + "</p>" +
                                      "<p class='listop-detail'>" + x3.detail + "</p>" +
                                      "<p class='listop-price'>" + x3.price + "</p>" +
                                      "</div>" +
                                      "</div>";
            }

            List<Cart> c = AddCartItem(s);
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
        public List<Cart> AddCartItem(List<Products> s)
        {   
            string a = Request.QueryString["id"];
            List<Cart> c = (List<Cart>)Application["cart"];
            if (a != null)
            {
                foreach (Products x in s)
                {
                    if (int.Parse(x.id) == int.Parse(a))
                    {
                       // c.Add(new Cart(x.img, x.name, "1", x.price));
                    }
                }
                Response.Redirect("Home.aspx#" + a);
            }
            return c;
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
            foreach(Cart x in c)
            {
                string k = x.price.Replace(".", string.Empty);
                s += int.Parse(k) * int.Parse(x.number);
            }
            return s.ToString();
        }

        
    }
    
}