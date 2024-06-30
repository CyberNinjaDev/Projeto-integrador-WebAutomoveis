-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30/06/2024 às 16:36
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `formulario_veiculo`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `compra`
--

CREATE TABLE `compra` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(50) NOT NULL,
  `pagamento` enum('cartão','boleto','pix','') NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `endereco` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `compra`
--

INSERT INTO `compra` (`id`, `nome`, `email`, `telefone`, `pagamento`, `cidade`, `estado`, `endereco`) VALUES
(1, 'asdasdsad', 'ddd', 'dd', 'cartão', 'ssss', 'ssss', 'ssss'),
(2, 'caroline', 'caroline@gmail.com', '41976543762', 'boleto', 'sao paulo', 'sao paulo', 'rua sao paulo, 90'),
(3, 'raul seixas', 'raulseixas@gmail.com', '5563436432', 'pix', 'sao paulo', 'sp', 'rua rio de janeiro, 20 bairro grajau'),
(4, 'ahsduiashdiu', 'wsuidhasuid', 'asdhuiashdiuasd', 'boleto', 'asdasdasd', 'asdasdasdads', 'asdasdasdasd'),
(5, 'tatu', 'tatu@hotmail.com', '85464564646', 'pix', 'sao paulo', 'sao paulo', 'rua sao paulo, 56');

-- --------------------------------------------------------

--
-- Estrutura para tabela `venda`
--

CREATE TABLE `venda` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `ano` varchar(200) NOT NULL,
  `preco` varchar(200) NOT NULL,
  `descricao` varchar(950) NOT NULL,
  `imagem` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `venda`
--

INSERT INTO `venda` (`id`, `nome`, `telefone`, `modelo`, `ano`, `preco`, `descricao`, `imagem`) VALUES
(1, 'aaa', '4324324234234234', 'mitsubishi', '2000', '20000', 'sdasadsadsadasdsadasdasd', 0x75706c6f6164732f5f31383161313936352d393937332d343066362d613133662d3366653636396661356330342e6a7067),
(2, 'aaa', '4324324234234234', 'mitsubishi', '2000', '20000', 'sdasadsadsadasdsadasdasd', 0x75706c6f6164732f5f31383161313936352d393937332d343066362d613133662d3366653636396661356330342e6a7067),
(3, 'asdasdsadsad', '34234324324', 'asdsadsadasd', '2312', 'R$500.000,00', 'SDFDSFDSFDSFSDFDSFDSFDSFSDFDSFDSFDSFSDFDSFDSFDSFSDFDSFDSFDSFSDFDSFDSFDSFSDFDSFDSFDSFSDFDSFDSFDSFSDFDSFDSFDSFSDFDSFDSFDSFSDFDSFDSFDSFSDFDSFDSFDSF', 0x75706c6f6164732f5f62346662303538622d326563342d343039662d626563322d3337626339393132376562392e6a7067),
(4, 'asdasdsadsad', '34234324324', 'asdsadsadasd', '2312', 'R$500.000,00', 'SDFDSFDSFDSFSDFDSFDSFDSFSDFDSFDSFDSFSDFDSFDSFDSFSDFDSFDSFDSFSDFDSFDSFDSFSDFDSFDSFDSFSDFDSFDSFDSFSDFDSFDSFDSFSDFDSFDSFDSFSDFDSFDSFDSFSDFDSFDSFDSF', 0x75706c6f6164732f5f62346662303538622d326563342d343039662d626563322d3337626339393132376562392e6a7067),
(5, 'SDFDSFDSFDSF', '3433444434', 'TOYOTA ETIOS', '2015', 'R$100.000,00', 'ASDASDADADAD', 0x75706c6f6164732f5f31383161313936352d393937332d343066362d613133662d3366653636396661356330342e6a7067),
(6, 'jabuti', '442134324234', 'fusca', '1990', '$90,00', 'imperdivel fusca 1990 cusando tbm 90 reias ', 0x75706c6f6164732f5f36333330616137372d336139612d343937632d623436652d6633326234656639303135652e6a7067);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `compra`
--
ALTER TABLE `compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `venda`
--
ALTER TABLE `venda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
