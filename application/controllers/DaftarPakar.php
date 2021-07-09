<?php
class DaftarPakar extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->db_dp = $this->load->database('dp', TRUE);
    }

    public function index()
    {
        $data['title'] = "Daftar Pakar";
        $data['pakar'] = $this->db_dp->get('pakar')->result_array();
        $this->load->view('templates/header', $data);
        $this->load->view('templates/navbar');
        $this->load->view('daftarpakar');
        $this->load->view('templates/footer');
    }
}
