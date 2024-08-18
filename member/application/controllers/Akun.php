<?php 

class Akun extends CI_Controller {
	function index(){
		$this->load->model("Mongkir");
		$data['distrik'] = $this->Mongkir->tampil_distrik();

        $inputan = $this->input->post();

		$this->form_validation->set_rules("email_member", "Email", "required");
		$this->form_validation->set_rules("nama_member", "Nama Lengkap", "required");
		$this->form_validation->set_rules("alamat_member", "Alamat Lengkap", "required");
		$this->form_validation->set_rules("wa_member", "Nomor WA", "required");
		$this->form_validation->set_rules("kode_distrik_member", "Kode Distrik", "required");

		// atur pesan bindo
		$this->form_validation->set_message("required", "%s wajib diisi");


        if($this->form_validation->run()==TRUE){
            $this->load->model('Mmember');
            $id_member = $this->session->userdata("id_member");

			$city_id = $this->input->post("kode_distrik_member");
			$detail = $this->Mongkir->detail_distrik($city_id);
			$inputan['nama_distrik_member'] = $detail['type']." ".$detail["city_name"]." ".$detail["province"];

            $this->Mmember->ubah($inputan,$id_member);

            $this->session->set_flashdata('pesan_sukses', 'Akun telah diubah');
            redirect('home','refresh');
        }



		$this->load->view("header");
		$this->load->view("akun", $data);
		$this->load->view("footer");
	}
}
