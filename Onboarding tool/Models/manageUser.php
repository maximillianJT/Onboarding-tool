<?php

// Required files
require_once("./dbConnect.php");
require_once('./Models/checkLogin.php');

// Sets up the database connection
$_dbInstance = Database::getInstance();
$_dbHandle = $_dbInstance->getdbConnection();


// Manages inserting the candidates into the candidates table in the database
if(isset($_POST['submit'])){
	$firstName = $_POST['firstName'];
	$lastName = $_POST['lastName'];
	$username = $_POST['username'];
	$password = $_POST['password'];
	$adminLevel = $_POST['adminLevel'];

	$sqlQuery = 'INSERT INTO Users (firstName, lastName, username, password, adminLevel) VALUES (?,?,?,?,?)';
	$statement = $_dbHandle->prepare($sqlQuery);
	$statement->execute([$firstName, $lastName, $username, $password, $adminLevel]);
}

// Manages Delteting the candidates from the candidates table
if(isset($_POST['delete'])){
	$id = intval($_POST['id']);
	$sqlQuery = 'DELETE FROM Users WHERE userID = ?';
	$statement = $_dbHandle->prepare($sqlQuery);
	$statement->execute([$id]);
}
?>