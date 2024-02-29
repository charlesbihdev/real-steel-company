<?php require_once('./inc/header.php'); ?>

<?php
if (isset($_POST['form1'])) {
	$valid = 1;

	$productName = $_POST['productName'];

	$brand = $_POST['brand'];
	$category = $_POST['category'];
	$poweredBy = $_POST['poweredBy'];
	$drumCapacity = $_POST['drumCapacity'];
	$description = $_POST['description'];

	// Check if required fields are empty
	if (empty($_POST['productName'])) {
		$valid = 0;
		$error_message .= 'Product title cannot be empty.<br>';
	}
	if (empty($_POST['category'])) {
		$valid = 0;
		$error_message .= 'Product category cannot be empty.<br>';
	}


	$path = $_FILES['photo']['name'];
	$path_tmp = $_FILES['photo']['tmp_name'];


	if ($path != '') {
		$ext = pathinfo($path, PATHINFO_EXTENSION);
		$file_name = basename($path, '.' . $ext);
		if ($ext != 'jpg' && $ext != 'png' && $ext != 'jpeg' && $ext != 'gif' && $ext != 'JPG' && $ext != 'PNG' && $ext != 'JPEG' && $ext != 'GIF') {
			$valid = 0;
			$error_message .= 'You must have to upload jpg, jpeg, gif or png file<br>';
		}
	}





	// getting auto increment id for photo renaming
	$statement = $pdo->prepare("SHOW TABLE STATUS LIKE 'products'");
	$statement->execute();
	$result = $statement->fetchAll();
	foreach ($result as $row) {
		$ai_id = $row[10];
	}

	if ($path == '') {
		// When no photo will be selected
		$valid = 0;
		$error_message .= 'Upload an image.<br>';
	} else {
		// uploading the photo into the main location and giving it a final name
		$final_name = $productName . '-product-' . $ai_id . '.' . $ext;
		move_uploaded_file($path_tmp, '../assets/products/' . $final_name);
	}

	if ($valid == 1) {

		$stmt = $pdo->prepare("INSERT INTO products (productName, brand, category, poweredBy, drumCapacity, description) VALUES (:productName, :brand, :category, :poweredBy, :drumCapacity, :description)");
		$stmt->execute(['productName' => $productName, 'brand' => $brand, 'category' => $category, 'poweredBy' => $poweredBy, 'drumCapacity' => $drumCapacity, 'description' => $description]);
		// Get the ID of the last inserted row
		$productId = $pdo->lastInsertId();

		$stmt = $pdo->prepare("INSERT INTO productimages (src, productId) VALUES (:src, :productId)");
		$stmt->execute(['src' => $final_name, 'productId' => $productId]);

		$success_message = 'product is added successfully!';
	}
}

require_once '../inc/auxilliaries.php';
$Productscategories = new Admin($pdo, "categories");
$CategoriesOptions = $Productscategories->readAll('id');
?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Add programme</h1>
	</div>
	<div class="content-header-right">
		<a href="products.php" class="btn btn-primary btn-sm">View All</a>
	</div>
</section>


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
							<label for="" class="col-sm-3 control-label">Image</label>
							<div class="col-sm-6">
								<input type="file" name="photo" required>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Product Name <span>*</span></label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="productName" value="" placeholder="Self load concrete mixer" required>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Brand</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="brand" value="" placeholder="LIUGONG">
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
										echo '>' . $categoryOption['name'] . '</option>';
									}
									?>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Powered By</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="poweredBy" value="" placeholder="diesel engine 15hp">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Drum Capacity</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="drumCapacity" placeholder="510" value="">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Description</label>
							<div class="col-sm-8">
								<textarea class="form-control" name="description" placeholder="Blade capacity 10.4 m³, Track width 560 mm"></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label"></label>
							<div class="col-sm-6">
								<button type="submit" class="btn btn-success pull-left" name="form1">Add Product</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

</section>

<?php require_once('./inc/footer.php'); ?>