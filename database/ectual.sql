-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 20-Abr-2016 às 13:40
-- Versão do servidor: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ectual`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agente`
--

CREATE TABLE `agente` (
  `id_gerada` varchar(25) NOT NULL,
  `id_empresa` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int(3) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` varchar(25) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `status` int(3) NOT NULL,
  `id_imovel` varchar(25) NOT NULL,
  `data_cadastro` date NOT NULL,
  `id_fonte` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `corretor`
--

CREATE TABLE `corretor` (
  `id` varchar(25) NOT NULL,
  `creci` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

CREATE TABLE `empresa` (
  `id_empresa` varchar(25) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cnpj` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `id_gerada` varchar(25) NOT NULL,
  `estado` varchar(25) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `complemento` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fonte`
--

CREATE TABLE `fonte` (
  `numero` int(3) NOT NULL,
  `fonte` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `imovel`
--

CREATE TABLE `imovel` (
  `id_imovel` varchar(255) NOT NULL,
  `id_endereco` varchar(25) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `id_gerada` varchar(25) NOT NULL,
  `login` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pontos`
--

CREATE TABLE `pontos` (
  `creci` varchar(255) NOT NULL,
  `creditados` int(20) NOT NULL,
  `ultilizados` int(20) NOT NULL,
  `categoria` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `status`
--

CREATE TABLE `status` (
  `numero` int(3) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `id_gerada` varchar(14) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `nascimento` date NOT NULL,
  `CPF` varchar(12) NOT NULL,
  `data_cadastro` date NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `tipo` int(1) NOT NULL,
  `fisica_juridica` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabela responsavel por cadastrar todas as pessoas do sistema';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agente`
--
ALTER TABLE `agente`
  ADD PRIMARY KEY (`id_gerada`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`id_gerada`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_gerada`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
