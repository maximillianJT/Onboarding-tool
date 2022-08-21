<?php
class User extends Db{

// Manages displaying all the candidates and then displaying them in the table
    protected function getAllUsers(){
        $sql ="SELECT * FROM candidates";
        $result = $this->connect()->query($sql);

        if ($result->num_rows > 0) {  // if the results are 0 nothing will happen
            // output data of each row
            echo  "<table class=cand-table> <tr><th> Person </th><th>phoneNumber</th><th>email</th></tr>";
            while($row = $result->fetch_assoc()) {

            echo "<tr class='clickable-row' data-href='./candidate.php?ID=". $row["candidateID"] ."'><td>" . $row["firstName"]. " ".$row["lastName"]."</td> <td>". $row["phoneNumber"]." </td> <td>". $row["email"]." </td></tr>" ;

            }
            echo "</table>";
        } else {
            echo "0 results"; // displays 0 if the code  above doesn't run
        }
    }

// Manages getting all the candidate profiles for the training 
    // Replace $randNum with details from the training database to change the progress wheels
    protected function getAllProfiles(){
        $sql ="SELECT * FROM candidates";
        $result = $this->connect()->query($sql);

        if ($result->num_rows > 0) {  
            // output data of each row

            while($row = $result->fetch_assoc()) {
                $randNum = rand(0,100);
                echo "<div class=data_container> " ;
                echo "<div class=profile_top >";
                echo "<div class='progress mx-auto' data-value='".$randNum."'><span class='progress-left'><span class='progress-bar'></span></span><span class='progress-right'>
                        <span class='progress-bar'></span></span><div class='progress-value w-100 h-100 rounded-circle d-flex align-items-center justify-content-center'><div class='h2 font-weight-bold'>".$randNum."<sup class='small'>%</sup></div></div></div></div>";
                echo "<div class =candidate_ID> <p>ID:</p> ". $row["candidateID"]."</div> <div class =candidate_name>". $row["firstName"]."</div> <div class = candidate_lastN>".  $row["lastName"]."</div> <div class =phoneNumber>". $row["phoneNumber"]." </div> <div class =email_s>". $row["email"]." </div>" ;
                echo "</div>" ;
            }

            echo"</div>";
        } else {
            echo "0 results";
        }
    }



    }
