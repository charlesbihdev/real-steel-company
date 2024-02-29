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
			$error_message .= 'You must have to upload jpg, jpeg, gif or png file for team member photo<br>';
		}
	} else {
		$valid = 0;
		$error_message .= 'You must have to select a photo for testimonial photo<br>';
	}


	if ($valid == 1) {

		// getting auto increment id
		$statement = $pdo->prepare("SELECT MAX(id) AS max_id FROM tbl_testimonials");
		$statement->execute();
		$result = $statement->fetch(PDO::FETCH_ASSOC);

		$ai_id = $result['max_id'] + 1; // Increment the maximum id value

		$final_name = 'testimonial-' . $ai_id . '.' . $ext;
		move_uploaded_file($path_tmp, '../assets/uploads/' . $final_name);


		$statement = $pdo->prepare("INSERT INTO tbl_testimonials (name, photo, detail, phone, position, email) VALUES (?,?,?,?,?,?)");
		$statement->execute(array($_POST['name'], $final_name, $_POST['detail'], $_POST['phone'], $_POST['position'], $_POST['email']));

		$success_message = 'Testimonial is added successfully!';

		unset($_POST['name']);
		unset($_POST['detail']);
		unset($_POST['phone']);
		unset($_POST['position']);
		unset($_POST['email']);
	}
}
?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Add Testimonials</h1>
	</div>
	<div class="content-header-right">
		<a href="./testimonials.php" class="btn btn-primary btn-sm">View All</a>
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
							<label for="" class="col-sm-2 control-label">Name <span>*</span></label>
							<div class="col-sm-6">
								<input type="text" autocomplete="off" class="form-control" name="name" value="<?php if (isset($_POST['name'])) {
																													echo $_POST['name'];
																												} ?>">
							</div>
						</div>

						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Photo <span>*</span></label>
							<div class="col-sm-9" style="padding-top:5px">
								<input type="file" name="photo">(Only jpg, jpeg, gif and png are allowed)
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">message </label>
							<div class="col-sm-9">
								<textarea class="form-control editor" name="detail"><?php if (isset($_POST['detail'])) {
																						echo $_POST['detail'];
																					} ?></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Position </label>
							<div class="col-sm-6">
								<input type="text" autocomplete="off" class="form-control" name="position" value="<?php if (isset($_POST['position'])) {
																														echo $_POST['position'];
																													} ?>">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Phone </label>
							<div class="col-sm-6">
								<input type="text" autocomplete="off" class="form-control" name="phone" value="<?php if (isset($_POST['phone'])) {
																													echo $_POST['phone'];
																												} ?>">
							</div>
						</div>



						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Email Address </label>
							<div class="col-sm-6">
								<input type="text" autocomplete="off" class="form-control" name="email" value="<?php if (isset($_POST['email'])) {
																													echo $_POST['email'];
																												} ?>">
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