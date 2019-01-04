<?php
	$id = $_POST['t0'];
	$ten =$_POST['t1'];
	$diachi =$_POST['t2'];
	$mota =$_POST['t3'];
	$theloai =$_POST['t4'];
	$linkweb =$_POST['t5'];
	$anh =$_POST['t6'];
	$khuvuc =$_POST['t7'];

	$s = './src/';

	$link = new mysqli ( 'localhost', 'root', '', 'final' );
			if (!$link) {
		 		die ( 'Connection failed: ' . $link->error () );
			}				
	$link -> set_charset('utf8');

	$sql = "INSERT INTO web (maso,ten,diachi,mota,theloai,link,anh,khuvuc)
			VALUES('".$id."','".$ten."','".$diachi."','".$mota."','".$theloai."','".$linkweb."','".$s.$anh."','".$khuvuc."')";

	$result = $link -> query($sql);	
			
	mysqli_close($link);
	header("location:testdb.php");	
?>