-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 24-Jan-2022 às 02:14
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cineweb`
--

-- --------------------------------------------------------
CREATE DATABASE cineweb;
Use cineweb;
--
-- Estrutura da tabela `midia`
--

DROP TABLE IF EXISTS `midia`;
CREATE TABLE IF NOT EXISTS `midia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `ano` int(4) NOT NULL,
  `duracao` text,
  `foto` text,
  `sinopse` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `midia`
--

INSERT INTO `midia` (`id`, `titulo`, `ano`, `duracao`, `foto`, `sinopse`) VALUES
(1, 'Vingadores: Ultimato', 2019, '3h 2m', 'https://br.web.img3.acsta.net/pictures/19/04/26/17/30/2428965.jpg', 'Após Thanos eliminar metade das criaturas vivas, os Vingadores têm de lidar com a perda de amigos e entes queridos. Com Tony Stark vagando perdido no espaço sem água e comida, Steve Rogers e Natasha Romanov lideram a resistência contra o titã louco'),
(2, 'Deadpool', 2016, '1h 48m', 'https://img.elo7.com.br/product/zoom/1E3BBFE/big-poster-do-filme-deadpool-tamanho-90x-0-cm-loot-op-011-geek.jpg', 'Wade Wilson é um ex-agente especial que passou a trabalhar como mercenário. Seu mundo é destruído quando um cientista maligno o tortura e o desfigura completamente. O experimento brutal transforma Wade em Deadpool, que ganha poderes especiais de cura e uma força aprimorada.'),
(3, 'John Wick – De Volta ao Jogo', 2014, '1h 41m', 'https://br.web.img3.acsta.net/pictures/17/01/10/15/05/404753.jpg', 'John Wick é um lendário assassino de aluguel aposentado, lidando com o luto após perder o grande amor de sua vida. Quando um gângster invade sua casa, mata seu cachorro e rouba seu carro, ele é forçado a voltar à ativa e inicia sua vingança.'),
(4, 'Matrix Resurrections', 2021, '2h 28m', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcT16ev3TXRvd7fdq-hxMvVp4vhIsepwBQjuBRO5JelCGI_XGuF6', 'Da visionária realizadora Lana Wachowski chega-nos MATRIX RESURRECTIONS o tão aguardado 4º filme do inovador franchise que redefiniu o género. O novo filme reúne os protagonistas originais Keanu Reeves e Carrie-Anne Moss nos icónicos personagens que os tornaram famosos, Neo e Trinity.'),
(5, 'Homem de Ferro 3', 2013, '2h 10m', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTY8bAIbYn-nJxqXb_Eixa_zCEJIDWdm25oZ8UFnI51mcumTrIQ', 'Depois de um inimigo reduzir o mundo de Tony Stark a destroços, o Homem de Ferro precisa aprender a confiar em seus instintos para proteger aqueles que ama, especialmente sua namorada, e lutar contra seu maior medo: o fracasso.'),
(6, 'Homem-Aranha: Sem Volta para Casa', 2021, '2h 28m', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeoFKAlVEDJr4gWmlGzlK7k_fHAZ6J5riMiudyPt_rTk9YTpuO', 'O Homem-Aranha precisa lidar com as consequências da sua verdadeira identidade ter sido descoberta.'),
(7, 'Velozes & Furiosos: Hobbs & Shaw', 2019, '2h 16m', 'https://br.web.img3.acsta.net/pictures/19/07/05/17/41/1616389.jpg', 'O corpulento policial Luke Hobbs se junta ao fora da lei Deckard Shaw para combater um terrorista geneticamente melhorado que tem força sobre-humana.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
