<?php 
class Mslider extends CI_Model {
	function tampil(){

		//melakukan query
		$q = $this->db->get("slider");

		//pecah ke array
		$d = $q->result_array();

		return $d;
	}

	function simpan($inputan){
		//upload foto
		$config['upload_path'] = $this->config->item("assets_slider");
		$config['allowed_types'] = 'gif|jpg|png';

		$this->load->library('upload', $config);

		//adegan upload foto
		$ngupload = $this->upload->do_upload("foto_slider");

		//jika upload maka dapat nama fotonya 
		if($ngupload){
			$inputan['foto_slider'] = $this->upload->data("file_name");

			
		}
		//query simpan data
		$this->db->insert('slider', $inputan);
	}

	function hapus($id_slider){
		//query hapus data
		$this->db->where('id_slider', $id_slider);
		$this->db->delete('slider');
	}

	function detail($id_slider){
		//query 
		$this->db->where('id_slider', $id_slider);
		$q = $this->db->get('slider');
		$d = $q->row_array();
		return $d;
	}

	function edit($inputan, $id_slider){
		//ngurusi foto_slider jika pengguna up foto

		$config['upload_path'] = $this->config->item("assets_slider");
		$config['allowed_types'] = 'gif|jpg|png';
		$this->load->library("upload", $config);

		//adegan ngupload
		$ngupload = $this->upload->do_upload("foto_slider");

		//jika ngupload
		if($ngupload){
			$inputan['foto_slider'] = $this->upload->data("file_name");
		}

		//query data sesuai id_slider
		$this->db->where('id_slider', $id_slider);
		$this->db->update('slider', $inputan);
	}
}