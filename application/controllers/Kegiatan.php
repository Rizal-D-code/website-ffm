<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Kegiatan extends CI_Controller {

	var $table = 'kegiatan';
	var $id = 'id';
	var $select = ['*'];
	var $column_order = ['', 'name', 'photo'];
	var $column_search = ['name', 'photo'];
	
	public function __construct()
	{
		parent::__construct();
		is_login();
		$this->load->model('menu_model', 'menu');
		$this->load->model('my_model', 'my');
		$this->load->model('kegiatan_model', 'kegiatan');
	}
	
	public function index()
	{
		$data['title'] 	 = 'Kegiatan Mahasiswa';
      $data['page'] 		 = 'kegiatan/index';
		$data['datatable'] = 'kegiatan/index-datatable';
		
      $this->load->view('back/layouts/main', $data);
	}

	public function ajax_list()
   {
      $list = $this->my->get_datatables();
		$data = [];
		$no = 1;
      foreach($list as $li){
			$row = [];
			$row[] = $no++;
			$row[] = $li->name;

			if($li->photo){
            $row[] = '<a href="' . base_url('img/kegiatan/' . $li->photo).'" target="_blank"><img src="'.base_url('img/kegiatan/' . $li->photo) . '" class="img-responsive" style="max-height:150px; max-width:400px;"/></a>';
         }else{
            $row[] = '(No photo)';
			}

         $row[] = 
         '<a class="btn btn-sm btn-warning text-white" href="'.base_url("kegiatan/edit/$li->id").'" 
         title="Edit">
			<i class="fa fa-pencil-alt"></i></a>

			<a class="btn btn-sm btn-danger" href="#" 
			title="Delete" onclick="delete_fasilitas('."'".$li->id."'".')">
			<i class="fa fa-trash"></i></a>';
         $data[] = $row;
      }

      $output = [
         'draw'            => $_POST['draw'],
         'recordsTotal'    => $this->my->count_all(),
         'recordsFiltered' => $this->my->count_filtered(),
         'data'            => $data
      ];

      echo json_encode($output);
	}

	public function add()
	{
		if(!$_POST){
			$input = (object) $this->kegiatan->getDefaultValues();
		}else{
			$input = (object) $this->input->post(null, true);
		}

		$this->form_validation->set_rules('name', 'Nama','required',[
			'required' => 'Nama Kegiatan tidak boleh kosong!'
			]
		);

		if($this->form_validation->run() == false){
			$data['title'] 		= 'Tambah Kegiatan';
			$data['page']			= 'kegiatan/form';
			$data['form_action'] = base_url("kegiatan/add");
			$data['input'] 		= $input;
			$this->load->view('back/layouts/main', $data);
		}else{
			
			$data = [
				'name' => $this->input->post('name', true),
			];

			if(!empty($_FILES['photo']['name'])){
				$imageName = url_title($data['name'], '-', true) . '-' . date('YmdHis');
				$upload = $this->kegiatan->uploadImage($imageName);
				$data['photo'] = $upload;
			}
			
			$this->kegiatan->insert($data);
			$this->session->set_flashdata('success', 'Kegiatan Berhasil Ditambahkan.');

			redirect(base_url('kegiatan'));
		}
	}

	public function edit($id)
	{
		if(!$_POST){
			$input = (object) $this->kegiatan->getDataById($id);
		}else{
			$input = (object) $this->input->post(null, true);
		}

		$this->form_validation->set_rules('name', 'Nama','required',[
			'required' => 'Nama Kegiatan tidak boleh kosong!'
			]
		);

		if($this->form_validation->run() == false){
			$data['title']			= 'Ubah Kegiatan';
			$data['page']			= '#';
			$data['input']			= $input;
			$data['form_action']	= base_url('kegiatan/edit/' . $id);
			
			$this->load->view('back/layouts/main', $data);
		}else{
			$data = [
				'name' => $this->input->post('name', true),
			];

			if(!empty($_FILES['photo']['name'])){
				$imageName = url_title($data['name'], '-', true) . '-' . date('YmdHis');
				$upload = $this->kegiatan->uploadImage($imageName);

				if($upload){
					$kegiatan = $this->kegiatan->getDataById($id);

					if(file_exists('img/kegiatan/' . $kegiatan->photo) && $kegiatan->photo){
						unlink('img/kegiatan/' . $kegiatan->photo);
					}
					
					$data['photo'] = $upload;
				}else{
					redirect(base_url("kegiatan/edit/$id"));
				}
			}

			$this->kegiatan->update($id, $data);
			$this->session->set_flashdata('success', 'Kegiatan Berhasil Diupdate.');

			redirect(base_url('kegiatan'));
		}
	}

	public function delete()
	{
		$id = $this->input->post('id', true);
		$kegiatan = $this->kegiatan->getDataById($id);

		if(file_exists('img/kegiatan/' . $kegiatan->photo) && $kegiatan->photo){
			unlink('img/kegiatan/' . $kegiatan->photo);
		}

		$this->kegiatan->delete($id);
		echo json_encode(["status" => TRUE]);
	}
}
