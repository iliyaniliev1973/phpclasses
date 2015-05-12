<html>
<head>
	<style> 
	<?php
			
			
			$r= rand(0,255);
			$g= rand(0,255);
			$b= rand(0,255);
			
			//echo "$r,$g,$b";
	 ?>
	 #randomColor{
		background-color:rgba(<?=$r.','.$g.','.$b?>, 1 ); 
		display:block;
		width: 200px;
		height: 200px;
	 }
	</style>
</head>
<body>
	<div id="randomColor">  

	  
	</div>

<body/>
<html/>
