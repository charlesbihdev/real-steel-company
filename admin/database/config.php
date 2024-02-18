<?php
// Error Reporting Turn On
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Setting up the time zone
date_default_timezone_set('Asia/Dhaka');

// Host Name
$dbhost = 'localhost';

//port
$port = 3308;
// Database Name
$dbname = 'real-steel-db';

// Database Username
$dbuser = 'root';

// Database Password
$dbpass = '';

// Defining base url
// define("BASE_URL", "http://localhost/streetlife-africa");

try {
	$pdo = new PDO("mysql:host={$dbhost};port={$port};dbname={$dbname}", $dbuser, $dbpass);
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $ex) {
	echo "Connection error :" . $ex->getMessage();
}
