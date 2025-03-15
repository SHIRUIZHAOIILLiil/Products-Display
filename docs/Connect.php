<?php
	header('Content-type:text/html;charset=utf-8');
	$server='localhost:3306';
	$username='root';
	$password=' ';
	$database='sales';
	$sql='use sales';
  	$link=mysqli_connect($server,$username,$password,$database);
	$GLOBALS['link']=mysqli_connect($server,$username,$password,$database);
  	function my_error($sql)
  	{
  		$res=mysqli_query($GLOBALS['link'],$sql);
  		if(!$res)
  		{
  			//echo mysqli_errno();
  			'<br>';
  			//echo mysqli_error();
  			exit;
  		}
  		return $res;		 		
  	}
  	
?>