<?php require_once('./inc/header.php'); ?>

<?php
if (isset($_POST['form1'])) {
	$valid = 1;

	if (empty($_POST['name'])) {
		$valid = 0;
		$error_message .= 'Name can not be empty<br>';
	}

	if (empty($_POST['position'])) {
		$valid = 0;
		$error_message .= 'You must type in a position<br>';
	}
	if (empty($_POST['detail'])) {
		$valid = 0;
		$error_message .= 'You must type a message<br>';
	}

	$path = $_FILES['photo']['name'];
	$path_tmp = $_FILES['photo']['tmp_name'];

	if ($path != '') {
		$ext = pathinfo($path, PATHINFO_EXTENSION);
		$file_name = basename($path, '.' . $ext);
		if ($ext != 'jpg' && $ext != 'png' && $ext != 'jpeg' && $ext != 'gif') {
			$valid = 0;
			$error_message .= 'You must have to upload jpg, jpeg, gif or png file for performer photo<br>';
		}
	}



	if ($valid == 1) {

		if ($path == '') {
			$statement = $pdo->prepare("UPDATE tbl_testimonials SET name=?, photo=?, detail=?, position=?, phone=?, email=? WHERE id=?");
			$statement->execute(array($_POST['name'], $_POST['current_photo'], $_POST['detail'], $_POST['position'], $_POST['phone'], $_POST['email'], $_GET['id']));
		}

		if ($path != '') {
			unlink('../assets/uploads/' . $_POST['current_photo']);

			$final_name = 'performer-' . $_REQUEST['id'] . '.' . $ext;
			move_uploaded_file($path_tmp, '../assets/uploads/' . $final_name);

			$statement = $pdo->prepare("UPDATE tbl_testimonials SET name=?, photo=?, detail=?, position=?, phone=?, email=? WHERE id=?");
			$statement->execute(array($_POST['name'], $final_name, $_POST['detail'], $_POST['position'], $_POST['phone'], $_POST['email'], $_GET['id']));
		}

		$success_message = 'performer is updated successfully!';
	}
}
?>

<?php
if (!isset($_REQUEST['id'])) {
	header('location: logout.php');
	exit;
} else {
	// Check the id is valid or not
	$statement = $pdo->prepare("SELECT * FROM tbl_testimonials WHERE id=?");
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
		<h1>Edit Testimonial</h1>
	</div>
	<div class="content-header-right">
		<a href="testimonials.php" class="btn btn-primary btn-sm">View All</a>
	</div>
</section>

<?php
$statement = $pdo->prepare("SELECT * FROM tbl_testimonials WHERE id=?");
$statement->execute(array($_GET['id']));
$result = $statement->fetchAll(PDO::FETCH_ASSOC);
foreach ($result as $row) {
	$name              = $row['name'];
	$photo             = $row['photo'];
	$detail            = $row['detail'];
	$position          = $row['position'];
	$phone             = $row['phone'];
	$email             = $row['email'];
}
?>

<section class="content">

	<div class="row">
		<div class="col-md-12">

			<?php if ($error_message) : ?>
				<div class="callout callout-danger">
					<h4>Please correct the following errors:</h4>
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
				<input type="hidden" name="current_photo" value="<?php echo $photo; ?>">
				<input type="hidden" name="current_performer_name" value="<?php echo $name; ?>">
				<div class="box box-info">

					<div class="box-body">
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Name <span>*</span></label>
							<div class="col-sm-6">
								<input type="text" autocomplete="off" class="form-control" name="name" value="<?php echo $name; ?>">
							</div>
						</div>
						<div class="form-group">

						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Existing Photo</label>
							<div class="col-sm-9" style="padding-top:5px">
								<img src="../assets/uploads/<?php echo $photo; ?>" alt="performer Photo" style="width:200px;">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Photo <span>*</span></label>
							<div class="col-sm-9" style="padding-top:5px">
								<input type="file" name="photo">(Only jpg, jpeg, gif and png are allowed)
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Message </label>
							<div class="col-sm-9">
								<textarea class="form-control editor" name="detail"><?php echo $detail; ?></textarea>
							</div>
						</div>


						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Position </label>
							<div class="col-sm-6">
								<input type="text" autocomplete="off" class="form-control" name="position" value="<?php echo $position; ?>">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Phone </label>
							<div class="col-sm-6">
								<input type="text" autocomplete="off" class="form-control" name="phone" value="<?php echo $phone; ?>">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Email Address </label>
							<div class="col-sm-6">
								<input type="text" autocomplete="off" class="form-control" name="email" value="<?php echo $email; ?>">
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