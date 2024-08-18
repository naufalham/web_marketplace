<?php 
class Madmin extends CI_Model {
    function login($inputan){
        $username = $inputan['username'];
        $password = $inputan['password'];
        $password = sha1($password);

        //cek database
        $this->db->where('username', $username);
		$this->db->where('password', $password);
        $q = $this->db->get('admin');
        $cekadmin = $q->row_array();

        //jika tidak kosong maka ada
        if (!empty($cekadmin)) {
            //membuat tiket login yang dipakae selama login
            $this->session->set_userdata("id_admin", $cekadmin["id_admin"]);
            $this->session->set_userdata("username", $cekadmin["username"]);
            $this->session->set_userdata("nama", $cekadmin["nama"]);
            return "ada";
        }else {
            return "tidak ada";
        }
    }
    
    
    function ubah($inputan, $id_admin){
        //jika tidak kosong password, maka enkripsi
        if (!empty($inputan["password"])) {
            $inputan['password'] = sha1($inputan['password']);
        }else {
            unset($inputan['password']);
        }

        $this->db->where('id_admin', $id_admin);
		$this->db->update('admin', $inputan);

        //karena akun admin diubah, jadi tiket login juga harus membuat baru

        //dapatkan dulu data akun admin yang baru
        $this->db->where('id_admin', $id_admin);
        $q = $this->db->get('admin');
        $cekadmin = $q->row_array();

        //membuat tiket baru dengan data yang baru
        $this->session->set_userdata("id_admin", $cekadmin["id_admin"]);
        $this->session->set_userdata("username", $cekadmin["username"]);
        $this->session->set_userdata("nama", $cekadmin["nama"]);
    }
}