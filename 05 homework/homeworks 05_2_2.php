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
	
	$koloni= 'COLS';
	$redove= 'ROWS';
	
	for ($koloni=1; $koloni<=4; $koloni++);
	for ($redove=1; $redove<=5; $redove++);
?>	
	<table>
  <tr>
    <td> echo '$koloni .$redove' </td>;
    </tr>
  
</table>
		


</body>
</html>