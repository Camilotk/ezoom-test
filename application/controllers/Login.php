<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
    public function formulario_cadastro() {
        $this->load->helper('url');
        $this->load->helper("form");
        $this->load->view("headers/cabecalho");
        $this->load->view("formularios/cadastro");
        $this->load->view("headers/rodape");
    }
}