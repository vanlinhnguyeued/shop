<?php
	if(!isset($_GET["id"]))
		DataProvider::ChangeURL("index.php?c=404");

	$id = $_GET["id"];
	$sql = "SELECT s.MaSanPham, s.TenSanPham, s.HinhURL, s.GiaSanPham, s.NgayNhap, s.SoLuongTon, s.SoLuongBan, s.SoLuocXem, s.MoTa, s.BiXoa, l.TenLoaiSanPham, s.MaHangSanXuat, h.TenHangSanXuat, s.MaLoaiSanPham FROM SanPham s, LoaiSanPham l, HangSanXuat h WHERE s.MaLoaiSanPham = l.MaLoaiSanPham AND s.MaHangSanXuat = h.MaHangSanXuat AND s.MaSanPham = $id";
	$result = DataProvider::ExecuteQuery($sql);
	$row = mysqli_fetch_array($result);
?>
<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
<script>tinymce.init({ selector:'textarea' });</script>
<form action="pages/qlSanPham/xlCapNhat.php" method="post" onsubmit="return KiemTra();" enctype="multipart/form-data">
	<fieldset class="themSanPham">
		<legend>Cập nhật thông tin sản phẩm</legend>
		<div>
			<span>Tên sản phẩm (Nhập 2 dòng,mỗi dòng tối đa 15 ký tự)</span>
			<!-- <input type="text" name="txtTen" id="txtTen" maxlength="20" value="<?php echo $row["TenSanPham"]; ?>" style="width: 200px;"/> -->
			<textarea id="txtTen" name="txtTen" style="width: 700px"><?php echo $row["TenSanPham"]; ?></textarea>
			<i id="errTen"></i>
		</div><br>
		<div>
			<span>Hãng sản xuất</span>
			<select name="cmbHang" style="width: 200px;">
				<?php
					$sql = "SELECT * FROM HangSanXuat WHERE BiXoa = 0";
					$result = DataProvider::ExecuteQuery($sql);
					while($row1 = mysqli_fetch_array($result)){

						?>
							<option value="<?php echo $row1["MaHangSanXuat"]; ?>" <?php if($row["MaHangSanXuat"] == $row1["MaHangSanXuat"]) echo "selected"; ?>><?php echo $row1["TenHangSanXuat"]; ?></option>
						<?php
					}
				?>
			</select>
		</div><br>
		<div>
			<span>Loại sản phẩm</span>
			<select name="cmbLoai" style="width: 200px;">
				<?php
					$sql = "SELECT * FROM LoaiSanPham WHERE BiXoa = 0";
					$result = DataProvider::ExecuteQuery($sql);
					while($row1 = mysqli_fetch_array($result)){
						?>
							<option value="<?php echo $row1["MaLoaiSanPham"]; ?>" <?php if($row["MaLoaiSanPham"] == $row1["MaLoaiSanPham"]) echo "selected"; ?>><?php echo $row1["TenLoaiSanPham"]; ?></option>
						<?php
					}
				?>
			</select>
		</div><br>
		<div>
			<span>Hình</span>
			<input type="file" name="fHinh" />
			<img src="../images/<?php echo $row["HinhURL"]; ?>" width="75" />
		</div><br>
		<div>
			<span>Giá</span>
			<input type="text" name="txtGia" id="txtGia" value="<?php echo $row["GiaSanPham"]; ?>"  style="width: 200px;"/>
			<i id="errGia"></i>
		</div><br>
		<div>
			<span>Số lượng tồn</span>
			<input type="text" name="txtTon" id="txtTon" value="<?php echo $row["SoLuongTon"]; ?>" style="width: 200px;" />
			<i id="errTon"></i>
		</div><br>
		<div>
			<span>Số lượng bán</span>
			<input type="text" name="txtBan" id="txtBan" value="<?php echo $row["SoLuongBan"]; ?>" style="width: 200px;" />
			<i id="errBan"></i>
		</div><br>
		<div>
			<span>Mô tả</span>
			<textarea name="txtMoTa" style="width: 700px"><?php echo $row["MoTa"]; ?></textarea>
		</div><br>
		<div  style="text-align: center;">
			<input type="hidden" name="id" value="<?php echo $row["MaSanPham"]; ?>" />
			<input type="submit" value="Cập nhật" />
		</div>
	</fieldset>
</form>
<script type="text/javascript">
	function KiemTra()
	{
		var ten = document.getElementById("txtTen");
		var err = document.getElementById("errTen");
		if(ten.value == "")
		{
			err.innerHTML = "Tên sản phẩm không được rỗng";
			ten.focus();
			return false;
		}
		else
			err.innerHTML = "";

		var ten = document.getElementById("txtGia");
		var err = document.getElementById("errGia");
		if(ten.value == "")
		{
			err.innerHTML = "Giá sản phẩm không được rỗng";
			ten.focus();
			return false;
		}
		else
			err.innerHTML = "";

		var ten = document.getElementById("txtTon");
		var err = document.getElementById("errTon");
		if(ten.value == "")
		{
			err.innerHTML = "Số lượng tồn không được rỗng";
			ten.focus();
			return false;
		}
		else
			err.innerHTML = "";

		return true;
	}
</script>