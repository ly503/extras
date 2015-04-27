<html>
<head>
<title>Online Quiz</title>
<link rel="stylesheet" href="styles2.css">
</head>
<body>
<?php
$correctanswers = array("False" , "False" , "True");

$useranswers = array($_POST['quizopt1'], $_POST['quizopt2'], $_POST['quizopt3']);

$fname = $_POST['fname'];
$lname = $_POST['lname'];


echo "Hello " . $fname . " " . $lname . ", here are your results: <br>" ;

$totalright = 0 ;

for ($i = 0; $i < 3; $i++) {

	if ($useranswers[$i] == $correctanswers[$i]) {
		echo "You answered " . $useranswers[$i] . "; Answer " . ($i + 1) . " was correct <br>";
		$totalright += 1;
	}
	else {
		echo "You answered " . $useranswers[$i] . "; Answer " . ($i + 1) . " was incorrect <br>";
	}
}

echo "<br>The correct answers were: <br> 1. " . $correctanswers[0] . "<br>2. " . $correctanswers[1] . "<br>3. " . $correctanswers[2] . "<br>"; 


$percentcorrect = ($totalright / 3 ) * 100 ;


echo "<br> Your percent correct was " . $percentcorrect . "!" ;


?>
</body>
</html>
 
