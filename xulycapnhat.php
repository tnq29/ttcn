
<?php
     session_start();
        $link = new mysqli ( 'localhost', 'root', '', 'final' );
            if (!$link) {
            die ( 'Connection failed: ' . $link->error () );
        }   
        
        $ID=$_REQUEST['id'];
        echo $ID;
        $link -> set_charset('utf8');
                
        $sql = "SELECT * FROM web WHERE maso = '$ID'";
                
        $result = $link -> query ($sql);

        $row = $result -> fetch_assoc();

        $_SESSION['maso'] = $row['maso'];
        $_SESSION['ten'] = $row['ten'];
        $_SESSION['diachi'] = $row['diachi'];
        $_SESSION['mota'] = $row['mota'];
        $_SESSION['theloai'] = $row['theloai'];
        $_SESSION['link'] = $row['link'];
        $_SESSION['anh'] = $row['anh'];
        $_SESSION['khuvuc'] = $row['khuvuc'];

        header("location:formcapnhat.php");

        $result->close ();
        $link->close ();

?>

