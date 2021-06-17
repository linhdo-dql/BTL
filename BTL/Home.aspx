<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BTL.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title></title>
    <link href="~/Assets/Css/Home.css" type="text/css" rel="stylesheet" runat="server"/>
    <link href="~/Assets/Icon/css/all.min.css" type="text/css" rel="stylesheet"/>
    <style>
       
    </style>
</head>
<body runat="server">
    <div class="headerMid">
        <div class="headerMid-logo">
            <img src="Assets/Images/logoweb2.png"/>
        </div>
        <div class="headerMid-menu-left">
            <ul class="headerMid-menu-left_list">
                <li class="headerMid-menu-left_list_items">
                    Trang chủ
                </li>
                <li class="headerMid-menu-left_list_items">
                    Thời trang nam
                </li>
                <li class="headerMid-menu-left_list_items">
                    Thời trang nữ
                </li>
                <li class="headerMid-menu-left_list_items">
                   Phụ kiện
                </li>
                <li class="headerMid-menu-left_list_items">
                    Tin tức
                </li>
                <li class="headerMid-menu-left_list_items">
                    Giới thiệu
                </li>
                
            </ul>
        </div>
        <div class="headerMid-menu-right">
            <div class="search_box">
                <div class="search_form">
                    <input type="text"
                    class="input_search" name="" id=""placeholder="Search..."/>
                  <button class="btn_search" ><i class="fas fa-search"></i></button>
                </div>           
            </div>
            <div class="list-icon">
                <i class="far fa-heart" aria-hidden="true"></i>
                <i class="far fa-user"></i>
                <i class="fas fa-shopping-bag"></i>
            </div>
            
        </div>
      
    </div>
    <div class="content">
            <div class="banner">
                <img class="banner-img1" src="Assets/Images/banner11.png">
                <div class="content-banner">
                    <span id="tt1">Chào hè cùng T-store</span>
                    <br>
                    <br>
                    <br>
                    <span id="tt2">GIẢM GIÁ KỊCH SÀN</span>
                    <br>
                    <span id="tt3">HÀNG NGÀN QUÀ TẶNG</span>
                    <br>
                    <input type="button" value="MUA NGAY!" id="btnShopNow"/>
                </div>
                <img class="banner-img2" src="Assets/Images/banner2.png">       
            </div>
            <div class="service">
               <div class="itemservice">
                   <i class="fas fa-shipping-fast"></i>
                   <div class="itemservice-content">
                       Giao hàng tốc độ
                       <div class="itemservice-content_child">Thời gian giao hàng chỉ trong 1 ngày</div>
                    </div>
               </div>
               <div class="itemservice">
                <i class="fas fa-money-bill-alt    "></i>
                <div class="itemservice-content">
                    Thanh toán an toàn
                    <div class="itemservice-content_child">Hỗ trợ thanh toán trên nhiều nền tảng</div>
                 </div>
               </div>
               <div class="itemservice">
                <i class="fab fa-servicestack"></i>
                <div class="itemservice-content">
                    Dịch vụ chất lượng
                    <div class="itemservice-content_child">Giao dịch dễ dàng với dịch vụ tốt nhất</div>
                 </div>
               </div>
            </div>
            <div class="menu-image">
                <div class="menu-image-left">
                   <p><i>SALE OFF UPTO 50%!</i></p>
                   <input type="button" value="Xem chi tiết!" id="btnWatchNow"/>
                </div>
                <div class="menu-image-right">
                        <div class="menu-image-right-0">
                            THỜI TRANG NỮ
                        </div>
                        <div class="menu-image-right-1">
                            THỜI TRANG NAM
                        </div>
                </div>
            </div>
            <div class="product-container1">
                <h1>Sản phẩm bán chạy</h1>
                <hr>
                <div id="product1" class="product-container1-list" runat="server">
                    
                </div>
            </div>
    </div>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
