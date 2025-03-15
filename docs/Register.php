<?php
header('Content-type:text/html;charset=utf-8');
include'Connect.php';
$username=isset($_POST['username'])?$_POST['username']:'';
$password=md5(isset($_POST['password'])?$_POST['password']:'');
$firstname=isset($_POST['firstname'])?$_POST['firstname']:'';
$lastname=isset($_POST['lastname'])?$_POST['lastname']:'';
$email=isset($_POST['email'])?$_POST['email']:'';
$address=isset($_POST['address'])?$_POST['address']:'';
$phone=isset($_POST['phone'])?$_POST['phone']:'';
$postcode=isset($_POST['postcode'])?$_POST['postcode']:'';


if(empty($username)||empty($password))
{
	header('Refresh:3;url=Login.html');
		echo'The username or password is incorrect!';
		return;
}

$sql_register="insert into users values('$username','','$firstname'
									,'$lastname','$address','','$postcode','$phone','$email','$password')";
									
	$result=my_error($sql_register);
	//$user=mysqli_fetch_assoc($result);
	if($result)
	{
		header('Refresh:3;url=Login.html');
		echo'Register successful!';
	}
	else
	{
		echo'cannot register';
	}
	//mysqli_query($link,$)
?>