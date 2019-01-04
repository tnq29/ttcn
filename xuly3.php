<?php
	$id = $_POST['t1'];
	$name = $_POST['t2'];
	$describe = $_POST['t3'];
	$address = $_POST['t4'];
	$linkdetail = $_POST['t5'];
	$kind = $_POST['t6'];
	$area = $_POST['t7'];
	$image = $_POST['t8'];
	$t = './src/';

	$link = new mysqli('localhost','root','','final');

	if(!$link){
		die('Connection failed: '.$link -> error());
	}

	$link -> set_charset('utf8');

	$sql = "INSERT INTO web (maso,ten,diachi,mota,theloai,link,anh,khuvuc) VALUES('".$id."','".$name."','".$address."','".$describe."','".$kind."','".$linkdetail."','".$t.$image."','".$area."')";

	$result = $link -> query($sql);

	echo '<table id ="table" width="100%" height="100%" border = "1"  align = "center">';
	echo '<tr height=10%><th width=15% ><h3>Hình ảnh</h3></th><th width=17.5%><h3>Tên món ăn</h3></th><th width=35%><h3>Mô tả</h3></th><th><h3 width=2%>Địa chỉ</h3></th><th width=10%><h3>Chi tiết<h3></th></tr>';

	while ( $row = $result->fetch_assoc () ){
	 	echo '<tr><td>'.'<img src="'.$row['anh'].'"/>'.'</td><td>'.$row['ten'].'</td><td align="left">'.$row['mota'].'</td><td>'.$row['diachi'].'</td><td>'.'<a href="'.$row['link'].'"><h1>Link</h1></a>'.'</td></tr>';
	}
	echo '</table>';
	mysqli_close($link);
	

?>