<!DOCTYPE html>
<html>
<body>
<style>
.blokche{
	width: 200px;
	height: 50px;
	
}

.cherveno {
	background-color: red;
	
}
.sinio {
	background-color: blue;
	
}


</style>
<?php 
$x = 1;

while ($x<=100) {
	
	
	if ($x%2===0) 
	{
		echo '<div class="blokche sinio">';		
	} 
	else 
	{
		echo '<div class="blokche cherveno">';
	}
	
	echo $x;
	if ($x%7===0)
	{
		echo "bingo";
	}
	
	
	echo '</div>';
	
	$x = $x+1;
}



	?>
  
</body>
</html>