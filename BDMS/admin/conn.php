<?php
// Connection to the first database
$conn = mysqli_connect("localhost", "root", "", "blood_donation") or die("Connection error: " . mysqli_connect_error());

// Connection to the second database
$conn2 = mysqli_connect("localhost", "root","","myhmsdb") or die("Connection error: " . mysqli_connect_error());
?>
