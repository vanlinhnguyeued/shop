<a href="index.php?c=4&a=3" style="margin-left: 50px">
	<img src="images/new.png" />
</a>
<table cellspacing="0" border="1" style="text-align: center;">
	<tr>
		<th width="100">STT</th>
		<th width="300">Tên tên Hãng sản xuất</th>
		<th width="100">Tình trạng</th>
		<th width="200">Thao tác</th>
	</tr>
	<?php
		$sql = "SELECT * FROM HangSanXuat";
		$result = DataProvider::ExecuteQuery($sql);
		$i = 1;
		if(isset($_GET["a"]) && $_GET["a"] == 2)
			$flagEdit = $_GET["id"];
		else
			$flagEdit = 0;

		while ($row = mysqli_fetch_array($result))
		{
			if($flagEdit != 0 && $flagEdit == $row["MaHangSanXuat"])
			{
				?>
					<form action="pages/qlHang/xlCapNhat.php" method="get">
						<tr>
							<td><?php echo $i++; ?></td>
							<td>
								<input type="hidden" name="id" value="<?php echo $row["MaHangSanXuat"]; ?>" />
								<input type="text" name="txtTen" id="txtTen" value="<?php echo $row["TenHangSanXuat"]; ?>" />
							</td>
							<td>
								<?php 
									if($row["BiXoa"] == 1)
										echo "<img src='images/locked.png' />";
									else
									 	echo "<img src='images/active.png' />";
								?>
							</td>
							<td>
								<input type="submit" value="Cập nhật" />
								<a href="index.php?c=4">Hủy cập nhật</a>
							</td>
						</tr>
					</form>
				<?php
			}
			else
			{
				?>	
					<tr>
						<td><?php echo $i++; ?></td>
						<td><?php echo $row["TenHangSanXuat"]; ?></td>
						<td>
							<?php 
								if($row["BiXoa"] == 1)
									echo "<img src='images/locked.png' />";
								else
								 	echo "<img src='images/active.png' />";
							?>
						</td>
						<td>
							<a href="pages/qlHang/xlKhoa.php?id=<?php echo $row["MaHangSanXuat"] ?>">
								<img src="images/lock.png" />
							</a>
							<a href="index.php?c=4&a=2&id=<?php echo $row["MaHangSanXuat"] ?>">
								<img src="images/edit.png" />
							</a>
						</td>
					</tr>
				<?php
			}
		}
	?>
</table>