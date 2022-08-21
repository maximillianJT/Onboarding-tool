<?php
// Manages the view for the individiual candidate profiles
require_once('./Models/checkLogin.php');
require_once('./Models/dashboardDataSet.php');
require_once('./dbConnect.php');
require_once('./Models/addCheck.php');

$view = new stdClass();
$view->pageTitle = 'Candidate Page';

$dashboardDataSet = new dashboardDataSet();
$view->dashboardDataSet=$dashboardDataSet->fetchCandidate();

$view->checkList=$dashboardDataSet->fetchCheckList();

require_once('./Views/candidate.phtml');
?>