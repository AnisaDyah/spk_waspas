<?php
    
    defined('BASEPATH') OR exit('No direct script access allowed');
    
    class Perhitungan_model extends CI_Model {

        public function list()
        {
            $query = $this->db->get('penilaian');
            return $query->result();
        }

      
        public function tambah_penilaian($id_user,$id_naker,$id_kriteria,$nilai)
        {
            $query = $this->db->simple_query("INSERT INTO penilaian VALUES (DEFAULT,'$id_user','$id_naker','$id_kriteria',$nilai);");
            return $query;	
        }

      

       
        public function edit_penilaian($id_user,$id_naker,$id_kriteria,$nilai)
        {
            $query = $this->db->simple_query("UPDATE penilaian SET nilai=$nilai WHERE id_user='$id_user' AND id_naker='$id_naker' AND id_kriteria='$id_kriteria';");
            return $query;	
        }


        public function delete($id_penilaian)
        {
            $this->db->where('id_penilaian', $id_penilaian);
            $this->db->delete('penilaian');
        }

       
        public function get_kriteria()
        {
            $query = $this->db->get('kriteria');
            return $query->result();
        }
        public function get_naker()
        {
            $query = $this->db->get('data_naker');
            return $query->result();
        }
        public function get_sub_kriteria()
        {
            $query = $this->db->get('sub_kriteria');
            return $query->result();
        }
        public function cek_data_penilaian($id_user)
        {
            $query = $this->db->query("SELECT * FROM penilaian WHERE id_user='$id_user';");
            return $query->row_array();
        }

        public function data_penilaian($id_user,$id_naker,$id_kriteria)
        {
            $query = $this->db->query("SELECT * FROM penilaian WHERE  id_user='$id_user' AND id_naker='$id_naker' AND id_kriteria='$id_kriteria';");
            return $query->row_array();
        }
        public function untuk_tombol($id_user,$id_naker)
	{
		$query = $this->db->query("SELECT * FROM penilaian WHERE id_user='$id_user' AND id_naker='$id_naker';");
		return $query->num_rows();
    }
    public function data_sub_kriteria($id_kriteria)
	{
		$query = $this->db->query("SELECT * FROM sub_kriteria WHERE id_kriteria='$id_kriteria' ORDER BY nilai DESC;");
		return $query->result_array();
    }
    public function data_nilai($id_user,$id_naker,$id_kriteria)
	{
		$query = $this->db->query("SELECT * FROM penilaian JOIN sub_kriteria WHERE penilaian.nilai=sub_kriteria.id_sub_kriteria AND penilaian.id_user='$id_user'  AND penilaian.id_naker='$id_naker' AND penilaian.id_kriteria='$id_kriteria';");
		return $query->row_array();
	}
    

       

        
    }
    
    /* End of file Kategori_model.php */
    