<?php
// Manages the view for the admin page
require_once('./Models/checkLogin.php');
require_once('./Models/dashboardDataSet.php');
require_once('./Models/manageUser.php');


$view = new stdClass();
$view->pageTitle = 'Admin Panel';


// Assigns variables to the data which is pulled from the database
$dashboardDataSet = new dashboardDataSet();
$view->dashboardDataSet=$dashboardDataSet->fetchAllUsers();

require_once('./Views/admin.phtml');

?>