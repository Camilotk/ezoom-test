-- Adicionei aqui todo o código que usei na criação das tabelas

CREATE TABLE estado (
    uf char(2) PRIMARY KEY NOT null,
    nome varchar(50)
) CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE cidade (
    cod_cidade integer PRIMARY KEY AUTO_INCREMENT NOT null,
    nome varchar(50),
    uf char(2),
    FOREIGN KEY (uf) REFERENCES estado(uf)
) CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE endereco (
    id_endereco integer AUTO_INCREMENT PRIMARY KEY NOT null,
    rua_bairro varchar(255),
    telefone char(9),
    cod_cidade int,
    FOREIGN KEY (cod_cidade) REFERENCES cidade(cod_cidade)
) CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE estudante (
    matricula integer PRIMARY KEY NOT null,
    nome varchar(25),
    sobrenome varchar(25),
    rg varchar(9),
    data_nascimento date,
    sexo enum('M', 'F'),
    id_endereco integer,
    FOREIGN KEY (id_endereco) REFERENCES endereco(id_endereco)
) CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE funcionario (
    matricula integer PRIMARY KEY NOT null,
    nome varchar(25),
    sobrenome varchar(25),
    rg varchar(9),
    data_nascimento date,
    sexo enum('M', 'F'),
    id_endereco integer,
    FOREIGN KEY (id_endereco) REFERENCES endereco(id_endereco)
) CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE curso (
    id_curso integer AUTO_INCREMENT PRIMARY KEY NOT null,
    nome varchar(150),
    descricao text,
    horas integer
) CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE turma (
    id_turma integer AUTO_INCREMENT PRIMARY KEY NOT null,
    ano varchar(4),
    nota float,
    id_curso integer,
    id_professor integer,
    id_aluno integer,
    FOREIGN KEY (id_curso) REFERENCES curso(id_curso),
    FOREIGN KEY (id_professor) REFERENCES funcionario(matricula),
    FOREIGN KEY (id_aluno) REFERENCES estudante(matricula)
) CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE escola (
    id_escola integer AUTO_INCREMENT PRIMARY KEY NOT null,
    cod_cidade integer,
    FOREIGN KEY (cod_cidade) REFERENCES cidade(cod_cidade)
) CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE departamento (
    cod_departamento integer AUTO_INCREMENT PRIMARY KEY NOT null,
    matricula_chefe integer,
    cod_escola integer,
    nome varchar(50),
    sala integer,
    ramal varchar(4),
    FOREIGN KEY (matricula_chefe) REFERENCES funcionario(matricula),
    FOREIGN KEY (cod_escola) REFERENCES escola(id_escola)
) CHARACTER SET utf8 COLLATE utf8_general_ci;

-- tive que editar um pouco, pois o MySQL reclamou de chave composta
CREATE TABLE vinculo (
    id int primary key auto_increment not null,
    cod_funcionario integer,
    cod_departamento integer,
    FOREIGN KEY (cod_funcionario) REFERENCES funcionario(matricula),
    FOREIGN KEY (cod_departamento) REFERENCES departamento(cod_departamento)
) CHARACTER SET utf8 COLLATE utf8_general_ci;

-- esqueci de por email e senha
ALTER TABLE `estudante`  ADD `email` VARCHAR(100) NOT NULL  AFTER `id_endereco`,  ADD `senha` VARCHAR(255) NOT NULL  AFTER `email`;
ALTER TABLE `funcionario`  ADD `email` VARCHAR(100) NOT NULL  AFTER `id_endereco`,  ADD `senha` VARCHAR(255) NOT NULL  AFTER `email`;
