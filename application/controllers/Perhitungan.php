<?php
    
    defined('BASEPATH') OR exit('No direct script access allowed');
    
    class Perhitungan extends CI_Controller {
    
        public function __construct()
        {
            parent::__construct();
            $this->load->helper('url', 'form');
            $this->load->library('pagination');
            $this->load->library('form_validation');
            $this->load->model('Perhitungan_model');

            // if($this->session->privilege != 'Administrator')
            // {
            //     redirect('home');
            // }
        }

        public function index()
        {
            $data = [
                'list' => $this->Perhitungan_model->list(),
                'kriteria'=> $this->Perhitungan_model->get_kriteria(),
                'tenaga_kerja'=> $this->Perhitungan_model->get_naker(),
                'sub_kriteria'=> $this->Perhitungan_model->get_sub_kriteria(),
                'perhitungan' => $this->Perhitungan_model->list(),
                
            ];
            // $tenaga_kerja=$this->Perhitungan_model->get_naker();
            // echo var_dump($tenaga_kerja);
            $this->load->view('Perhitungan/perhitungan', $data);
        }
        
  
        public function tambah_penilaian()
        {
            
            $id_user = $this->session->userdata('id_user');
            $id_naker = $this->input->post('id_naker');
            $id_kriteria = $this->input->post('id_kriteria');
            $nilai = $this->input->post('nilai');
            $i = 0;
            echo var_dump($nilai);
            foreach ($nilai as $key) {
                $this->Perhitungan_model->tambah_penilaian($id_user,$id_naker,$id_kriteria[$i],$key);
                $i++;
            }
            redirect('perhitungan');
        }

        

        public function update_penilaian()
	{
		$id_user = $this->session->userdata('id_user');
		$id_naker = $this->input->post('id_naker');
		$id_kriteria = $this->input->post('id_kriteria');
		$nilai = $this->input->post('nilai');
		$i = 0;

		foreach ($nilai as $key) {
			$cek = $this->Perhitungan_model->data_penilaian($id_user,$id_naker,$id_kriteria[$i]);
			if ($cek==0) {
				$this->Perhitungan_model->tambah_penilaian($id_user,$id_naker,$id_kriteria[$i],$key);
			} else {
				$this->Perhitungan_model->edit_penilaian($id_user,$id_naker,$id_kriteria[$i],$key);	
			}
			$i++;
		}

		redirect('perhitungan');
	}

    
        public function destroy($id_penilaian)
        {
            $this->Perhitungan_model->delete($id_penilaian);
            helper_log("delete", "menghapus data Perhitungan");
            redirect('Perhitungan');
        }
    
    }
    
    /* End of file Kategori.php */
    