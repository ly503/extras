function calctotal(){
	var getPics = document.getElementById("Pictures");
	var getPicItem = getPics.options[getPics.selectedIndex].value;

	var number = document.getElementById("Number");
	var numtotal = number.options[number.selectedIndex].value;
	
	var shiptotal = parseInt(document.querySelector('input[name = "shipping"]:checked').value, 10);
	
	var subtotal = (getPicItem * numtotal);
	var total = ((subtotal * .08) + subtotal) + shiptotal;
	
	document.getElementById("total").value = total;
	console.log("total:", total);
	
}

function CheckEmail() {

email = document.getElementById("email").value;
At = email.indexOf("@");
Period = email.lastIndexOf(".");

if (At == -1 || Period == -1) {
Message = "Not a valid email address";
}
}

function CheckCard() {

var card = document.querySelector('input[name = "cc"]:checked');
if (card == null) {
	alert("You must select a payment method");
	}

}

function CheckZip() {
// Validate zip code
var zip = document.getElementById("zip").value;
if (zip.length < 5) {
	alert("You must enter a valid zip code");
	}

if (isNaN(zip)) {
	alert("You must enter a number zip code");
	}

}

function printreceipt() {
	var getPics = document.getElementById("Pictures");
	var getPicItem = getPics.options[getPics.selectedIndex].value;
	
	var getPicText = getPics.options[getPics.selectedIndex].innerText;
	
	var number = document.getElementById("Number");
	var numtotal = number.options[number.selectedIndex].value;
	
		
	var shiptotal = parseInt(document.querySelector('input[name = "shipping"]:checked').value, 10);
	
	var subtotal = (getPicItem * numtotal);
	var total = ((subtotal * .08) + subtotal) + shiptotal;
	
	document.getElementById("total").value = total;
	
var Receipt = window.open();
Receipt.document.write("<head><link rel='stylesheet' href='styles2.css'></head>");
Receipt.document.write("<h1> Thank you for your order! </h1>");
Receipt.document.write("You bought " + getPicText + " for $" + total + " on " + new Date());

Receipt.document.close();

}

function checkcookie() {
	if (document.cookie != "" ){
		getcookie();
	}
	
	else {
	 setcookie();		
	}

}

function setcookie() {
  var cookievalue = escape(document.form1.fname.value);
  newCookie = "Name=" + cookievalue + ";expires=" + expireDate.toGMTString();
  document.cookie = newCookie;
  
  getcookie();

}

function getcookie() {
var output="";
	var cookieparts = document.cookie.split(";");
	
	var len = cookieparts.length;
	
	var nameval = cookieparts[0].split("=");
	
	output += " Welcome " +  nameval[1] + "<p>"

	displayCookie(output);

}

function displayCookie(output){
	
document.getElementById("cookie").innerHTML = output;
	
	}


