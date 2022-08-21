<?php

// Class to store the information of a check
class checkList {
	private $_checkID, $_candidateID, $_detail, $_status;

// Constructer
	public function __construct($dbRow){
		$this->_candidateID = $dbRow['candidateID'];
		$this->_detail = $dbRow['detail'];
		$this->_status = $dbRow['status'];
		$this->_checkID = $dbRow['checkID'];
	}

// Functions to retrieve the data
	public function getCheckID(){
		return $this->_checkID;
	}
	public function getCandidateNumber(){
		return $this->_candidateID;
	}
	public function getDetail(){
		return $this->_detail;
	}
    public function getStatus(){
		if ($this->_status == 0){
			return 'Not Done';
		} else {
			return 'Done';
		}
	}
}