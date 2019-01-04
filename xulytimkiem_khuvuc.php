<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body id="tablebody" background="./src/bg4.png">

</body>
</html>

<?php
$ten = $_POST["t7"];

// mở CSDL
$link = mysqli_connect("localhost","root","","final") or die ("Khong the ket noi csdl".mysqli_error());
$link -> set_charset('utf8');
$sql = "SELECT * FROM web WHERE khuvuc like '".$ten."' ";
$result = mysqli_query($link,$sql);

	echo '<table id ="table" width="100%" height="100%" border = "1"  align = "center">';
	echo '<tr height=10%><th width=20% ><h3>Hình ảnh</h3></th><th width=15%><h3>Tên món ăn</h3></th><th width=35%><h3>Mô tả</h3></th><th><h3 width=20%>Địa chỉ</h3></th><th width=10%><h3>Chi tiết<h3></th></tr>';
		
	while ( $row = $result->fetch_assoc () ){
	 	echo '<tr><td>'.'<img src="'.$row['anh'].'"/>'.'</td><td>'.$row['ten'].'</td><td align="left">'.$row['mota'].'</td><td>'.$row['diachi'].'</td><td>'.'<a href="'.$row['link'].'"><h1>Link</h1></a>'.'</td></tr>';
	}
	echo '</table>';

$result->close ();
$link->close ();

?>