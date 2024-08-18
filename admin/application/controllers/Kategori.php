<?php 
class Kategori extends CI_Controller {

	function __construct(){
		parent::__construct();

		//jika tidak ada tiket login, maka suruh login
		if (!$this->session->userdata("id_admin")) {
			redirect('/','refresh');
		}
	}

	function index(){

		
		//manggil model Mkategori
		$this->load->model("Mkategori");

		$data ["kategori"] = $this->Mkategori->tampil();

		$this->load->view("header");
		$this->load->view("kategori_tampil", $data);
		$this->load->view("footer");
	}

	function tambah(){

		//mendapatkan inputan dari formulir
		$inputan = $this->input->post();

		//pasang form_validation nama kategori
		$this->form_validation->set_rules("nama_kategori", "Nama Kategori", "required");

		// atur pesan bindo
		$this->form_validation->set_message("required", "%s wajib diisi");

		//jika ada inputan
		if($this->form_validation->run()==TRUE){
			//panggil model Mkategori
			$this->load->model("Mkategori");
			//jalankan fungsi simpan
			$this->Mkategori->simpan($inputan);

			//pesan dilayar
			$this->session->set_flashdata('pesan_sukses', 'Data Kategori tersimpan');

			//redirect ke fitur kategori untuk tampil kategori
			redirect('kategori','refresh');
		}

		$this->load->view("header");
		$this->load->view("kategori_tambah");
		$this->load->view("footer");
	}

	function hapus($id_kategori){
		echo $id_kategori;
		//panggil model Mkategori
		$this->load->model('Mkategori');

		//jalankan fungsi hapus
		$this->Mkategori->hapus($id_kategori);

		//pesan di layar
		$this->session->set_flashdata('pesan_sukses','kategori telah terhapus');

		//redirect ke kategori untuk tampil data
		redirect('kategori','refresh');

	}

	function edit($id_kategori){

		//1. tampil data lama
		$this->load->model("Mkategori");
		$data['kategori'] = $this->Mkategori->detail($id_kategori);

		//2. ubah data
		$inputan = $this->input->post();

		//pasang form_validation nama kategori
		$this->form_validation->set_rules("nama_kategori", "Nama Kategori", "required");

		// atur pesan bindo
		$this->form_validation->set_message("required", "%s wajib diisi");


		if($this->form_validation->run()==TRUE){
			$this->Mkategori->edit($inputan, $id_kategori);

			//pesan
			$this->session->set_flashdata('pesan_sukses', 'kategori telah diubah');

			//redirect
			redirect('kategori','refresh');
		}

		$this->load->view("header");
		$this->load->view("kategori_edit", $data);
		$this->load->view("footer");
	}
}
