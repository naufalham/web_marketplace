<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
	function index(){


		$this->load->view("header");
		$this->load->view("home");
		$this->load->view("footer");
	}
}
