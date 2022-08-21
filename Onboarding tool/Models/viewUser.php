<?php

// Used to display results on the candidate list page
class ViewUser extends User
{

    public function showAllUsers()
    {
        $this->getAllUsers(); // calls the get all users function

    }
    public function showAllProfiles(){
        $this->getAllProfiles();
    }
}