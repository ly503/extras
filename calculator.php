<?php

$calcnum1 = $_POST['calcnum1'];
$calcnum2 = $_POST['calcnum2'];
$operator = $_POST['calcopt'];

switch ($operator) {
	case "+" : 
		echo $calcnum1 . " + " . $calcnum2 . " = " . ($calcnum1 + $calcnum2);
		break;
	case "-" :
		echo $calcnum1 . " - " . $calcnum2 . " = " . ($calcnum1 - $calcnum2);
		break;
	case "/" :
		echo $calcnum1 . " / " . $calcnum2 . " = " . ($calcnum1 / $calcnum2);
		break;
	case "*" :
		echo $calcnum1 . " * " . $calcnum2 . " = " . ($calcnum1 * $calcnum2);
		break;
	default:
		echo "Please pick an operator";
		}

?>
