
<?php
// Manages the login functionality
session_start();

// Sets up database
require_once('./dbConnect.php');
$_dbInstance = Database::getInstance();
$_dbHandle = $_dbInstance->getdbConnection();

// Checks for the login button being pressed
if (isset($_POST["loginbutton"])) {
    $username = $_POST["username"];
    $password = $_POST["password"];


    $sql = "SELECT * FROM Users WHERE username = ?";
    $stmt = $_dbHandle->prepare($sql);
    $stmt->execute([$username]);
    $eExist = $stmt->fetch();
    $stmt->execute([$username]);
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
// Checks if the username exists
    if ($eExist) {
        // checks if the password is correct
        if($password ==  $result['password']){
        // In case of the password being correct
          $_SESSION["login"] = $username;
          header('LOCATION: http://hc22-9.poseidon.salford.ac.uk/home.php');
          exit();
        } else {
        // In case of password being incorrect
          echo '<script>alert("Password is incorrect")</script>';
        }
    }else{
        // In case of username being incorrect
        echo '<script>alert("Username is Incorrect")</script>';
    }
 }
?>