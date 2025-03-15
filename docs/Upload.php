<?php
	header('Content-type:text/html;charset=utf-8');
	include_once'Connect.php';
$P_Img=isset($_POST['image'])?$_POST['image']:'';
$PNumber=isset($_POST['Pnumber'])?$_POST['Pnumber']:'';
$PName=isset($_POST['PName'])?$_POST['PName']:'';
$Description=isset($_POST['description'])?$_POST['description']:'';
$Category=isset($_POST['category'])?$_POST['category']:'';
$Price=isset($_POST['price'])?$_POST['price']:'';
$Height=isset($_POST['height'])?$_POST['height']:'';
$Quantity=isset($_POST['quantity'])?$_POST['quantity']:'';

$file=$_FILES['image'];
$name=isset($file['name'])?$file['name']:'';
$type=isset($file['type'])?$file['type']:'';
$error=isset($file['error'])?$file['error']:'';
$size=isset($file['size'])?$file['size']:'';
$s=(explode('/',$file['type']));

if($s[0]=='image')
{
	if(is_uploaded_file($file['tmp_name']))
	{
		if(move_uploaded_file($file['tmp_name'],'../img/'.$file['name']))
		{
			$path="../img/$file[name]";
		}
	$sql_insert="insert into production values('$PNumber','$PName','$Description','$Category'
	            ,'$Price','$Height','$Quantity','$name'
	            ,'$type','$path','$error','$size')";
	$result= my_error($sql_insert);
	if($result)
	{
		header('Refresh:3;url=Upload.html');
		echo'Add successful!';
	}
	else
	{
		echo'cannot add goods';
	}
	}
	
	
}

?>