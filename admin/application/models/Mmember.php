<?php 
class Mmember extends CI_Model {
	function tampil(){

		//melakukan query
		$q = $this->db->get("member");

		//pecah ke array
		$d = $q->result_array();

		return $d;
	}

	

	function detail($id_member){

		//melakukan query
		$this->db->where('id_member', $id_member);
		$q = $this->db->get('member');

		//pecah ke array
		$d = $q->row_array();

		return $d;
	}

	function jumlah_member_distrik(){

		//melakukan query
		$q = $this->db->query("SELECT COUNT(*) as jumlah, nama_distrik_member from member GROUP BY nama_distrik_member");

		//pecah ke array
		$d = $q->result_array();

		return $d;
	}
}
