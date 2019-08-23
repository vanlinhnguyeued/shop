	<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
  	<script>tinymce.init({ selector:'textarea' });</script>
<form action="pages/qlSanPham/xlThemMoi.php" method="post" onsubmit="return KiemTra();" enctype="multipart/form-data">
	<fieldset class="themSanPham">
		<legend>Thêm sản phẩm mới</legend>
		<div>
			<span>Tên sản phẩm (Nhập 2 dòng,mỗi dòng tối đa 15 ký tự)</span>
			<!-- <input type="text" name="txtTen" id="txtTen" maxlength="20" style="width: 200px;"/> -->
			<textarea id="txtTen" name="txtTen" style="width: 700px"></textarea>
			<i id="errTen"></i>
		</div><br>
		<div>
			<span>Hãng sản xuất</span>
			<select name="cmbHang" style="width: 200px;">
				<?php
					$sql = "SELECT * FROM HangSanXuat WHERE BiXoa = 0";
					$result = DataProvider::ExecuteQuery($sql);
					while($row = mysqli_fetch_array($result)){
						?>
							<option value="<?php echo $row["MaHangSanXuat"]; ?>"><?php echo $row["TenHangSanXuat"]; ?></option>
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
					while($row = mysqli_fetch_array($result)){
						?>
							<option value="<?php echo $row["MaLoaiSanPham"]; ?>"><?php echo $row["TenLoaiSanPham"]; ?></option>
						<?php
					}
				?>
			</select>
		</div><br>
		<div>
			<span>Hình</span>
			<input type="file" name="fHinh" />
		</div><br>
		<div>
			<span>Giá</span>
			<input type="text" name="txtGia" id="txtGia" style="width: 200px;"/>
			<i id="errGia"></i>
		</div><br>
		<div>
			<span>Số lượng tồn</span>
			<input type="text" name="txtTon" id="txtTon" style="width: 200px;" />
			<i id="errTon"></i>
		</div><br>
		<div>
			<span>Mô tả</span>
			<textarea name="txtMoTa" style="width: 700px"></textarea>
		</div><br>
		<div style="text-align: center;">
			<input type="submit" value="Thêm mới" />
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