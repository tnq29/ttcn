<?php

	$link = new mysqli('localhost','root','','final');

	if(!$link){
		die('Connection failed: '.$link -> error());
	}

	$link -> set_charset('utf8');

	$sql = "SELECT * FROM web WHERE ten LIKE '%a%'";

	$result = $link -> query($sql);

	echo '<table width="100%" height="100%" border=1 align="center">';
	echo '<tr><th>Hình ảnh</th><th>Tên món ăn</th><th>Mô tả</th><th>Địa chỉ</th><th>Chi tiết</th></tr>';
	while($row = $result -> fetch_assoc()){
		echo '<tr><td>'.'<img src="'.$row['anh'].'"/>'.'</td><td>'.$row['ten'].'</td><td align="left">'.$row['mota'].'</td><td>'.$row['diachi'].'</td><td>'.'<a href="'.$row['link'].'">Link</a>'.'</td></tr>';
	}
	echo '</table>';

	$result -> close();
	$link 	-> close();

?>