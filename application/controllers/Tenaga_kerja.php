<?php
    
    defined('BASEPATH') OR exit('No direct script access allowed');
    
    class Tenaga_kerja extends CI_Controller {
    
        public function __construct()
        {
            parent::__construct();
            $this->load->helper('url', 'form');
            $this->load->library('pagination');
            $this->load->library('form_validation');
            $this->load->model('Tenagakerja_model');

            // if($this->session->privilege != 'Administrator')
            // {
            //     redirect('home');
            // }
        }

        public function index()
        {
            $data = [
                'list' => $this->Tenagakerja_model->list()
                
            ];
            $this->load->view('tenaga_kerja/index', $data);
        }
        
        //menampilkan view create
        public function create()
        {
     
            $this->load->view('tenaga_kerja/create');
        }

        //menambahkan data ke database
        public function store()
        {
                $data = [
                    'nama' => $this->input->post('nama'),
                    'jabatan' => $this->input->post('jabatan'),
                    'status' => $this->input->post('status')
                ];
                
                $this->form_validation->set_rules('nama', 'Nama', 'required');
                $this->form_validation->set_rules('jabatan', 'Jabatan', 'required');

                
    
                if ($this->form_validation->run() != false) {
                    $result = $this->Tenagakerja_model->insert($data);
                    helper_log("add", "menambahkan tenaga_kerja");
                    if ($result) {
                        redirect('tenaga_kerja');
                    }
                } else {
                    redirect('tenaga_kerja/create');
                    
                }
            

        }

        public function show($id_naker)
        {
            $tenaga_kerja = $this->Tenagakerja_model->show($id_naker);
            $data = [
                'data' => $tenaga_kerja
            ];
            $this->load->view('tenaga_kerja/show', $data);
        }

        public function edit($id_naker)
        {
            $tenaga_kerja = $this->Tenagakerja_model->show($id_naker);
            $data = [
                'tenaga_kerja' => $tenaga_kerja
            ];
            $this->load->view('tenaga_kerja/edit', $data);
        }
    
        public function update($id_naker)
        {
            // TODO: implementasi update data berdasarkan $id_naker
            $id_naker = $this->input->post('id_naker');
            $data = array(
                'nama' => $this->input->post('nama'),
                'jabatan' => $this->input->post('jabatan'),
                'status' => $this->input->post('status')
            );

            $this->Tenagakerja_model->update($id_naker, $data);
            helper_log("edit", "mengubah data tenaga_kerja");
            redirect('tenaga_kerja');
        }
    
        public function destroy($id_naker)
        {
            $this->Tenagakerja_model->delete($id_naker);
            helper_log("delete", "menghapus data tenaga_kerja");
            redirect('tenaga_kerja');
        }
    
    }
    
    /* End of file Kategori.php */
    