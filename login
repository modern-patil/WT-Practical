<!DOCTYPE html>

<html>

<head>

<title>User Login</title>

<style>

body {

margin: 0;

font-family: Arial, sans-serif;

background-color: #b7c9cc;

display: flex;

justify-content: center;

align-items: center;

height: 100vh;

}

.login-box {

background: white;

padding: 30px;

border-radius: 10px;

box-shadow: 0 0 15px rgba(0,0,0,0.2);

width: 300px;

text-align: center;

}

.login-box h2 {

margin-bottom: 20px;

}

.login-box input {

width: 100%;

padding: 10px;

margin: 10px 0;

border-radius: 5px;

border: 1px solid #ccc;

}

.login-box input[type="submit"] {

background: #2193b0;

color: white;

border: none;

cursor: pointer;

}

.message {

margin-top: 12px;

font-weight: bold;

}

</style>

</head>

<body>

<div class="login-box">

<h2>User Login</h2>

<form method="post">

<label>User Name:</label>

<input type="text" name="username" required>

<label>Password:</label>

<input type="password" name="password" required>

<input type="submit" name="login" value="Sign In">

</form>

<?php

$valid_username = "admin";

$valid_password = "12345";

if (isset($_POST['login'])) {

$username = $_POST['username'];

$password = $_POST['password'];

if ($username === $valid_username && $password === $valid_password) {

echo "<div class='message' style='color:green;'>Login Successful!</div>";

} else {

echo "<div class='message' style='color:red;'>Invalid Username or Password!</div>";

}

}

?>

</div>

</body>

</html>
