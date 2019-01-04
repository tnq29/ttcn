
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
	$link = new mysqli ('localhost','root','','final');
	if(!$link){
		die('Connection failed: '.$link->error());
	}

	$link -> set_charset('utf8');

	$sql = "SELECT * FROM web ORDER BY maso DESC";
	$result = $link -> query($sql);

	echo '<table id ="table" width="100%" height="100%" border = "1"  align = "center">';
		echo '<tr><th width=15% ><h3>Hình ảnh</h3></th><th width=17.5%><h3>Tên món ăn</h3></th><th width=35%><h3>Mô tả</h3></th><th><h3 width=2%>Địa chỉ</h3></th><th width=10%><h3>Chi tiết<h3></th><th><h3>EDIT</h3></th></tr>';
		// echo '<caption><h2>Dữ liệu địa điểm ẩm thực</h2></caption>';
		
		while ( $row = $result->fetch_assoc () ){
		 	echo '<tr><td>'.'<img src="'.$row['anh'].'"/>'.'</td><td>'.$row['ten'].'</td><td align="left">'.$row['mota'].'</td><td>'.$row['diachi'].'</td><td>'.'<a href="'.$row['link'].'"><h1>Link</h1></a>'.'</td><td>'.'<a href=xulycapnhat.php?id='.$row['maso'].'>EDIT</a>'.'</td></tr>';
		}
		echo '</table>';

		$result->close ();
		$link->close ();
?>