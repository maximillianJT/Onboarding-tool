<?php

// Sets up the class for the Users
class userData {
	private $_userID, $_firstName, $_lastName, $_username, $_adminLevel;

// Constructer
	public function __construct($dbRow){
		$this->_userID = $dbRow['userID'];
		$this->_firstName = $dbRow['firstName'];
		$this->_lastName = $dbRow['lastName'];
		$this->_username = $dbRow['username'];
		$this->_adminLevel = $dbRow['adminLevel'];
	}

// Functions for retrieving data
	public function getUserID(){
		return $this->_userID;
	}
	public function getfirstName(){
		return $this->_firstName;
	}
    public function getlastName(){
		return $this->_lastName;	
	}
    public function getUsername(){
		return $this->_username;
	}
	public function getAdminLevel(){
		return $this->_adminLevel;		
	}
}