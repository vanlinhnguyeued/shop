





<div id="header">
    <div class="logo">
    	<a href="index.php">
        	<p class = "logo1">N&L SHOP</p>
        </a>
        <div id="login_nav">
         
        <?php
            if(isset($_SESSION["MaTaiKhoan"]))
            {
                //Đã đăng nhập
                ?>
                <div class="infologin">
                   <span> Xin chào: <a href="#"><?php echo $_SESSION["TenHienThi"]; ?></a> !  </span>
                    <a href="modules/xlDangXuat.php">Đăng xuất</a><br>
                    <a href="index.php?a=5">
                        <img src="img/manage_shopping.png" width="50" />
                    </a>

                    <marquee>Xin chào khách hàng "<?php echo $_SESSION["TenHienThi"]; ?>" đến với N&L SHOP! Chúc bạn mua sắm vui vẻ.</marquee>
                </div>
                <?php
            }
            else
            {
                //Chưa đăng nhập
                ?> <h2 style="text-align: center; margin-left: 216px; color: #af1313;"> </h2>
                    <form name="frmLogin" action="modules/xlDangNhap.php" method="post" onsubmit="return KiemTraDangNhap()">
                        Tài khoản: <input name="txtUS" class="inputtt" type="text" id="txtUS" size="12" maxlength="20" width="15">
                        Mật khẩu: <input name="txtPS" class="inputtt"  type="password" id="txtPS" size="12" maxlength="20" width="15">
                        <input class="buttonns" type="button" value="Đăng ký" onclick="ChuyenTrangDangKy()" />
                        <input class="buttonns" type="submit" value="Đăng nhập">
                        
                    </form>
                    <script type="text/javascript">
                        function ChuyenTrangDangKy () {
                            location = "index.php?a=6";
                        }
                    </script>
                <?php
            }
        ?>        
        </div>
    </div>
    <!-- <img src="img/logo111.jpg" width="1200" height="220px">
    <img src="img/header_2.png" width="1200"> -->
    <div class="banner-mat">
        <div class="container">
            <div class="banner">
    
                <!-- Slideshow 4 -->
               <div class="slider">
                    <ul class="rslides" id="slider1">
                        <li><img src="img/banner-slide-new-542.jpg" alt="">
                        </li>
                        <li><img src="img/slider_3.jpg" alt="">
                        </li>
                        <li><img src="img/slider_2222.jpg" alt="">
                        </li>
                        <li><img src="img/slider-quan-ao-20-10.jpg" alt="">
                        </li>
                        <li><img src="img/slider_2.jpg" alt="">
                        </li>
                    </ul>
                </div>

                <div class="banner-bottom">
                    <!-- <div class="banner-matter">
                        <p>Childish Gambino - Camp Now Available for just $9.99</p> 
                        <a href="single.html" class="hvr-shutter-in-vertical ">Purchase</a>
                    </div>
                    <div class="purchase">
                        <a href="single.html" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2 ">Purchase</a>
                    </div> -->
                    <div class="clearfix"></div>
                </div>
            </div>              
            <!-- //slider-->
        </div>
    </div>
</div>