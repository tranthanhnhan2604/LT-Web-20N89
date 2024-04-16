<?php
@include('connect_db.php');
if (isset($_REQUEST['IDPB'])) {
    $IDPB = $_REQUEST['IDPB'];
    $sql = "SELECT * FROM nhanvien WHERE IDPB='$IDPB'";
    $result =  mysqli_query($conn, $sql);
} else {
    echo "Không có IDPB được truyền";
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sách nhân viên của phòng ban</title>
    <link rel="stylesheet" href="style2.css">

</head>

<body>
    <h2>Danh sách nhân viên của phòng ban</h2>
    <table>
        <tr>
            <th>IDNV</th>
            <th>Họ và tên</th>
            <th>IDPB</th>
            <th>Địa chỉ</th>
        </tr>
        <?php
        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                echo "<tr><td>" . $row["IDNV"] . "</td><td>" . $row["Hoten"] . "</td><td>" . $row["IDPB"] . "</td><td>" . $row["Diachi"] . "</td></tr>";
            }
        } else {
            echo "0 kết quả";
        }
        mysqli_close($conn);
        ?>
    </table>
    <br>
    <a href="xemthongtin_pb.php">Back</a>
</body>

</html>