<footer class="bd-light text-center py-3 mt-5">
        <div class="">copyright &copy; 2024. Amikom</div>
    </footer>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>

	<script src="https://cdn.datatables.net/2.0.2/js/dataTables.js"></script>
	<script src="https://cdn.datatables.net/2.0.2/js/dataTables.bootstrap5.js"></script>
	<script>new DataTable("#tabelku")</script>

	<!-- Modal -->
	<div class="modal fade" id="login" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="loginLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="loginLabel">Login</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	                <form method="post" action="<?php echo base_url("welcome/index") ?>">
	                    <div class="mb-3">
	                        <label>Email Member</label>
	                        <input type="text" name="email_member" class="form-control" value="<?php echo set_value("username") ?>">
							<div class="text-danger">
	              				<?php echo form_error("username") ?>
	            			</div>
	                    </div>
	                    <div class="mb-3">
	                        <label>Password</label>
	                        <input type="password" name="password_member" class="form-control" value="<?php echo set_value("password") ?>">
							<div class="text-danger">
	              				<?php echo form_error("password") ?>
	            			</div>
	                    </div>
	                    <button class="btn btn-primary">Login</button>
	                </form>
	      </div>
	
	    </div>
	  </div>
	</div>

	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<?php if ($this->session->flashdata('pesan_sukses')): ?>
	<script>swal("Sukses!", "<?php echo $this->session->flashdata('pesan_sukses') ?>", "success");</script>
	<?php endif ?>

	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<?php if ($this->session->flashdata('pesan_gagal')): ?>
	<script>swal("Gagal!", "<?php echo $this->session->flashdata('pesan_gagal') ?>", "error");</script>
	<?php endif ?>
</body>
</html>
