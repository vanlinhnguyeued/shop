<?php
	session_start();
	include "lib/DataProvider.php";

	//Lưu lại đường dẫn hiện tại
	$_SESSION["path"] = $_SERVER["REQUEST_URI"];
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>N&L Shop</title>
<!--<script type="text/javascript" src="css/js.js"></script> -->
<link rel="stylesheet" type="text/css" href="css/style.css" />


<!-- 555555555555555555555555555555555 -->
<script src="taogiaodien/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="taogiaodien/css/style.css" rel="stylesheet" type="text/css" media="all" />  
<!--//theme-style-->

        <script src="taogiaodien/js/responsiveslides.min.js"></script>
            <script>
                $(function () {
                  $("#slider1").responsiveSlides({
                    auto: true,
                    speed: 500,
                    namespace: "callbacks",
                    pager: true,
                  });
                });
            </script>

<!-- 666666666666666666666666666666666 -->


</head>
<body>
	<div id="wrapper">
		<?php 
			include "modules/mHeader.php"; 
			include "modules/mSidebar.php";
		?>
		
		<div id="content">
			<?php
				$a = 1;
				if(isset($_GET["a"]) == true)
					$a = $_GET["a"];

				switch ($a) {
					case 1:
						include "pages/pIndex.php";
						break;
					case 2:
						include "pages/pSanPhamTheoHang.php";
						break;
					case 3:
						include "pages/pSanPhamTheoLoai.php";
						break;
					case 4: 
						include "pages/pChiTiet.php";
						break;
					case 5:
						include "pages/GioHang/pIndex.php";
						break;
					case 6:
						include "pages/TaoTaiKhoan/pIndex.php";
						break;
					default:
						include "pages/pError.php";
						break;
				}
			?>
		</div>
		<?php include "modules/mFooter.php"; ?>
	</div>	
</body>
</html>



