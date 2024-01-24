-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/01/2024 às 15:30
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdweb`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `filme_serie`
--

CREATE TABLE `filme_serie` (
  `id_filme` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `poster` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `filme_serie`
--

INSERT INTO `filme_serie` (`id_filme`, `titulo`, `poster`) VALUES
(1, 'Godzilla Minus One', 'https://i.imgur.com/9C3KKVQ.png'),
(2, 'Dungeons & Dragons: Honra entre Rebeldes', 'link 2'),
(3, 'Breaking Bad', 'link 3'),
(4, 'The Boys', 'link 4'),
(5, 'Oppenheimer', 'link 5'),
(6, 'One Piece Film: Red', 'link 6'),
(7, 'Game of Thrones', 'link 7'),
(8, 'Samurai dos Olhos Azuis', 'link 8');

-- --------------------------------------------------------

--
-- Estrutura para tabela `review`
--

CREATE TABLE `review` (
  `id_review` int(11) NOT NULL,
  `filme_serie_id` int(11) NOT NULL,
  `gostei` tinyint(1) NOT NULL,
  `naogostei` tinyint(1) NOT NULL,
  `nota` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `filme_serie`
--
ALTER TABLE `filme_serie`
  ADD PRIMARY KEY (`id_filme`);

--
-- Índices de tabela `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id_review`),
  ADD KEY `filme_serie_id` (`filme_serie_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `filme_serie`
--
ALTER TABLE `filme_serie`
  MODIFY `id_filme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `review`
--
ALTER TABLE `review`
  MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `filme_serie_id` FOREIGN KEY (`filme_serie_id`) REFERENCES `filme_serie` (`id_filme`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
