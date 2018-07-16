<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
    public function formulario_cadastro() {
        $this->load->helper("form");
        $this->load->view("headers/cabecalho");
        $this->load->view("formularios/cadastro");
        $this->load->view("headers/rodape");
    }

    public function formulario_login() {
        $this->load->helper("form");
        $this->load->view("headers/cabecalho");
        $this->load->view("formularios/login");
        $this->load->view("headers/rodape");
    }

    public function registrar() {
        $this->load->model("usuario_banco");

        $endereco = array(
            "rua_bairro" => $this->input->post("endereco"),
            "telefone" => $this->input->post("telefone"),
            "cod_cidade" => $this->input->post("select") + 1
        );

        $id_endereco = $this->usuario_banco->rtrIndiceEndereco($endereco);

        $usuario = array(
            "matricula" => rand(10,999999),
            "nome" => $this->input->post("nome"),
            "sobrenome" => $this->input->post("sobrenome"),
            "rg" => $this->input->post("rg"),
            "data_nascimento" => $this->input->post("dt"),
            "sexo" => $this->input->post("sex"),
            "id_endereco" => $id_endereco,
            "email" => $this->input->post("email"),
            "senha" => md5($this->input->post("senha"))
        );

        $this->usuario_banco->cadastraEndereco($endereco);
        $this->usuario_banco->cadastraUsuario($usuario);
        $this->load->view("teste");
    }

    public function logar() {
        $this->load->view("teste");
    }
}