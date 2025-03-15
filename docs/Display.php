<?php
	
	header('Content-type:text/html;charset=utf-8');
	include'Connect.php';
	$id=isset($_GET['id'])?$_GET['id']:"";
	$sql="select * from production where Pno='$id'";
	$res=my_error($sql);
	$production=mysqli_fetch_assoc($res);
	include'post.html';
	?>