<?php require_once('./inc/header.php'); ?>

<?php
if (isset($_POST['form1'])) {
	$valid = 1;
	$error_message = ''; // Initialize error message variable

	// Check if required fields are empty
	if (empty($_POST['productName'])) {
		$valid = 0;
		$error_message .= 'Product title cannot be empty.<br>';
	}
	if (empty($_POST['category'])) {
		$valid = 0;
		$error_message .= 'Product category cannot be empty.<br>';
	}


	// Check if a file is uploaded
	if (!empty($_FILES['photo']['name'])) {
		$file_name = $_FILES['photo']['name'];
		$file_tmp = $_FILES['photo']['tmp_name'];
		$file_size = $_FILES['photo']['size'];
		$file_ext = strtolower(pathinfo($file_name, PATHINFO_EXTENSION));

		$allowed_extensions = array("jpg", "jpeg", "png");

		if (!in_array($file_ext, $allowed_extensions)) {
			$error_message .= 'Only JPG, JPEG, and PNG files are allowed for the photo.<br>';
			$valid = 0;
		}

		// Check file size
		if ($file_size > 2097152) {
			$error_message .= 'File size must be less than 2 MB.<br>';
			$valid = 0;
		}
	}

	// If no errors, proceed with updating the product
	if ($valid == 1) {
		$productId = $_REQUEST['id'];
		$productName = $_POST['productName'];
		$brand = $_POST['brand'];
		$category = $_POST['category'];
		$poweredBy = $_POST['poweredBy'];
		$drumCapacity = $_POST['drumCapacity'];
		$description = $_POST['description'];

		// Move the uploaded file if there is one
		if (!empty($file_tmp)) {
			$destination = "../assets/products/" . $file_name;
			move_uploaded_file($file_tmp, $destination);

			// Update the product image in the productimages table
			$stmt = $pdo->prepare("UPDATE productimages SET src = :src WHERE productId = :productId");
			$stmt->execute(['src' => $file_name, 'productId' => $productId]);
		}

		// Update product details in the main products table
		$stmt = $pdo->prepare("UPDATE products SET productName = :productName, brand = :brand, category = :category, poweredBy = :poweredBy, drumCapacity = :drumCapacity, description = :description WHERE id = :productId");
		$stmt->execute(['productName' => $productName, 'brand' => $brand, 'category' => $category, 'poweredBy' => $poweredBy, 'drumCapacity' => $drumCapacity, 'description' => $description, 'productId' => $productId]);

		$success_message = 'Product is updated successfully!';
	}
}

?>

<?php
if (!isset($_REQUEST['id'])) {
	header('location: logout.php');
	exit;
} else {
	// Check the id is valid or not
	$statement = $pdo->prepare("SELECT * FROM products WHERE id=?");
	$statement->execute(array($_REQUEST['id']));
	$total = $statement->rowCount();
	$result = $statement->fetchAll(PDO::FETCH_ASSOC);
	if ($total == 0) {
		header('location: logout.php');
		exit;
	}
}
?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Edit product</h1>
	</div>
	<div class="content-header-right">
		<a href="products.php" class="btn btn-primary btn-sm">View All</a>
	</div>
</section>

<?php
require_once '../inc/auxilliaries.php';
$statement = $pdo->prepare("SELECT * FROM products WHERE id=?");
$statement->execute(array($_REQUEST['id']));
$result = $statement->fetchAll(PDO::FETCH_ASSOC);
$ProductsImg = new Admin($pdo, "productimages");


$Productscategories = new Admin($pdo, "categories");
$CategoriesOptions = $Productscategories->readAll('id');


$fetchImages = $ProductsImg->read('productId', $_REQUEST['id']);
$firstImg = $fetchImages[0]['src'];

foreach ($result as $row) {
	$productName         = $row['productName'];
	$brand          = $row['brand'];
	$category       = $row['category'];
	$poweredBy = $row['poweredBy'];
	$drumCapacity 		 = $row['drumCapacity'];
	$description          = $row['description'];
}
?>

<section class="content">

	<div class="row">
		<div class="col-md-12">

			<?php if ($error_message) : ?>
				<div class="callout callout-danger">

					<p>
						<?php echo $error_message; ?>
					</p>
				</div>
			<?php endif; ?>

			<?php if ($success_message) : ?>
				<div class="callout callout-success">

					<p><?php echo $success_message; ?></p>
				</div>
			<?php endif; ?>

			<form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
				<div class="box box-info">
					<div class="box-body">
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Existing Photo</label>
							<div class="col-sm-6" style="padding-top:6px;">
								<?php
								if ($firstImg  == '') {
									echo '<img src="../assets/uploads/no-photo1.jpg" alt="" style="width:100px;">';
								} else {
									echo '<img src="../assets/products/' . $firstImg . '" alt="' . $firstImg . '" style="width:150px;">';
								}
								?>
								<input type="hidden" name="previous_photo" value="<?php echo $firstImg; ?>">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Image</label>
							<div class="col-sm-6">
								<input type="file" name="photo">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Product Name <span>*</span></label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="productName" value="<?php echo $productName; ?>" required>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Brand</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="brand" value="<?php echo $brand; ?>">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Category</label>
							<div class="col-sm-6">
								<select class="form-control" name="category" required>
									<?php
									// Assuming $CategoriesOptions contains the categories
									foreach ($CategoriesOptions as $categoryOption) {
										// Output each category as an option
										echo '<option value="' . $categoryOption['name'] . '"';
										if ($categoryOption['name'] == $category) {
											echo ' selected';
										}
										echo '>' . $categoryOption['name'] . '</option>';
									}
									?>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Powered By</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="poweredBy" value="<?php echo $poweredBy; ?>">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Drum Capacity</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="drumCapacity" value="<?php echo $drumCapacity; ?>">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Description</label>
							<div class="col-sm-8">
								<textarea class="form-control" name="description"><?php echo $description; ?></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label"></label>
							<div class="col-sm-6">
								<button type="submit" class="btn btn-success pull-left" name="form1">Update</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

</section>

<?php require_once('./inc/footer.php'); ?>