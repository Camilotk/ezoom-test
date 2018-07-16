<?php
class Usuario_banco extends CI_Model {

    public function cadastraEndereco ($endereco) {
        $this->db->insert("endereco", $endereco);
    }

    public function rtrIndiceEndereco ($rua_bairro) {
        $this->db->where($rua_bairro);
        $resultado = $this->db->get("endereco")->row_array();
        return $resultado["id_endereco\\"];
    }

    public function cadastraUsuario ($usuario) {
        $this->db->insert("estudante", $usuario);
    }

    public function buscaUsuario ($email, $senha) {
        $this->db->where("email", $email);
        $this->db->where("senha", md5($senha));
        $usuario = $this->db->get("estudante")->row_array();
        return $usuario;
    }
}