<?php
require_once('../admin/database/config.php');
require_once('../admin/inc/auxilliaries.php');

$Products = new Admin($pdo, "products");
$Categories = new Admin($pdo, "categories");

$currentPage = isset($_GET['page']) ? $_GET['page'] : 1;

// Retrieve selected categories from POST data
$categories = isset($_POST['categories']) ? $_POST['categories'] : array();
// $limit = isset($_POST['page']) ? $_POST['page'] : 1;
// $skip = isset($_POST['skip']) ? $_POST['skip'] : 0;

$totalRecords = $Products->getTotalRecords($categories);
$limit = 9;
$totalPages = ceil($totalRecords / $limit);

$page = min($currentPage, $totalPages);
$skip = ($page <= 1) ? 0 : $limit * ($page - 1);

$numAdjacentPages = 2;

if (!empty($categories)) {
    $fetchProducts = $Products->getPaginatedData($limit, $skip, $categories);
} else {
    $fetchProducts = $Products->getPaginatedData($limit, $skip);
}

// Execute SQL query
try {
    // $stmt->execute();
    // $products = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Output products as JSON
    header('Content-Type: application/json');
    echo json_encode(array(
        'products' => $fetchProducts,
        'totalRecords' => $totalRecords,
        'totalPages' => $totalPages,
        'limit' => $limit,
        'page' => $page,
        'skip' => $skip
    ));
} catch (PDOException $e) {
    // Handle errors
    http_response_code(500);
    echo json_encode(array('error' => 'Database error'));
}
