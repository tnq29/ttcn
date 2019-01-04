<?php
session_start();
	require "login.php";
	if (isset($_POST["btn1"])) {
		// lấy thông tin người dùng
		$username = $_REQUEST["t1"];
		$password = $_REQUEST["t2"];
		
		if ($username == "" || $password =="") {
			echo "username hoặc password bạn không được để trống!";
		}else{
			
			$link = new mysqli ( 'localhost', 'root', '', 'final' );
			if (!$link) {
		 		die ( 'Connection failed: ' . $link->error () );
			}	
				
			$sql2 = "SELECT * FROM admin WHERE username = '$username' and password = '$password' ";
			$result2 = $link -> query($sql2);
			$num_rows = $result2 -> num_rows;
			if ($num_rows==0) {
				echo "tên đăng nhập hoặc mật khẩu không đúng !";
			}else{
				//tiến hành lưu tên đăng nhập vào session để tiện xử lý sau này
			$_SESSION['username'] = $username;
            header('Location: mainadmin.html');
			}
		}
	}
?>
