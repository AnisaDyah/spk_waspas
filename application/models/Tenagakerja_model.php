<?php
    
    defined('BASEPATH') OR exit('No direct script access allowed');
    
    class Tenagakerja_model extends CI_Model {

        public function list()
        {
            $query = $this->db->get('data_naker');
            return $query->result();
        }

        public function getTotal()
        {
            return $this->db->count_all('data_naker');
        }

        public function insert($data = [])
        {
            $result = $this->db->insert('data_naker', $data);
            return $result;
        }

        public function show($id_naker)
        {
            $this->db->where('id_naker', $id_naker);
            $query = $this->db->get('data_naker');
            return $query->row();
        }

        public function update($id_naker, $data = [])
        {
            $ubah = array(
                'nama'  => $data['nama'],
                'jabatan'  => $data['jabatan'],
                'status'  => $data['status'],
            );

            $this->db->where('id_naker', $id_naker);
            $this->db->update('data_naker', $ubah);
        }


        public function delete($id_naker)
        {
            $this->db->where('id_naker', $id_naker);
            $this->db->delete('data_naker');
        }

       

        
    }
    
    /* End of file Kategori_model.php */
    