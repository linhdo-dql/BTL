using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL
{
    public class Cart
    {   
        public string img { get; set; }
        public string name { get; set; }
        public string number { get; set; }
        public string price { get; set; }
        public Cart()
        {
        }

        public Cart(string img, string name, string number, string price)
        {
            this.img = img;
            this.name = name;
            this.number = number;
            this.price = price;
            
        }
    }
}