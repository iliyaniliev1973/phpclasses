<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
</head>
<body>
<?php
	$cars = array("opel", "mercedes", "vw", "honda", "mazda");
	$total = count($cars);
	
	for( $i = 0; $i < $total; $i++){
		echo "Искам да си купя ".$cars[$i]."<br />"; 
	}

	echo "<br />";
	unset ($cars[$total-1]);
    $total = count($cars);
	for( $i = 0; $i < $total; $i++){
			echo "Ще си купя ".$cars[$i]."<br />"; 
	}
		
	
	
	