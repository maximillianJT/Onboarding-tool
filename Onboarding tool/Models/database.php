<?php

// Sets up the database class
class Db
{
    private $servername; // name of server
    private $username; // username to interact with the database
    private $password; //password of database
    private $dbname; // database name

    protected function connect()
    {
        $this->servername = "poseidon.salford.ac.uk";
        $this->username = "hc22-9";
        $this->password = "xsWcoO2LRllYP5S";
        $this->dbname = "hc22_9_populated";


        $conn = new mysqli($this->servername, $this->username, $this->password, $this->dbname); // initialises the database
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error); // displays error if the connection fails
        }
        return $conn;
    }


}


