-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql300.infinityfree.com
-- Tempo de geração: 16-Abr-2026 às 09:11
-- Versão do servidor: 11.4.10-MariaDB
-- versão do PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `if0_40156192_prova`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamentos`
--

CREATE TABLE `equipamentos` (
  `id_equipamento` int(11) NOT NULL,
  `tipo` enum('router','switch','access point','outro') NOT NULL,
  `marca` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `endereco_ip` varchar(15) NOT NULL,
  `id_sala` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `equipamentos`
--

INSERT INTO `equipamentos` (`id_equipamento`, `tipo`, `marca`, `modelo`, `endereco_ip`, `id_sala`) VALUES
(1, 'router', 'Cisco', 'ISR 4331', '192.168.1.1', 1),
(2, 'switch', 'HP', 'Aruba 2930F', '192.168.1.2', 1),
(3, 'access point', 'Ubiquiti', 'UniFi AC Pro', '192.168.1.10', 2),
(4, 'switch', 'TP-Link', 'TL-SG1024', '192.168.2.1', 3),
(5, 'outro', 'Synology', 'DS920+', '192.168.2.10', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `intervencoes`
--

CREATE TABLE `intervencoes` (
  `id_intervencao` int(11) NOT NULL,
  `data_intervencao` date NOT NULL,
  `descricao` text NOT NULL,
  `id_equipamento` int(11) DEFAULT NULL,
  `id_tecnico` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `intervencoes`
--

INSERT INTO `intervencoes` (`id_intervencao`, `data_intervencao`, `descricao`, `id_equipamento`, `id_tecnico`) VALUES
(1, '2024-01-15', 'Configuração inicial do router', 1, 1),
(2, '2024-02-10', 'Atualização de firmware do switch HP', 2, 2),
(3, '2024-03-05', 'Substituição de cabo de rede no AP', 3, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `salas`
--

CREATE TABLE `salas` (
  `id_sala` int(11) NOT NULL,
  `nome_sala` varchar(50) NOT NULL,
  `localizacao` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `salas`
--

INSERT INTO `salas` (`id_sala`, `nome_sala`, `localizacao`) VALUES
(1, 'Sala 101', 'Bloco A, Piso 1'),
(2, 'Sala 202', 'Bloco B, Piso 2'),
(3, 'Laboratório de Informática', 'Bloco C, Piso 0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tecnicos`
--

CREATE TABLE `tecnicos` (
  `id_tecnico` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contacto` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `tecnicos`
--

INSERT INTO `tecnicos` (`id_tecnico`, `nome`, `email`, `contacto`) VALUES
(1, 'João Silva', 'joao.silva@escola.pt', '912345678'),
(2, 'Maria Santos', 'maria.santos@escola.pt', '923456789'),
(3, 'Carlos Oliveira', 'carlos.oliveira@escola.pt', '934567890');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `equipamentos`
--
ALTER TABLE `equipamentos`
  ADD PRIMARY KEY (`id_equipamento`),
  ADD KEY `id_sala` (`id_sala`);

--
-- Índices para tabela `intervencoes`
--
ALTER TABLE `intervencoes`
  ADD PRIMARY KEY (`id_intervencao`),
  ADD KEY `id_equipamento` (`id_equipamento`),
  ADD KEY `id_tecnico` (`id_tecnico`);

--
-- Índices para tabela `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`id_sala`);

--
-- Índices para tabela `tecnicos`
--
ALTER TABLE `tecnicos`
  ADD PRIMARY KEY (`id_tecnico`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `equipamentos`
--
ALTER TABLE `equipamentos`
  MODIFY `id_equipamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `intervencoes`
--
ALTER TABLE `intervencoes`
  MODIFY `id_intervencao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `salas`
--
ALTER TABLE `salas`
  MODIFY `id_sala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tecnicos`
--
ALTER TABLE `tecnicos`
  MODIFY `id_tecnico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
