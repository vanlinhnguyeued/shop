<h2 style="color: red;text-align: center;">Sản phẩm bán chạy nhất</h2>
<?php
	$sql = "SELECT * FROM SanPham WHERE BiXoa = 0 ORDER BY SoLuongBan DESC LIMIT 0, 6";
	$result = DataProvider::ExecuteQuery($sql);
	while($row = mysqli_fetch_array($result))
	{
		?>
			<div class="box">
				<a href="index.php?a=4&id=<?php echo $row["MaSanPham"]; ?>">
				<img src="images/<?php echo $row["HinhURL"]; ?>" />
				</a>
				<div class="pname"><?php echo $row["TenSanPham"]; ?></div>
				<div class="pprice">Giá: <?php echo number_format($row["GiaSanPham"]); ?>đ</div>
				<div class="action">
				    <a href="index.php?a=4&id=<?php echo $row["MaSanPham"]; ?>">Chi tiết</a>
				</div>            
			</div>
		<?php		
	}
?>