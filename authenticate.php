<?php
session_start();
include 'config.php';


$username = $_POST['username'];
$password = $_POST['password'];


$query = "SELECT * FROM users WHERE username='$username' AND password='$password'";
$result = $conn->query($query);


if ($result->num_rows === 1) {
$_SESSION['user'] = $username;
header('Location: landing.php');
} else {
echo "<script>alert('Invalid Login'); window.location='login.php';</script>";
}
?>