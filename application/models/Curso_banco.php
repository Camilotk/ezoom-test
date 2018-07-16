<?php
class Curso_banco extends CI_Model {
    public function buscaTodos(){
        return $this->db->get("curso")->result_array();
    }
}