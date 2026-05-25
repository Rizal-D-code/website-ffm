<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Kemahasiswaan extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		$this->load->model('kegiatan_model', 'kegiatan');
	}
	
	public function pelayanan()
	{
		$data['title']		= 'Pelayanan';
		$data['page']		= 'kemahasiswaan/pelayanan';

		$this->load->view('front/layouts/main', $data);
	}

	public function kegiatan()
	{
		$data['title']		= 'Kegiatan';
		$data['page']		= 'kemahasiswaan/kegiatan';
		$data['kegiatan'] = $this->kegiatan->getAllKegiatan();

		$this->load->view('front/layouts/main', $data);
	}

}