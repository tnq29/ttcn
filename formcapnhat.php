<?php
    session_start();
    $a0 = $_SESSION['maso'];
    $a1 = $_SESSION['ten'];
    $a2 = $_SESSION['diachi'];
    $a3 = $_SESSION['mota'];
    $a4 = $_SESSION['theloai'];
    $a5 = $_SESSION['link'];
    $a6 = $_SESSION['anh'];
    $a7 = $_SESSION['khuvuc'];
?>

<!DOCTYPE html>
<html>
<head>
    <title>Form Cập Nhật</title>
    <link rel="stylesheet" type="text/css" href="styleb.css">
    <meta charset="utf-8">
    <script  language="JavaScript" >
        function test2(){
           id      = document.formSua.t0.value;
           ten     = document.formSua.t1.value;
           diachi  = document.formSua.t2.value;
           mota    = document.formSua.t3.value;
           theloai = document.formSua.t4.value;
           linkweb = document.formSua.t5.value;
           anh     = document.formSua.t6.value;
           khuvuc  = document.formSua.t7.value;

          if(id == "" ||ten == "" || diachi == "" || mota == "" || theloai == "" || link == "" || anh == "" || khuvuc == "")
              alert("Vui lòng nhập đầy đủ thông tin!");
          else  {
            document.formSua.submit(); 
          }
        }
    </script>
</head>
<body background="./src/bg10.jpg">

  <center>
    <form  action = "xulycapnhat2.php" method = "POST" id="IdFormSua" name = "formSua" >     
        <br><h2>SỬA ĐỊA ĐIỂM ĂN UỐNG</h2>
        <table width="750px" height="400px" id="tableadd" border="2">
            <tr>    
                <td>Mã món ăn</td>
                <td><input class="txt" readonly="readonly"  value="<?php echo $a0 ?>" type="text"  id = "id" name = "t0" /></td>
            </tr>
            <tr>    
                <td>Tên món ăn</td>
                <td><input class="txt" type="text" id = "ten" 
                    value="<?php echo $a1 ?>" name = "t1" /></td>
            </tr>
            <tr>
                <td>Địa chỉ</td>
                <td><input class="txt" type="text" id  = "diachi" value="<?php echo($a2); ?>"  name = "t2" /></td>
            </tr>
            <tr>
                <td>Mô tả</td>
                <td>
                    <textarea class="txt4" name="t3" ><?php echo($a3); ?></textarea>
                </td>
            </tr>
            <tr>
                <td>Link Web</td>
                <td><input class="txt" type="text" id= "link" value="<?php echo($a5); ?>"  name="t5"></td>
            </tr>
            <tr>
                <td>Link Ảnh</td>
                <td><input class="txt" type="text" id  = "anh" value="<?php echo($a6); ?>"  name = "t6"></td>
            </tr>
            <tr>
                <td>Thể loại </td>
                <td>
                    <select class="txt3" id  = "theloai" name = "t4">
                    <option value = 'anvat' <?php if($a4 == 'anvat'){echo("selected");}?>>Ăn vặt</option>
                    <option value = 'buachinh' <?php if($a4 == 'buachinh'){echo("selected");}?>>Bữa chính</option>
                    <option value = 'douong' <?php if($a4 == 'douong'){echo("selected");}?>>Đồ uống</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td> Khu vực </td>
                <td>
                    <select selected ="<?php echo($a7); ?>" class="txt3" id="khuvuc" name="t7">
                        <option value="hue" <?php if($a7 == 'hue'){echo("selected");}?>>Huế</option>
                        <option value="danang" <?php if($a7 == 'danang'){echo("selected");}?>>Đà Nẵng</option>
                        <option value="hanoi" <?php if($a7 == 'hanoi'){echo("selected");}?>>Hà Nội</option>
                        <option value="hcm" <?php if($a7 == 'hcm'){echo("selected");}?>>Hồ Chí Minh</option>
                    </select>
                </td>
            </tr><br>
        </table>
        <br><br>
        <input class="btn" type = "button" name = "ok" value = "OK" onclick = "test2()"/>
        <input class="btn" type = "reset" name = "reset" value = "Reset">
    </form>
  </center> 
</body>
</html>