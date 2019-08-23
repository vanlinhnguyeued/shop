<div id="quanlygiohang">
	<h1>Quản lý giỏ hàng</h1>
    <table>
    	<tr>
        	<th width="20">STT</th>
            <th>Tên sản phẩm</th>
            <th width="60">Hình</th>
            <th width="50">Giá</th>
            <th width="10">Số lượng</th>
            <th width="50">Thao tác</th>
        </tr>
        <?php
            $tongGia = 0;
            if(isset($_SESSION["GioHang"]))
            {
            	
                $soSanPham = count($gioHang->listProduct);
            	$k = 1;
                for($i = 0; $i < $soSanPham; $i++){
                    $id = $gioHang->listProduct[$i]->id;
            		$sql = "SELECT * FROM SanPham WHERE MaSanPham = $id";
            		
                    $result = DataProvider::ExecuteQuery($sql);
            		$row = mysqli_fetch_array($result);
                    
            		?>
            			<form name="frmGioHang" action="pages/GioHang/xlCapNhatGioHang.php" method="post">
    			        	<tr>
    			                <td><?php echo $k++; ?></td>
    			                <td>
    			                	<?php echo $row["TenSanPham"]; ?>
    			                </td>
    			                <td align="center">
    			                    <img src="images/<?php echo $row["HinhURL"]; ?>" width="150">
    			                </td>
    			                <td>
    			                <?php echo number_format($row["GiaSanPham"]); ?>
    			                </td>
    			                <td>
    			                    <input type="number" min='0' max='99' step='1' name="txtSL" value="<?php echo $gioHang->listProduct[$i]->num; ?>" width="45" size="5" />
    			                    <input type="hidden" name="hdID" value="<?php echo $gioHang->listProduct[$i]->id; ?>" />
    			                </td>
    			                <td>
    			                	<input class="buttonnscapnhat" type="submit" value="Cập nhật" />
    			                </td>
    			            </tr>
    			        </form>
            		<?php
                    $tongGia += $row["GiaSanPham"] * $gioHang->listProduct[$i]->num;
            	}
            }
            $_SESSION["TongGia"] = $tongGia;
        ?>       
    </table><br>
    <div class="pprice">
    	Tổng thành tiền: <?php echo number_format($tongGia); ?> đ
    </div><br>
    <a href="pages/GioHang/xlDatHang.php">
    	<img src="img/dathang.png" width="100">
    </a><br>
</div>