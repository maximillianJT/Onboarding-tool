<?php

// Required Files
require_once("./dbConnect.php");
require_once('./Models/checkLogin.php');

// Sets up the database connection
$_dbInstance = Database::getInstance();
$_dbHandle = $_dbInstance->getdbConnection();

// Manages the post of the form to add a candidate and then inserts the data from the form into the database
if(isset($_POST['addCandidate'])){
	$fName = $_POST["fName"];
	$lName = $_POST["lName"];	
	$pNumber = $_POST["pNumber"];
	$eAddress = $_POST["eAddress"];

	$sqlQuery = 'INSERT INTO candidates (firstName, lastName, email, phoneNumber) VALUES (?,?,?,?)';
	$statement = $_dbHandle->prepare($sqlQuery);
	$statement->execute([$fName, $lName, $pNumber, $eAddress]);
}
?>