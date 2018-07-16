<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Curso extends CI_Controller {
    public function lista() {
        $this->load->model("curso_banco");
        $cursos = $this->curso_banco->buscaTodos();
        $data = array("cursos" => $cursos);
        $this->load->view("headers/cabecalho");
        $this->load->view("paginas/cursos", $data);
        $this->load->view("headers/rodape");
    }
}