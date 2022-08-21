<?php
// Manages the view for the training page
$view = new stdClass();
$view->pageTitle = 'loggedin';

require_once 'Models/database.php'; // calls the database
require_once 'Models/user.php'; //calls the user class
require_once 'Models/viewUser.php'; // calls the viewUser class


require_once('./Views/training.phtml');


