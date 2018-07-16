-- Inserts padrão para teste [antes das alterações]

-- -------------------------------------------------
INSERT INTO estado VALUES('rs', 'Rio Grande do Sul');
INSERT INTO tabela VALUES('sp', 'São Paulo');
-- --------------------------------------------------------
INSERT INTO cidade (nome, uf) VALUES('Caxias do Sul', 'rs');
INSERT INTO cidade (nome, uf) VALUES('São Paulo', 'sp');
-- ---------------------------------------------------------
INSERT INTO 
    endereco (rua_bairro, telefone, cod_cidade) 
VALUES
    ('Rua dos Bobos N 0', '997159734', 2);
INSERT INTO 
    endereco (rua_bairro, telefone, cod_cidade) 
VALUES
    ('Rua Paraisópolis Bairro do Alemão N 20', '778599645', 1);
-- ------------------------------------------------------------
INSERT INTO 
	estudante 
VALUES(555062, 'Dwayne', 'Johnson', '987641253', '1973-09-08', 'M', 2, "t.rock@gmail.com", "827ccb0eea8a706c4c34a16891f84e7b");
INSERT INTO 
	estudante 
VALUES(333666, 'Luka', 'Modric', '654189327', '1987-02-11', 'M', 1, 'modric@croacia.com', '0c82bb46208f6e8f8141f83d738402e5');
-- -------------------------------------------------------------
INSERT INTO funcionario VALUES(856321, 'Elon', 'Musk', '987455221', '1988-06-04', 'M', 2, 'elon.musk@tesla.com', 'bc250e0d83c37b0953ada14e7bbc1dfd');
INSERT INTO funcionario VALUES(745852, 'Dennis', 'Ritchie', '896256147', '1950-12-05', 'M', 1, "write.in@belllabs.com", "01cfcd4f6b8770febfb40cb906715822");
-- -------------------------------------------------------------
INSERT INTO 
    curso (nome, descricao, horas) 
VALUES
    ('Arte com Circuitos Integrados', 'Ensina como criar circuitos artísticos', 89);
INSERT INTO 
    curso (nome, descricao, horas) 
VALUES
    ('Criatividade e Arte de Rua', 'Ensina como a arte urbana pode mudar o mundo', 12);
-- --------------------------------------------------------------
INSERT INTO turma (ano, nota, id_curso, id_professor, id_aluno) VALUES('2019', 0, 1, 856321, 333666);
INSERT INTO turma (ano, nota, id_curso, id_professor, id_aluno) VALUES('2016', 9.5, 2, 745852, 555062);
-- ---------------------------------------------------------------
INSERT INTO escola (cod_cidade) VALUES(1);
INSERT INTO escola (cod_cidade) VALUES(2);
-- ----------------------------------------------------------------
INSERT INTO departamento (matricula_chefe, cod_escola, nome, sala, ramal) VALUES(856321, 1, 'ensino', 2, '1004');
INSERT INTO departamento (matricula_chefe, cod_escola, nome, sala, ramal) VALUES(856321, 1, 'almoxarifado', 25, '8955');
-- ----------------------------------------------------------------
INSERT INTO vinculo (cod_funcionario, cod_departamento) VALUES(745852, 2);
INSERT INTO vinculo (cod_funcionario, cod_departamento) VALUES(856321, 1);