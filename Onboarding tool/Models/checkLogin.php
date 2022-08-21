<?php
// Starts the session
session_start();

// Checks if the session login is set to null, if it redirect to the login page 
if ($_SESSION["login"] == null) {
	header("Location: http://hc22-9.poseidon.salford.ac.uk/");
    exit();
}
?>