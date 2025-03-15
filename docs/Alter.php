<?php
header('Content-type:text/html;charset=utf-8');
include_once('Connect.php');
$PNumber=isset($_POST['id'])?$_POST['id']:'';
$PName=isset($_POST['name'])?$_POST['name']:'';
$Description=isset($_POST['description'])?$_POST['description']:'';
$Category=isset($_POST['category'])?$_POST['category']:'';
$Price=isset($_POST['price'])?(double)$_POST['price']:'';
$Height=isset($_POST['height'])?intval($_POST['height']):'';
$Quantity=isset($_POST['quantity'])?floatval($_POST['quantity']):'';



if(empty($PName)||empty($Description)||empty($Category)||empty($Price)
||empty($Height)||empty($Quantity))
{
	header('Refresh:3;url=Alter1.php');
	exit ('The data is incorrect. Please fill in the data completely.');
}
else
{
	$sql_update="update production set PName='$PName',Description='$Description',
	Category='$Category',Price=$Price,Height=$Height,Quantity=$Quantity where Pno='$PNumber'";
	my_error($sql_update);
	header('Refresh: 3; url=Alter1.php');
	echo 'update successfule';
}
?>