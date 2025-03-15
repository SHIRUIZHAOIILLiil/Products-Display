
<?php
	header('Content-type:text/html;charset=utf-8');
	include"Connect.php";
	
	//var_dump($_POST);
	$username=isset($_POST['username'])?$_POST['username']:'';
	$password=md5(isset($_POST['password'])?$_POST['password']:'');
	$role=isset($_POST['role'])?$_POST['role']:'';
	
	session_start();
	if($role=='user')
	{
		$sql_user="select Username,Password from users
	 where Username='$username' and Password='$password'";
	}
	else{
		$sql_user="select Username,U_Password from admin
	 where Username='$username' and U_Password='$password'";
	}
	
	$result=my_error($sql_user);
	$user=mysqli_fetch_assoc($result);
	if($user&&$role=='user')
	{
		header('Refresh:3;url=Home.php');
		$_SESSION['username']="$username";
		$_SESSION['role']="$role";
		echo'Login successful!';
	}
	else if($user&&$role=='admin')
	{
		header('Refresh:3;url=Delete.php');
		$_SESSION['username']="$username";
		$_SESSION['role']="$role";
		echo'Login successful!';
	}
	else{
		header('Refresh:3;url=Login.php');
		echo 'The Username or password is incorrect';
	}
	
?>