<?php
class Usuario_banco extends CI_Model {

    public function cadastraEndereco ($endereco) {
        $this->db->insert("endereco", $endereco);
    }

    public function rtrIndiceEndereco ($rua_bairro) {
        $this->db->where($rua_bairro);
        $resultado = $this->db->get("endereco")->row_array();
        return $resultado["id_endereco"];
    }

    public function cadastraEstudante ($usuario) {
        $this->db->insert("estudante", $usuario);
    }

    public function cadastraProfessor ($usuario) {
        $this->db->insert("funcionario", $usuario);
    }

    public function buscaUsuario ($email, $senha) {
        $this->db->where("email", $email);
        $this->db->where("senha", md5($senha));
        $usuario = $this->db->get("estudante")->row_array();
        return $usuario;
    }

    public function buscaTodosProfessores(){
        $this->db->select("nome");
        $this->db->select("sobrenome");
        $this->db->select("matricula");
        return $this->db->get("funcionario")->result_array();
    }


}