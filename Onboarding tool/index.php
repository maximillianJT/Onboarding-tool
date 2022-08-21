<?php
// Manages the view for the home page/dashboard
$view = new stdClass();
$view->pageTitle = 'Homepage';

require_once('./loginController.php');
require_once('./Views/index.phtml');





