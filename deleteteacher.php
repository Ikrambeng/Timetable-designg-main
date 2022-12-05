<?php

include 'connection.php';
$id = $_GET['emailid'];
$q = mysqli_query(mysqli_connect("localhost", "root", "", "ttms"),
    "DELETE FROM teachers WHERE emailid = '$id' ");
$drop = DROP TABLE  . $id;

$q = mysqli_query(mysqli_connect("localhost", "root", "", "ttms"), $drop);
if ($drop) {

    header("Location:addteachers.php");

} else {
    echo 'Error';
}
?>

