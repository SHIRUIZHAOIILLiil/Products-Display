<?php
header('Content-type:text/html;charset=utf-8');
include'Connect.php';
$picture=isset($_POST['search'])?$_POST['search']:'';
if($picture=='')
{
	$sql_search="select * from production ";
}
else{
	$sql_search="select * from production where PName like '%$picture%' 
	or Description like '%$picture%' or Category like '%$picture%'
	or Price= '$picture'";
}

$res=my_error($sql_search);
$production=array();
while($row=mysqli_fetch_assoc($res))
{
	$production[]=$row;
}
include_once'index.html';
?>

