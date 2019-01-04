
<?php
	 session_start();
		$link = new mysqli ( 'localhost', 'root', '', 'final' );
			if (!$link) {
		 	die ( 'Connection failed: ' . $link->error () );
		}	
		$ID=$_REQUEST['id'];
		echo $ID;
		$link -> set_charset('utf8');

		$sql = "DELETE FROM web WHERE maso = '$ID' ";
		
		$result = $link->query ( $sql );

		header("location:xoa.php");

		$result->close ();
		$link->close ();

?>

