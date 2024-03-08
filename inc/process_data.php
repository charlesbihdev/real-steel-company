<?php
$totalRecords = $_POST['totalRecords'];
$totalPages = $_POST['totalPages'];
$limit = $_POST['limit'];
$page = $_POST['page'];
$skip = $_POST['skip'];

// Process the data as needed
// You can perform database operations, calculations, etc. here

// Optionally, you can return a response
$response = array(
    'status' => 'success',
    'message' => 'Data processed successfully'
);
// echo json_encode($response);
