-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 16-Jul-2018 às 09:09
-- Versão do servidor: 5.7.22-0ubuntu18.04.1
-- PHP Version: 7.2.7-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `glsnt_school`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidade`
--

CREATE TABLE `cidade` (
  `cod_cidade` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cidade`
--

INSERT INTO `cidade` (`cod_cidade`, `nome`, `uf`) VALUES
(1, 'Caxias do Sul', 'rs'),
(2, 'São Paulo', 'sp');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `id_curso` int(11) NOT NULL,
  `nome_curso` varchar(150) DEFAULT NULL,
  `descricao` text,
  `horas` int(11) DEFAULT NULL,
  `id_professor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`id_curso`, `nome_curso`, `descricao`, `horas`, `id_professor`) VALUES
(5, 'Criatividade e Arte de Rua', 'Ensina como a arte urbana pode mudar o mundo', 12, 856321),
(6, 'Curso de Desenho Japones em HTML', 'Esperava por isso? Não? Nem eu!', 24, NULL),
(13, 'Kaioken SSJ 4', 'Aprender a técnica mais poderosa do Goku, usada para derrotar os mais fortes vilões', 60, 167332);

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamento`
--

CREATE TABLE `departamento` (
  `cod_departamento` int(11) NOT NULL,
  `matricula_chefe` int(11) DEFAULT NULL,
  `cod_escola` int(11) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `sala` int(11) DEFAULT NULL,
  `ramal` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `departamento`
--

INSERT INTO `departamento` (`cod_departamento`, `matricula_chefe`, `cod_escola`, `nome`, `sala`, `ramal`) VALUES
(1, 856321, 1, 'ensino', 2, '1004'),
(2, 856321, 1, 'almoxarifado', 25, '8955');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `id_endereco` int(11) NOT NULL,
  `rua_bairro` varchar(255) DEFAULT NULL,
  `telefone` char(9) DEFAULT NULL,
  `cod_cidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`id_endereco`, `rua_bairro`, `telefone`, `cod_cidade`) VALUES
(1, 'Rua dos Bobos N 0', '997159734', 2),
(2, 'Rua Paraisópolis Bairro do Alemão N 20', '778599645', 1),
(3, 'Rua 7 de Setembro, 1820, ', '997159704', 1),
(4, 'Céu do DBZ, planeta a dir', '997159704', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `escola`
--

CREATE TABLE `escola` (
  `id_escola` int(11) NOT NULL,
  `cod_cidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `escola`
--

INSERT INTO `escola` (`id_escola`, `cod_cidade`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado`
--

CREATE TABLE `estado` (
  `uf` char(2) NOT NULL,
  `nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estado`
--

INSERT INTO `estado` (`uf`, `nome`) VALUES
('rs', 'Rio Grande do Sul'),
('sp', 'São Paulo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estudante`
--

CREATE TABLE `estudante` (
  `matricula` int(11) NOT NULL,
  `nome` varchar(25) DEFAULT NULL,
  `sobrenome` varchar(25) DEFAULT NULL,
  `rg` varchar(9) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `id_endereco` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estudante`
--

INSERT INTO `estudante` (`matricula`, `nome`, `sobrenome`, `rg`, `data_nascimento`, `sexo`, `id_endereco`, `email`, `senha`) VALUES
(16933, 'Canarinho', 'Pistola', '000000000', '2018-07-07', 'M', 3, 'canarinho.pistola@selecao.br', 'ea97aa85b07611982dc5ef19ee9bb356'),
(333666, 'Luka', 'Modric', '654189327', '1987-02-11', 'M', 1, 'modric@croacia.com', '0c82bb46208f6e8f8141f83d738402e5'),
(555062, 'Dwayne', 'Johnson', '987641253', '1973-09-08', 'M', 2, 't.rock@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `matricula` int(11) NOT NULL,
  `nome` varchar(25) DEFAULT NULL,
  `sobrenome` varchar(25) DEFAULT NULL,
  `rg` varchar(9) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `id_endereco` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`matricula`, `nome`, `sobrenome`, `rg`, `data_nascimento`, `sexo`, `id_endereco`, `email`, `senha`) VALUES
(167332, 'Mestre', 'Kaioh', '000000001', '2018-07-18', 'M', 4, 'mestre@kaioh.galaxy', '1c68a5828949d8d0ea79fe832705e16e'),
(745852, 'Dennis', 'Ritchie', '896256147', '1950-12-05', 'M', 1, 'write.in@belllabs.com', '01cfcd4f6b8770febfb40cb906715822'),
(856321, 'Elon', 'Musk', '987455221', '1988-06-04', 'M', 2, 'elon.musk@tesla.com', 'bc250e0d83c37b0953ada14e7bbc1dfd');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vinculo`
--

CREATE TABLE `vinculo` (
  `id` int(11) NOT NULL,
  `cod_funcionario` int(11) DEFAULT NULL,
  `cod_departamento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `vinculo`
--

INSERT INTO `vinculo` (`id`, `cod_funcionario`, `cod_departamento`) VALUES
(1, 745852, 2),
(2, 856321, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`cod_cidade`),
  ADD KEY `uf` (`uf`);

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id_curso`),
  ADD KEY `id_professor` (`id_professor`);

--
-- Indexes for table `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`cod_departamento`),
  ADD KEY `matricula_chefe` (`matricula_chefe`),
  ADD KEY `cod_escola` (`cod_escola`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`id_endereco`),
  ADD KEY `cod_cidade` (`cod_cidade`);

--
-- Indexes for table `escola`
--
ALTER TABLE `escola`
  ADD PRIMARY KEY (`id_escola`),
  ADD KEY `cod_cidade` (`cod_cidade`);

--
-- Indexes for table `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`uf`);

--
-- Indexes for table `estudante`
--
ALTER TABLE `estudante`
  ADD PRIMARY KEY (`matricula`),
  ADD KEY `id_endereco` (`id_endereco`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`matricula`),
  ADD KEY `id_endereco` (`id_endereco`);

--
-- Indexes for table `vinculo`
--
ALTER TABLE `vinculo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cod_funcionario` (`cod_funcionario`),
  ADD KEY `cod_departamento` (`cod_departamento`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cidade`
--
ALTER TABLE `cidade`
  MODIFY `cod_cidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `curso`
--
ALTER TABLE `curso`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `departamento`
--
ALTER TABLE `departamento`
  MODIFY `cod_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `endereco`
--
ALTER TABLE `endereco`
  MODIFY `id_endereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `escola`
--
ALTER TABLE `escola`
  MODIFY `id_escola` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `vinculo`
--
ALTER TABLE `vinculo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `cidade`
--
ALTER TABLE `cidade`
  ADD CONSTRAINT `cidade_ibfk_1` FOREIGN KEY (`uf`) REFERENCES `estado` (`uf`);

--
-- Limitadores para a tabela `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`id_professor`) REFERENCES `funcionario` (`matricula`);

--
-- Limitadores para a tabela `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`matricula_chefe`) REFERENCES `funcionario` (`matricula`),
  ADD CONSTRAINT `departamento_ibfk_2` FOREIGN KEY (`cod_escola`) REFERENCES `escola` (`id_escola`);

--
-- Limitadores para a tabela `endereco`
--
ALTER TABLE `endereco`
  ADD CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`cod_cidade`) REFERENCES `cidade` (`cod_cidade`);

--
-- Limitadores para a tabela `escola`
--
ALTER TABLE `escola`
  ADD CONSTRAINT `escola_ibfk_1` FOREIGN KEY (`cod_cidade`) REFERENCES `cidade` (`cod_cidade`);

--
-- Limitadores para a tabela `estudante`
--
ALTER TABLE `estudante`
  ADD CONSTRAINT `estudante_ibfk_1` FOREIGN KEY (`id_endereco`) REFERENCES `endereco` (`id_endereco`);

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`id_endereco`) REFERENCES `endereco` (`id_endereco`);

--
-- Limitadores para a tabela `vinculo`
--
ALTER TABLE `vinculo`
  ADD CONSTRAINT `vinculo_ibfk_1` FOREIGN KEY (`cod_funcionario`) REFERENCES `funcionario` (`matricula`),
  ADD CONSTRAINT `vinculo_ibfk_2` FOREIGN KEY (`cod_departamento`) REFERENCES `departamento` (`cod_departamento`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
