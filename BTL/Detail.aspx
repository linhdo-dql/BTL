<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="BTL.Detail" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title></title>
    <link href="~/Assets/Css/Detail.css" type="text/css" rel="stylesheet" runat="server"/>
    <link href="~/Assets/Icon/css/all.min.css" type="text/css" rel="stylesheet"/>
    <script language="javascript">
        var bol = true;
        function sizeClick(obj)
        {
            var x = document.getElementById(obj.id);

            if (bol) {
                
                x.style.cssText = "background-color:#000; color:#fff;";
                bol = false;
            }
            else {
                x.style.cssText = "background-color:#fff; color:#000;";
                bol = true;
            }
            
        }
    </script>
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@10.10.1/dist/sweetalert2.min.css'/>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.10.1/dist/sweetalert2.all.min.js"></script>
    
    <script>
        
    </script>
    <style>

    </style>
</head>
<body>
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
   <div class="content-detail-1">
       <div class="tt-detail">
            <div class="tt-detail-l">
                   <h2 id="itemName">Trang chủ / Thời Trang Nam / Áo nam 5</h2>
               </div>
               <div class="tt-detail-r">
                   Phải
               </div>
       </div>
       <div class="container-item-detail">
            <div class="item-detail-l">
                <div class="img-detail">
                        <img class="Img1" src="Assets/Images/nam/nam5.jpg" runat="server"/>
                        <img class="Img1" src="Assets/Images/nam/nam5.jpg" runat="server"/>
                        <img class="Img1" src="Assets/Images/nam/nam5.jpg" runat="server"/>
                        <img class="Img1" src="Assets/Images/nam/nam5.jpg" runat="server"/>
                        <img class="Img1" src="Assets/Images/nam/nam5.jpg" runat="server"/>
                    </div>
                   <img id="itemImgMain" src="Assets/Images/nam/nam5.jpg" runat="server"/>
                    
               </div>
               <div class="item-detail-r">
                     <h1 id="itemNameMain">ÁO nam 5</h1>
                     <p id="itemPriceMain">1.500.000</p>
                     <p id="itemDetailMain">jkfhasjkl,a,fssssssssss,f;âfkaksfjjjjkksssssssssssssssssssssssssssssssdfjhuiashfuihiuhrihfdsinfksnfijhsadfuihiasdfnjkashfidhasidfhjahfduiahuiwhurifashdfuiahurehwjfbweaueuafbjdsabffwuEHFUAHFUAUHEWUSSS</p>
                     <div class="detail-select">
                         <h3>Chọn size</h3>
                         <div class="container-btn-detail">
                             <button class="btn-size" id="sizeS" onclick="sizeClick(this)">S</button>
                             <button class="btn-size" id="sizeM" onclick="sizeClick(this)">M</button>
                             <button class="btn-size" id="sizeX" onclick="sizeClick(this)">X</button>
                             <button class="btn-size" id="sizeL" onclick="sizeClick(this)">L</button>
                             <button class="btn-size" id="sizeXL" onclick="sizeClick(this)">XL</button>
                         </div>
                     </div>
                    <span id="voucher-detail">Mã giảm giá: </span> <input id="txtVoucherD" type="text" />
                   <div class="btn-detail-r">
                       <button class="btnATC">Thêm vào giỏ</button>
                       <br />
                       <button class="btnATW">Thêm vào yêu thích</button>
                   </div>
                    
               </div>

       </div>
    </div>
    <div class="footer2">
            <div class="footer2-about">
                <h2>Giới thiệu</h2>
                <p><b>T-Store</b> tự hào là thương hiệu góp phần thay đổi diện mạo thời trang Việt Nam trên chặng đường hoà mình cùng dòng chảy thời trang thế giới. Những thiết kế từ <b>T-Store</b> luôn đơn giản nhưng tinh tế, kết hợp giữa sự thanh lịch của thời trang Pháp và nét đẹp truyền thống của người Á Đông.
                    Đầu tư công sức cho việc thiết kế sản phẩm, chú trọng tới đường nét cắt may tinh xảo, lựa chọn những chất liệu cao cấp, các nhà thiết kế từ <b>T-Store</b> luôn tin rằng, một bộ trang phục dành cho phụ nữ Việt, không chỉ cần sang trọng, quyến rũ, mà còn phải vừa vặn và phù hợp với vóc dáng cơ thể đặc trưng của phụ nữ Châu Á.
                    <b>T-Store</b> hiện vận chuyển đến hơn 220 quốc gia và khu vực trên toàn thế giới. Các trang web Hoa Kỳ, Tây Ban Nha, Pháp, Nga, Đức, Ý, Úc và Trung Đông, <b>T-Store</b> vận chuyển từ một trong nhiều kho hàng có vị trí toàn cầu. <b>T-Store</b> tiếp tục phát triển mạnh vì có nhân viên sản xuất xuất sắc và cùng giá trị của chúng tôi. <b>T-Store</b> nhằm mục đích cung cấp các sản phẩm hợp thời trang có giá trị cao nhất đồng thời được chất lượng, giá trị và dịch vụ.
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
    <button id="btnHead" onclick="document.location.href='#logo';"><i class="fas fa-chevron-up"></i></button>
</body>
</html>
