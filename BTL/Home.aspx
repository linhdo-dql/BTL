<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BTL.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title></title>
    <link href="~/Assets/Css/Home.css" type="text/css" rel="stylesheet" runat="server"/>
    <link href="~/Assets/Icon/css/all.min.css" type="text/css" rel="stylesheet"/>
    <script src="Assets/js/Home.js" type="text/javascript"></script>
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@10.10.1/dist/sweetalert2.min.css'/>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.10.1/dist/sweetalert2.all.min.js"></script>
    
    <script>
        
    </script>
    <style>

    </style>
</head>
<body onload="myFunction()">
    <div class="headerMid">
        <div class="headerMid-logo" id="logo">
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
                <i class="fas fa-shopping-bag" onclick="return cartClick();"></i>
                <p id="numberItems" class="number-items" runat="server"></p>
                <div class="cart" id="cart-home">
                    <h5>Sản phẩm đã chọn</h5>
                    <div id="cartlistItems" runat="server">

                    </div>
                    <div class="cart-container-button" id="cartIconButton" runat="server">
                        <div id="allMoney" runat="server"></div>
                        <button id="btnPay" onclick="document.location.href='Cart.aspx';" runat="server">Thanh Toán</button>
                    </div>
                    
                    </div>
                </div>
            </div>
            
        </div>
        <div class="content">
            <div class="banner">
                <img class="banner-img1" src="Assets/Images/banner11.png"/>
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
                 <h1><i>Siêu giảm giá!</i></h1>
                <hr />
                <div id="product1" class="product-container1-list" runat="server">
                </div>
                <input type="button" value="Xem Thêm" id="btnShowMore1" runat="server"/>
            </div>
            <div class="product-container2">
                 <h1>Hàng mới về</h1>
                <hr />
                <div id="product2" class="product-container1-list" runat="server">
                </div>
                <input type="button" value="Xem Thêm" id="btnShowMore2"/>
            </div>
            <div class="product-container3">
                 <h1>Top bán chạy</h1>
                <hr />
                <div class="product3">
                     <div class="collumn" >
                         <h3><u>Thời trang nữ</u></h3>
                            <div class="listtop" id="listtopwm" runat="server">
                            
                            </div>
                     </div>
                    <div class="collumn" >
                        <h3><u>Thời trang nam</u></h3>
                        <div class="listtop" id="listtopm" runat="server">
                            
                        </div>
                    </div>
                    <div class="collumn ">
                        <h3><u>Phụ Kiện</u></h3>
                            <div class="listtop" id="listtops" runat="server">
                            
                            </div>
                    </div>
                </div>
           </div>
    </div>
    <div class="footer">
        <div class="footer1">
            <div class="footer1-pay">
                Hình thức thanh toán
                <div class="footer1-pay-list">
                   <i class="fab fa-cc-mastercard"></i>
                    <i class="fab fa-cc-visa"></i>
                    <i class="fab fa-cc-paypal"></i>
                    <i class="fab fa-cc-apple-pay"></i>
                </div>
            </div>
            <div class="footer1-support">
                    Loại hình giao hàng
                <div class="footer1-pay-list">
                   <i class="fab fa-cc-amex"></i>
                    <i class="fab fa-fedex"></i>
                </div>
                </div>
        </div>
        <div class="footer2">
            <div class="footer2-about">
                <h2>Giới thiệu</h2>
                <p><b>T-Store</b> tự hào là thương hiệu góp phần thay đổi diện mạo thời trang Việt Nam trên chặng đường hoà mình cùng dòng chảy thời trang thế giới. Những thiết kế từ <b>T-Store</b> luôn đơn giản nhưng tinh tế, kết hợp giữa sự thanh lịch của thời trang Pháp và nét đẹp truyền thống của người Á Đông.
                    Đầu tư công sức cho việc thiết kế sản phẩm, chú trọng tới đường nét cắt may tinh xảo, lựa chọn những chất liệu cao cấp, các nhà thiết kế từ <b>T-Store</b> luôn tin rằng, một bộ trang phục dành cho phụ nữ Việt, không chỉ cần sang trọng, quyến rũ, mà còn phải vừa vặn và phù hợp với vóc dáng cơ thể đặc trưng của phụ nữ Châu Á.
                    S<b>T-Store</b> hiện vận chuyển đến hơn 220 quốc gia và khu vực trên toàn thế giới. Các trang web Hoa Kỳ, Tây Ban Nha, Pháp, Nga, Đức, Ý, Úc và Trung Đông, <b>T-Store</b> vận chuyển từ một trong nhiều kho hàng có vị trí toàn cầu. SHEIN tiếp tục phát triển mạnh vì có nhân viên sản xuất xuất sắc và cùng giá trị của chúng tôi. SHEIN nhằm mục đích cung cấp các sản phẩm hợp thời trang có giá trị cao nhất đồng thời được chất lượng, giá trị và dịch vụ.
                </p>
                <p>Ký tên:</p>
                <p><i>Long-Linh-Thu</i></p>
            </div>
            <div class="footer2-menu">
                <h2>Danh mục</h2>
                <p><u>Trang chủ</u></p>
                <p><u>Thời trang nam</u></p>
                <p><u>Thời trang nữ</u></p>
                <p><u>Phụ kiện</u></p>
                <p><u>Tin tức</u></p>
                <p><u>Giới thiệu</u></p>
            </div>
            <div class="footer2-contact">
                <h2>Liên hệ</h2>
                <p id="p1">Mạng xã hội</p>
                <i class="fab fa-facebook"></i>
                <i class="fab fa-twitter"></i>
                <i class="fab fa-skype"></i>
                <i class="fab fa-instagram"></i>
                <p id="p2">Địa chỉ</p>
                <p>CN1: 90 Định Công, Hoàng Mai, Hà Nội</p>
                <p>CN2: 151 Nguyễn Hiền, Hai Bà Trưng, Hà Nội</p>
                SĐT: 0326838898
                <br />Email: linhlee88999@gmail.com
                 <p id="p3">Đăng kí nhận tin</p>
                <input id="txtEmails" type="text" placeholder="Email của bạn" />
                <button id="btnDks">Đăng kí</button>
            </div>
        </div>
    </div>
    <button id="btnHead" onclick="document.location.href='#logo';"><i class="fas fa-chevron-up"></i></button>
</body>
</html>
