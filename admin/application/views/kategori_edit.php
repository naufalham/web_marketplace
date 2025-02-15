<div class="container">
	<h5>Edit Kategori</h5>
	
	<form method="post" enctype="multipart/form-data">
		<div class="mb-3">
			<label>Nama Kategori</label>
			<input type="text" name="nama_kategori" class="form-control" value="<?php echo $kategori['nama_kategori'] ?>">
			<span class="small text-danger">
              	<?php echo form_error("nama_kategori") ?>
            </span>
		</div>
        <div class="mb-3">
			<label>Foto Lama</label>
			<img src="<?php echo $this->config->item("url_kategori").$kategori['foto_kategori'] ?>" width="250">
		</div>
		<div class="mb-3">
			<label>Ganti Foto Kategori</label>
			<input type="file" name="foto_kategori" class="form-control">
		</div>
		<button type="submit" class="btn btn-primary">simpan</button>
	</form>
</div>
