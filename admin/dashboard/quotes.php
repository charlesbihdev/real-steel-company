<?php require_once('./inc/header.php'); ?>

<section class="content-header">
	<div class="content-header-left">
		<h1>View Quotes</h1>
	</div>

</section>

<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box box-info">
				<div class="box-body table-responsive">
					<table id="example1" class="table table-bordered table-striped">
						<thead>
							<th>SL</th>
							<th>Product Name</th>
							<th>Full Name</th>
							<th>Address</th>
							<th>Company</th>
							<th>Country</th>
							<th>Message</th>
							<th>Phone</th>
							<th>Email</th>
							<th>Action</th>

						</thead>
						<tbody>
							<?php
							$i = 0;
							$statement = $pdo->prepare("SELECT * FROM tbl_quotes");
							$statement->execute();
							$result = $statement->fetchAll(PDO::FETCH_ASSOC);
							foreach ($result as $row) {
								$i++;
							?>
								<tr>
									<td><?php echo $i; ?></td>
									<td><?php echo $row['productName']; ?></td>
									<td><?php echo $row['fullname']; ?></td>
									<td><?php echo $row['address']; ?></td>
									<td><?php echo $row['company']; ?></td>
									<td><?php echo $row['country']; ?></td>
									<td><?php echo $row['message']; ?></td>
									<td><?php echo $row['phone']; ?></td>
									<td><?php echo $row['email']; ?></td>
									<td>
										<a href="#" class="btn btn-danger btn-xs" data-href="quotes-delete.php?id=<?php echo $row['id']; ?>" data-toggle="modal" data-target="#confirm-delete">Delete</a>
									</td>
								</tr>

							<?php
							}
							?>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>


</section>


<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">Delete Confirmation</h4>
			</div>
			<div class="modal-body">
				<p>Are you sure want to delete this item?</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
				<a class="btn btn-danger btn-ok">Delete</a>
			</div>
		</div>
	</div>
</div>


<?php require_once('./inc/footer.php'); ?>