<?php
	session_start();
	include "../../lib/DataProvider.php";
	include "../../lib/ShoppingCart.php";

	if(isset($_POST["txtSL"]))
	{
		$sl = $_POST["txtSL"];
		if(is_nan($sl) == false)
		{
			//Nếu số lượng là Số thì mới xử lý
			$id = $_POST["hdID"];
			$gioHang = unserialize($_SESSION["GioHang"]);
			
			if($sl > 0)
			{
				//Xử lý cập nhật số lượng mới
								
				$gioHang->update($id, $sl);
				$_SESSION["GioHang"] = serialize($gioHang);
			}
			else
			{
				if($sl == 0)
				{
					$gioHang->delete($id);

					$_SESSION["GioHang"] = serialize($gioHang);
				}
			}

			DataProvider::ChangeURL("../../index.php?a=5");
		}
		else
		{
			//Nếu số lượng mới không là số thì không xử lý mặt định đá về trang quản lý giỏ hàng
			DataProvider::ChangeURL("../../index.php?a=5");
		}
	}
	else
	{
		DataProvider::ChangeURL("../../index.php?a=404");
	}
?>