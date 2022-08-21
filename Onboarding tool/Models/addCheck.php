<?php
// Required Files
require_once("./dbConnect.php");
require_once('./Models/checkLogin.php');

// Sets up database connection
$_dbInstance = Database::getInstance();
$_dbHandle = $_dbInstance->getdbConnection();


// Checks for the submission of the form which inserts an item into the checklist
if(isset($_POST['submit'])){
	$check = $_POST["addCheck"];
	$id = $_GET["ID"];

	$sqlQuery = 'INSERT INTO checklist (candidateID, detail, status) VALUES (?,?,?)';
	$statement = $_dbHandle->prepare($sqlQuery);
	$statement->execute([$id, $check, 0]);
}

// Marks a check as done
if(isset($_POST['markDone'])){
	$id = intval($_POST['id']);
	$sqlQuery = 'UPDATE checklist SET status = 1 WHERE checkID = ?';
	$statement = $_dbHandle->prepare($sqlQuery);
	$statement->execute([$id]);
}

// Deletes a check from the database
if(isset($_POST['delete'])){
	$id = intval($_POST['id']);
	$sqlQuery = 'DELETE FROM checklist WHERE checkID = ?';
	$statement = $_dbHandle->prepare($sqlQuery);
	$statement->execute([$id]);
}
?>