
<form action="pages/TaoTaiKhoan/xlTaoTaiKhoan.php" method="post" onsubmit="return KiemTra()" style="text-align: center;">
<h1 style="color: red;">Tạo tài khoản mới</h1>
	<div>
		<span class="label">Tên đăng nhập:</span>
		<input type="text" id="us" name="us" /> 
		<span class="err" id="eUS"></span>
	</div><br>	
	<div>
		<span class="label">Mật khẩu:</span>
		<input type="password" id="ps" name="ps" /> 
		<span class="err" id="ePS"></span>
	</div><br>	
	<div>
		<span class="label">Nhập lại mật khẩu:</span>
		<input type="password" id="rps" /> 
		<span class="err" id="eRPS"></span>
	</div><br>	
	<div>
		<span class="label">Tên hiển thị:</span>
		<input type="text" id="name" name="name" /> 
		<span class="err" id="eNAME"></span>
	</div><br>	
	<div>
		<span class="label">Địa chỉ:</span>
		<input type="text" id="add" name="add" /> 
		<span class="err" id="eADD"></span>
	</div><br>	
	<div>
		<span class="label">Điện thoại:</span>
		<input type="text" id="tel" name="tel" /> 
		<span class="err" id="eTEL"></span>
	</div><br>
	<div>
		<span class="label">Email:</span>
		<input type="text" id="mail" name="mail" /> 
		<span class="err" id="eMail"></span>
	</div><br>
	<div>
		<span class="label"></span>
		<input style="margin-right: 116px;" class="buttonns" type="submit" value="Đăng ký" />
	</div><br>	
</form>
<script type="text/javascript">
	function KiemTra(){
		var co = true;

		var control = document.getElementById('us');
		var err = document.getElementById('eUS');
		if(control.value == "")
		{
			co = false;
			err.innerHTML = "Tên đăng nhập không được rỗng";
		}
		else
		{
			err.innerHTML = "";
		}

		control = document.getElementById('ps');
		err = document.getElementById('ePS');
		if(control.value == "")
		{
			co = false;
			err.innerHTML = "Mật khẩu không được rỗng";
		}
		else
		{
			err.innerHTML = "";
		}

		control1 = document.getElementById('rps');
		err = document.getElementById('eRPS');
		if(control.value != control1.value)
		{
			co = false;
			err.innerHTML = "Nhập lại mật khẩu không trùng";
		} 
		else
		{
			err.innerHTML = "";
		}

		control = document.getElementById('name');
		err = document.getElementById('eNAME');
		if(control.value == "")
		{
			co = false;
			err.innerHTML = "Tên hiển thị không được rỗng";
		}
		else
		{
			err.innerHTML = "";
		}

		control = document.getElementById('add');
		err = document.getElementById('eADD');
		if(control.value == "")
		{
			co = false;
			err.innerHTML = "Địa chỉ không được rỗng";
		}
		else
		{
			err.innerHTML = "";
		}

		control = document.getElementById('tel');
		err = document.getElementById('eTEL');
		if(control.value == "")
		{
			co = false;
			err.innerHTML = "Số điện thoại không được rỗng";
		}
		else
		{
			err.innerHTML = "";
		}

		control = document.getElementById('mail');
		err = document.getElementById('eMail');
		if(control.value == "")
		{
			co = false;
			err.innerHTML = "Email không được rỗng";
		}
		else
		{
			err.innerHTML = "";
		}

		return co;
	}
</script>
<?php
	if(isset($_GET["err"]))
	{
		?>
			<div>
				<span class="err">Tên đăng nhập đã tồn tại</span>
			</div>
		<?php
	}
?>