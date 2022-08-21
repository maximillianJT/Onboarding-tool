<?php

// Class for storing the details of each candidate
class DashboardData {

	// Sets private variables for each class
	private $_candidateID, $_firstName, $_lastName, $_email, $_phoneNumber;

    // Constructer
	public function __construct($dbRow){
		$this->_candidateID = $dbRow['candidateID'];
		$this->_firstName = $dbRow['firstName'];
		$this->_lastName = $dbRow['lastName'];
		$this->_email = $dbRow['email'];
		$this->_phoneNumber = $dbRow['phoneNumber'];
	}

    // Functions to retrieve data
	public function getCandidateNumber(){
		return $this->_candidateID;
	}
	public function getCandidatefirstName(){
		return $this->_firstName;
	}
    public function getCandidatelastName(){
		return $this->_lastName;	
	}
    public function getCandidateEmail(){
		return $this->_email;
	}
	public function getCandidatePhoneNumber(){
		return $this->_phoneNumber;		
	}
}