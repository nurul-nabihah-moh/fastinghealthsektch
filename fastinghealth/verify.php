<?php
error_reporting(0);
include_once("dbconnect.php");
$useremail = $_GET['email'];

$sql = "UPDATE USER1 SET VERIFY = '1' WHERE EMAIL = '$useremail'";
if ($conn->query($sql) === true) {
    echo "success";
} else {
    echo "error";
}

$conn->close();
?>