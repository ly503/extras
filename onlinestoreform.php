<html>
<head>
<title>Online Store Form</title>
<link rel="stylesheet" href="styles2.css">
</head>
<body>
<?php
$customername = $_POST['storename'];
$customeremail = $_POST['storeemail'];
$product = $_POST['product'];
$quantity = $_POST['quantity'];

if ($product == "9.99") {
$productname = "hat" ;
}

elseif ($product == "15.99") {
$productname = "scarf";
}

$totalprice = ($quantity * $product);

echo "Thank you for your order, " . $customername . "!<br>You ordered " . $quantity . " " . $productname . "s";

echo " and your total was $" . $totalprice . "<br> A receipt has been emailed to you at " . $customeremail


?>

</body>
