<?php 
class Mproduk extends CI_Model {
	function tampil(){

		//melakukan query
		$q = $this->db->get("produk");

		//pecah ke array
		$d = $q->result_array();

		return $d;
	}

	function tampil_produk_terbaru(){
		$this->db->order_by('id_produk', 'desc');
		$q = $this->db->get("produk",4,0);
		$d = $q->result_array();

		return $d;
	}

	function produk_member($id_member){
		$this->db->where('id_member', $id_member);
		//melakukan query
		$q = $this->db->get("produk");
		$d = $q->result_array();

		return $d;
	}

	function simpan($inputan){
		//upload foto
		$config['upload_path'] = $this->config->item("assets_produk");
		$config['allowed_types'] = 'gif|jpg|png|jpeg';

		$this->load->library('upload', $config);

		//adegan upload foto
		$ngupload = $this->upload->do_upload("foto_produk");

		//jika upload maka dapat nama fotonya 
		if($ngupload){
			$inputan['foto_produk'] = $this->upload->data("file_name");

			
		}
		$inputan['id_member'] = $this->session->userdata("id_member");
		//query simpan data
		$this->db->insert('produk', $inputan);
	}

	function detail($id_produk){
		//detail data produk sesuai id_produk dan id_member yang login
		$this->db->where('id_member', $this->session->userdata("id_member"));
		$this->db->where('id_produk', $id_produk);
		$this->db->join("kategori", 'produk.id_kategori = kategori.id_kategori', 'left');
		$q = $this->db->get("produk");
		$d = $q->row_array();

		return $d;
	}

	function ubah($inputan, $id){
		//ngurusi foto_produk jika pengguna up foto

		$config['upload_path'] = $this->config->item("assets_produk");
		$config['allowed_types'] = 'gif|jpg|png|jpeg';
		$this->load->library("upload", $config);

		//adegan ngupload
		$ngupload = $this->upload->do_upload("foto_produk");

		//jika ngupload
		if($ngupload){
			$inputan['foto_produk'] = $this->upload->data("file_name");
		}

		$inputan['id_member'] = $this->session->userdata("id_member");

		//query data sesuai id_produk
		//query update data produk sesuai id_produk dan id_member yang login
		$this->db->where('id_member', $this->session->userdata("id_member"));
		$this->db->where('id_produk', $id);
		$this->db->update('produk', $inputan);
	}

	function hapus($id_produk){
		//query hapus data produk sesuai id_produk dan id_member yang login
		$this->db->where('id_member', $this->session->userdata("id_member"));
		$this->db->where('id_produk', $id_produk);
		$this->db->delete('produk');
	}

	function detail_umum($id_produk){
		$this->db->where('id_produk', $id_produk);
		$this->db->join("kategori", 'produk.id_kategori = kategori.id_kategori', 'left');
		$q = $this->db->get("produk");
		$d = $q->row_array();

		return $d;
	}
}
