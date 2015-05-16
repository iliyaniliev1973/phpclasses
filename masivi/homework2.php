<!DOCTYPE html>
<html>

<body>

<?php
     $user = array(
	    
		'SONY' => '<a href="http://www.sony.com">sony</a>',
		'PANASONIC' => '<a href="http://www.panasonic.com">panasonic</a>',
        'LEGO' => '<a href="http://www.lego.com">lego</a>',
		'KAPPA' => '<a href="http://www.kappa.com">kappa</a>',
		'BASF' => '<a href="http://www.basf.com">basf</a>',
    );
	
    foreach ($user as $key => $value) {

		echo '<pre>';
        echo $key; 
		echo $value;
	    echo '<pre>';
	
    }
   
?>

</body>
</html>




