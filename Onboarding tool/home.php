<?php
// Manages the view for the home page
require_once('./Models/checkLogin.php');
require_once('./Models/dashboardDataSet.php');
$view = new stdClass();
$view->pageTitle = 'loggedin';


// Used to set variables to data which is fetched from the database
$dashboardDataSet = new dashboardDataSet();
$view->dashboardDataSet=$dashboardDataSet->fetchAllCandidates();
$view->dashboardOnBoarding=$dashboardDataSet->getAllOnBoarding();

require_once('./Views/home.phtml');

?>