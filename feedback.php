<?php
define('DB_HOST','localhost');
define('DB_NAME','register');
define('DB_USER','root');
define('DB_PASS','');
$con=mysqli_connect(DB_HOST,DB_USER,DB_PASS) or die("Failed to connect to MySQL:".mysqli_error($con));
$db=mysqli_select_db($con,DB_NAME) or die("Failed to connect to MySQL:".mysqli_error($con));

function NewUser($con)
{
	$username=$_POST['username'];
	$email=$_POST['email'];
	$contactno=$_POST['contactno'];
	$message=$_POST['message'];
	$query="INSERT INTO feedback(username,email,contactno,message)VALUES('$username','$email','$contactno','$message')";
    $data=mysqli_query($con,$query) or die (mysqli_error($con));
    if($data){
         echo "YOUR REGISTRATION IS COMPLETE";
    }
      

}
function Signup($con)
{
	if(!empty($_POST['username']))
{
	 $query = mysqli_query($con,"INSERT INTO feedback (username,email,contactno,message) VALUES('$_POST[username]','$_POST[email]','$_POST[contactno]','$_POST[message]')");
 //    echo "username:".$_POST["username"]."<br>email:".$_POST["email"]."<br>contactno:".$_POST["contactno"]."<br>feedback:".$_POST["feedback"]."<br>";
readfile('thank.html');
}
}


if(isset($_POST['submit']))
{
    Signup($con);
}



?>