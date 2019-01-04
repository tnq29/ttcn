<?php
	$id = $_POST['t0'];
	$ten =$_POST['t1'];
	$diachi =$_POST['t2'];
	$mota =$_POST['t3'];
	$theloai =$_POST['t4'];
	$linkweb =$_POST['t5'];
	$anh =$_POST['t6'];
	$khuvuc =$_POST['t7'];

	$link = new mysqli ( 'localhost', 'root', '', 'final' );
			if (!$link) {
		 		die ( 'Connection failed: ' . $link->error () );
			}				
	$link -> set_charset('utf8');

	$sql = "UPDATE web SET maso = '$id',ten = '$ten', diachi = '$diachi', mota = '$mota', theloai = '$theloai', link = '$linkweb', anh = '$anh', khuvuc = '$khuvuc' WHERE maso = '$id'";

	$result = $link -> query($sql);	

	header("location:capnhat.php");
			
	mysqli_close($link);
			
?>