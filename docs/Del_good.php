<?php
	header('Content-type:text/html;charset=utf-8');
	include_once'Connect.php';
$good=$_GET['id'];
$sql_delete="delete from production where Pno='$good'";

$result=my_error($sql_delete);
if($result)
{
	header('Refresh:3;url=Delete.php');
		echo'Delete successful!';
}
else{
	header('Refresh:3;url=Delete.php');
		echo'Fail to Delete!';
}

?>