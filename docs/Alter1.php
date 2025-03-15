<?php
header('Content-type:text/html;charset=utf-8');
include'Connect.php';
$sql='select* from production';
$res=my_error($sql);
$production=array();
while($row=mysqli_fetch_assoc($res))
{
	$production[]=$row;
}
include_once'Alter1.html';

?>