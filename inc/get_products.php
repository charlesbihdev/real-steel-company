<?php
require_once('../admin/database/config.php');

// Retrieve selected categories from POST data
$selectedCategories = isset($_POST['categories']) ? $_POST['categories'] : array();
$limit = isset($_POST['limit']) ? $_POST['limit'] : 9;
$skip = isset($_POST['skip']) ? $_POST['skip'] : 0;

// Construct SQL query based on selected categories
$sql = "SELECT p.*, pi.src AS image_src 
        FROM products p 
        LEFT JOIN productimages pi ON p.id = pi.productId AND pi.id = (
            SELECT MIN(id) FROM productimages WHERE productId = p.id
        )";

if (!empty($selectedCategories)) {
    $categoryConditions = array();
    $sql .= " WHERE ";
    foreach ($selectedCategories as $i => $category) {
        $categoryConditions[] = "category = :category{$i}";
    }
    $sql .= implode(" OR ", $categoryConditions);
}

// Add LIMIT and OFFSET to the SQL query
$sql .= " LIMIT :limit OFFSET :skip";

// Prepare the SQL statement
$stmt = $pdo->prepare($sql);

// Bind parameters if categories are provided
foreach ($selectedCategories as $i => $category) {
    $stmt->bindValue(":category{$i}", $category);
}

// Bind LIMIT and OFFSET parameters
$stmt->bindValue(':limit', $limit, PDO::PARAM_INT);
$stmt->bindValue(':skip', $skip, PDO::PARAM_INT);

// Execute SQL query
try {
    $stmt->execute();
    $products = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Output products as JSON
    header('Content-Type: application/json');
    echo json_encode($products);
} catch (PDOException $e) {
    // Handle errors
    http_response_code(500);
    echo json_encode(array('error' => 'Database error'));
}
