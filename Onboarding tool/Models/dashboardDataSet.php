<?php

// Required files
require_once('./Models/DashboardData.php');
require_once('./Models/userData.php');
require_once('./dbConnect.php');
require_once('./Models/checkList.php');

// Sets up the class Dashboard dataset
class DashboardDataSet {

	// Sets up the database connection
	protected $_dbHandle, $dbInstance;
	public function __construct() {
		$this->_dbInstance = Database::getInstance();
		$this->_dbHandle = $this->_dbInstance->getdbConnection();
	}

	// Manages fetching all the candidates then creating a new class for each 
	public function fetchAllCandidates(){
		$sqlQuery = 'SELECT * FROM candidates';

		$statement = $this->_dbHandle->prepare($sqlQuery);
		$statement->execute();

		$dataSet = [];
		while ($row = $statement->fetch()){
			$dataSet[] = new DashboardData($row);
		}
		return $dataSet;
	}

	// Manages fetching a candidate where the ID is specified
	public function fetchCandidate(){
		$id = $_GET["ID"];
	    $sqlQuery = 'SELECT * FROM candidates WHERE candidateID = ?';

		$statement = $this->_dbHandle->prepare($sqlQuery);
		$statement->execute([$id]);

		$row = $statement->fetch();
		$dataSet = new DashboardData($row);
		return $dataSet;
	}

	// Fetches the checklist which relates to a specific candidateID
	public function fetchCheckList(){
		$id = $_GET["ID"];
	    $sqlQuery = 'SELECT * FROM checklist WHERE candidateID = ?';

		$statement = $this->_dbHandle->prepare($sqlQuery);
		$statement->execute([$id]);
		$dataSet = [];
		while ($row = $statement->fetch()){
			$dataSet[] = new checkList($row);
	    }
		return $dataSet;
	}

	// Get the status of candidate who are onboarding
	public function getAllOnBoarding(){
		$sqlQuery = 'SELECT * FROM jobOffers WHERE status="onBoarding"';

		$statement = $this->_dbHandle->prepare($sqlQuery);
		$statement->execute();
		$dataSet = $statement->fetch();
		$count = count($dataSet);
		return $count;
	}

	// Fetches all users (Not to confuse with candidates, Users are used for logging into the system)
	public function fetchAllUsers(){
		$sqlQuery = 'SELECT * FROM Users';

		$statement = $this->_dbHandle->prepare($sqlQuery);
		$statement->execute();

		$dataSet = [];
		while ($row = $statement->fetch()){
			$dataSet[] = new userData($row);
		}
		return $dataSet;
	}

}
?>