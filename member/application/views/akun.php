<div class="container mt-5">
    <h5>Ubah Akun Member</h5>
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <form method="post">
                    <div class="mb-3">
                        <label>Email Anda</label>
                        <input type="text" name="email_member" class="form-control" value="<?php echo set_value("email_member", $this->session->userdata("email_member")) ?>">
						<span class="small text-danger">
              				<?php echo form_error("email_member") ?>
            			</span>
                    </div>
                    <div class="mb-3">
                        <label>Password</label>
                        <input type="text" name="password_member" class="form-control">
                        <p class="text-muted">kosongkan jika password tidak diubah</p>
                    </div>
                    <div class="mb-3">
                        <label>Nama Lengkap</label>
                        <input type="text" name="nama_member" class="form-control" value="<?php echo set_value("nama_member", $this->session->userdata("nama_member")) ?>">
						<span class="small text-danger">
              				<?php echo form_error("nama_member") ?>
            			</span>
                    </div>
                    <div class="mb-3">
                        <label>Alamat Lengkap</label>
                        <input type="text" name="alamat_member" class="form-control" value="<?php echo set_value("alamat_member", $this->session->userdata("alamat_member")) ?>">
						<span class="small text-danger">
              				<?php echo form_error("alamat_member") ?>
            			</span>
                    </div>
                    <div class="mb-3">
                        <label>Nomoer WAwa_member</label>
                        <input type="text" name="wa_member" class="form-control" value="<?php echo set_value("wa_member", $this->session->userdata("wa_member")) ?>">
						<span class="small text-danger">
              				<?php echo form_error("wa_member") ?>
            			</span>
                    </div>
                    <div class="mb-3">
                        <label>kota/kabupaten</label>
                        <select class="form-control form-select" name="kode_distrik_member" >
                            <option value="">Pilih</option>
                            <?php foreach ($distrik as $k => $v): ?>
                            <option value="<?php echo $v["city_id"] ?>" <?php echo $v["city_id"] == set_value("city_id", $this->session->userdata("kode_distrik_member")) ? "selected" : "" ?> >
                                <?php echo $v["type"] ?>
                                <?php echo $v["city_name"] ?>
                                <?php echo $v["province"] ?>
                            </option>
                            <?php endforeach ?>
                        </select>
						<span class="text-muted"><?php echo form_error("city_id") ?></span>
                    </div>
                    <button class="btn btn-primary">Ubah Akun</button>
                </form>
            </div>
        </div>
</div>
