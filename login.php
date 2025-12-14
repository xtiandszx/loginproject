<!DOCTYPE html>
<html>
<head>
<title>Login Form</title>
<style>
body {
font-family: Arial, sans-serif;
background: linear-gradient(135deg, #63b5f8ff, #19191dff);
height: 100vh;
display: flex;
justify-content: center;
align-items: center;
margin: 0;
}

*, *::before, *::after {
	box-sizing: border-box;
}


.container {
width: 350px;
padding: 40px;
background: #ffffff;
border-radius: 12px;
box-shadow: 0 4px 15px rgba(0,0,0,0.15);
}


h2 {
text-align: center;
margin-bottom: 20px;
color: #333;
}


input {
width: 100%;
padding: 12px;
margin-top: 10px;
border: 1px solid #ccc;
border-radius: 8px;
font-size: 14px;
}


button {
width: 100%;
padding: 12px;
margin-top: 20px;
background: #4a90e2;
color: white;
border: none;
border-radius: 8px;
font-size: 16px;
cursor: pointer;
transition: 0.3s;
}


button:hover {
background: #357ac9;
}
</style>
</head>
<body>
<div class="container">
<h2>Login</h2>
<form action="authenticate.php" method="POST">
<input type="text" name="username" placeholder="Username" required>
<input type="password" name="password" placeholder="Password" required>
<button type="submit">Login</button>
</form>
</div>
</body>
</html>