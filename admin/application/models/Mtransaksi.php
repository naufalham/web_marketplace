<?php 
class Mtransaksi extends CI_Model {
	function tampil(){

		//melakukan query
		$q = $this->db->get("transaksi");

		//pecah ke array
		$d = $q->result_array();

		return $d;
	}

	function transaksi_member_jual($id_member){
		//melakukan query
		$this->db->where('id_member_jual', $id_member);
		$q = $this->db->get('transaksi');

		//pecah ke array
		$d = $q->result_array();

		return $d;
	}

	function transaksi_member_beli($id_member){
		//melakukan query
		$this->db->where('id_member_beli', $id_member);
		$q = $this->db->get('transaksi');

		//pecah ke array
		$d = $q->result_array();

		return $d;
	}

	function detail($id_transaksi){
		$this->db->where('id_transaksi', $id_transaksi);
		$q = $this->db->get('transaksi');
		$d = $q->row_array();

		return $d;
	}

	function transaksi_detail($id_transaksi){
		$this->db->where('id_transaksi', $id_transaksi);
		$q = $this->db->get('transaksi_detail');
		$d = $q->result_array();

		return $d;
	}
}
