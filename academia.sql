-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Mar-2023 às 00:21
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `academia`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `telefone` varchar(14) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `turma` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `login` varchar(100) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `nivel` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`login`, `senha`, `email`, `nome`, `nivel`) VALUES
('adm', '$2y$10$0FGZDOs5qx/ZI74qh5YgHu6IynyanVJf4EO5kdwRNK5EaW8tLiV3y', 'adm@gmail.com', 'adm', 'adm'),
('adm2', '$2y$10$THGz.AHUGP2O6A4j44Htc.qqjfC54wNxisIedj1NTBDey.PFpxveW', 'adm2@gmail.com', 'adm2', 'usu'),
('adm3', '$2y$10$UtBGSHwMefQZxJ0.XxbTAuAHQ1OAGcU2zwpTfHprDPqS6EbiMRn8C', 'adm3@gmail.com', 'adm3', 'usu'),
('adm4', '$2y$10$EpOfRxv67ZFMMxpzgP4z5u8E0S8uRmZ3WVIGZqfvL1B74Xc.E5jQu', 'adm4@gmail.com', 'adm4', 'usu'),
('adm5', '$2y$10$1vDvqC6JdHDg28aMCk6Ay.Mc9seamJL/ad2zdlE44Lnp8Srlt9JsK', 'adm5@gmail.com', 'adm45', 'usu');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`login`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
