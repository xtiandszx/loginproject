<?php
session_start();
if (!isset($_SESSION['user'])) {
header('Location: login.php');
exit();
}
?>
<!DOCTYPE html>
<html>
<head>
<title>Landing Page</title>
<style>
body {
font-family: Arial, sans-serif;
background: #f4f7fc;
margin: 0;
padding: 0;
}


.navbar {
background: #4a90e2;
padding: 15px 25px;
display: flex;
justify-content: space-between;
align-items: center;
color: white;
}


.navbar h1 {
margin: 0;
font-size: 22px;
}


.navbar a {
color: white;
text-decoration: none;
font-size: 16px;
padding: 8px 15px;
background: rgba(255,255,255,0.2);
border-radius: 6px;
transition: 0.3s;
}


.navbar a:hover {
background: rgba(255,255,255,0.35);
}


.content {
margin: 60px auto;
width: 80%;
max-width: 800px;
background: white;
padding: 30px;
border-radius: 12px;
box-shadow: 0 4px 12px rgba(0,0,0,0.1);
text-align: center;
}


h2 {
color: #333;
}


p {
color: #555;
}
</style>
</head>
<body>


<div class="navbar">
<h1>Website ni Onak</h1>
<a href="logout.php">Logout</a>
</div>


<div class="content">
<h2>Welcome, <?php echo $_SESSION['user']; ?>!</h2>
<p>You have successfully logged in to your account.</p>
</div>


</body>
</html>