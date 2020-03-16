<?php
$servername = "localhost";
$username   = "saujanae_fastinghealth";
$password   = "Bb5PnO2GvP]k";
$dbname     = "saujanae_FastingHealth";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>