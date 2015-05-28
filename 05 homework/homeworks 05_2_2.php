<!DOCTYPE html>
<html>
	<head lang="en">
		<title>homework 05_2_2</title>
		<style>	* {	font-size: 22px;}</style>
	</head>
<body>
<?php
	define('COLS',4);
	define ('ROWS', 5);
	echo "<table border=1>";
	for ($a=1; $a<=ROWS; $a++) {
		echo "<tr>";
		for ($b=1;$b<=COLS; $b++) {
			echo "<td>$a,$b </td>";
		}
		echo "</tr>";
	}
		echo "</table>";		

	
	
?>	
	


</body>
</html>