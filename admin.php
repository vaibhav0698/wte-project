<?php

define('DB_HOST','localhost');
define('DB_NAME','register');
define('DB_USER','root');
define('DB_PASS','');
$con=mysqli_connect(DB_HOST,DB_USER,DB_PASS) or die("Failed to connect to MySQL:".mysqli_error($con));
$db=mysqli_select_db($con,DB_NAME) or die("Failed to connect to MySQL:".mysqli_error($con));
$username=$_POST['username'];
$password=$_POST['password'];
// $query="SELECT username,password FROM reg";
// $response=mysqli_query($con,$query);

// if($response)
// {
// 	echo '<script type="text/javascript">alert("Logged in successfully!");</script>';
// 	readfile("home.html");
// }
// else {
//     echo "Could not use database query";
//     echo mysqli_error($con);
// }
if (isset($_POST['username'])){
        // removes backslashes
	$username = stripslashes($_REQUEST['username']);
        //escapes special characters in a string
	$username = mysqli_real_escape_string($con,$username);
	$password = stripslashes($_REQUEST['password']);
	$password = mysqli_real_escape_string($con,$password);
	//Checking is user existing in the database or not
        $query = "SELECT * FROM admin WHERE username='$username'
and password='$password'";
	$result = mysqli_query($con,$query) or die(mysql_error());
	$rows = mysqli_num_rows($result);

        if($rows==1){

	    $_SESSION['username'] = $username;
            // Redirect user to home.html
	    echo '<script type="text/javascript">alert("Logged in successfully!");</script>';
	    	   readfile('feedback.php');
	    	   

         }else{
	echo "<div class='form'>
	<center>
<h3>Username/password is incorrect.</h3>
</center>";

	}
}
mysqli_close($con);
?>