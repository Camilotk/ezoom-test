<?php
class Curso_banco extends CI_Model {
    public function buscaTodos(){

        $this->db->select('*');
        $this->db->from('curso');
        $this->db->join('funcionario', 'funcionario.matricula = curso.id_professor');
        
        //$this->db->get("curso")->result_array();
        return $this->db->get()->result_array();
    }

    public function insereCurso($curso) {
        $this->db->insert("curso", $curso);
    }

    public function deletaCurso($id) {
        $this->db->delete("curso", array("id_curso" => $id));
    }

    public function encontraCurso($id) {
        $this->db->where(array("id_curso" => $id));
        $resultado = $this->db->get("curso")->row_array();
        return $resultado;
    }

    public function alteraCurso($curso, $id) {
        $this->db->where("id_curso", $id);
        $this->db->update("curso", $curso);
    }
}