<?php

// Manages logging out the user 
   session_start();
   unset($_SESSION["login"]);
   session_destroy();
   header("Location: http://hc22-9.poseidon.salford.ac.uk/index.php");
   exit();
?>