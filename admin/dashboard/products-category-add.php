<?php require_once('./inc/header.php'); ?>

<?php



if (isset($_POST['form1'])) {
	$valid = 1;

	if (empty($_POST['name'])) {
		$valid = 0;
		$error_message .= "products_category Name can not be empty<br>";
	} else {
		print_r($_POST['name']);
	}

	if ($valid == 1) {


		try {
			// Saving data into the main table categories
			$statement = $pdo->prepare("INSERT INTO categories (name) VALUES (?)");
			$statement->execute(array($_POST['name']));

			$success_message = 'products_category is added successfully.';
		} catch (PDOException $e) {
			// Handle any database errors
			$error_message = 'Error: ' . $e->getMessage();
		}



		$success_message = 'products_category is added successfully.';
	}
}
?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Add products_category</h1>
	</div>
	<div class="content-header-right">
		<a href="products-category.php" class="btn btn-primary btn-sm">View All</a>
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

			<form class="form-horizontal" action="" method="post">

				<div class="box box-info">
					<div class="box-body">
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">products_category Name <span>*</span></label>
							<div class="col-sm-4">
								<input type="text" class="form-control" name="name" placeholder="Example: Excavator">
							</div>
						</div>

						<div class="form-group">
							<label for="" class="col-sm-2 control-label"></label>
							<div class="col-sm-6">
								<button type="submit" class="btn btn-success pull-left" name="form1">Submit</button>
							</div>
						</div>
					</div>
				</div>

			</form>


		</div>
	</div>

</section>

<?php require_once('./inc/footer.php'); ?>