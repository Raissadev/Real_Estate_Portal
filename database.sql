-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Set-2021 às 17:52
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mybanco_php`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.clientes`
--

CREATE TABLE `tb_admin.clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `cpf_cnpj` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.clientes`
--

INSERT INTO `tb_admin.clientes` (`id`, `nome`, `email`, `tipo`, `cpf_cnpj`, `imagem`) VALUES
(3, 'Amanda Doe', 'amanda@doe.com', 'juridico', '00.000.000/0000-00', ''),
(7, 'Jhon Doe', 'jhon@doe.com', 'juridico', '00.000.000/0000-00', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.empreendimentos`
--

CREATE TABLE `tb_admin.empreendimentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `preco` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.empreendimentos`
--

INSERT INTO `tb_admin.empreendimentos` (`id`, `nome`, `tipo`, `preco`, `imagem`, `slug`, `order_id`) VALUES
(2, 'Imóvel de Luxo', 'residencial', '10.000,00', 'listImovelOne.jpg', 'imovel-representativo-one', 1),
(3, 'Imóvel Representativo Two', 'residencial', '1.000,00', 'listImovelTwo.jpg', 'imovel-representativo-two', 2),
(4, 'Imóvel Representativo Three', 'residencial', '1.000,00', 'listImovelThree.jpg', 'imovel-representativo-three', 3),
(6, 'Apartamento de Luxo', 'residencial', '1.000,00', 'listImovelFour.jpg', 'apartamento-de-luxo', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.estoque`
--

CREATE TABLE `tb_admin.estoque` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `largura` int(11) NOT NULL,
  `altura` int(11) NOT NULL,
  `comprimento` int(11) NOT NULL,
  `peso` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.estoque`
--

INSERT INTO `tb_admin.estoque` (`id`, `nome`, `descricao`, `largura`, `altura`, `comprimento`, `peso`, `quantidade`) VALUES
(5, 'my Wallpapper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed augue a erat pretium tempor eu quis augue. Cras volutpat ligula nec ligula dignissim dictum. Nullam mollis euismod nisl blandit feugiat. Phasellus eget consectetur metus. Vestibulum sem eros, facilisis et faucibus id, tempor eget eros. Phasellus interdum nisi vehicula pellentesque sodales. Aliquam et iaculis arcu. Cras vehicula ante eget massa facilisis lacinia et id libero. Suspendisse bibendum, quam semper tristique fringilla, dolor augue rutrum tortor, tristique ultricies risus est eget quam. Suspendisse suscipit tempus viverra. Vestibulum dignissim mi quis velit ornare, ut euismod neque euismod. Proin interdum ex quis sapien varius, vel dignissim nisl consectetur. Morbi vitae justo nec arcu varius feugiat vel sodales leo. Duis scelerisque, erat et tempor gravida, erat mauris sodales leo, quis mattis purus enim eu sem.\r\n\r\n', 3, 3, 3, 9, 12),
(6, 'my Code', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed augue a erat pretium tempor eu quis augue. Cras volutpat ligula nec ligula dignissim dictum. Nullam mollis euismod nisl blandit feugiat. Phasellus eget consectetur metus. Vestibulum sem eros, facilisis et faucibus id, tempor eget eros. Phasellus interdum nisi vehicula pellentesque sodales. Aliquam et iaculis arcu. Cras vehicula ante eget massa facilisis lacinia et id libero. Suspendisse bibendum, quam semper tristique fringilla, dolor augue rutrum tortor, tristique ultricies risus est eget quam. Suspendisse suscipit tempus viverra. Vestibulum dignissim mi quis velit ornare, ut euismod neque euismod. Proin interdum ex quis sapien varius, vel dignissim nisl consectetur. Morbi vitae justo nec arcu varius feugiat vel sodales leo. Duis scelerisque, erat et tempor gravida, erat mauris sodales leo, quis mattis purus enim eu sem.\r\n\r\n', 5, 5, 5, 5, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.estoque_imagens`
--

CREATE TABLE `tb_admin.estoque_imagens` (
  `id` int(11) NOT NULL,
  `produto_id` int(11) NOT NULL,
  `imagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.estoque_imagens`
--

INSERT INTO `tb_admin.estoque_imagens` (`id`, `produto_id`, `imagem`) VALUES
(3, 5, 'myWallpaperTwo.png'),
(4, 6, 'myWallpaper.jpg'),
(6, 6, ''),
(7, 6, ''),
(8, 6, '61328bd166d13.jpg'),
(9, 6, '61328bda7e744.jpg'),
(10, 6, ''),
(11, 6, ''),
(12, 6, ''),
(13, 6, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.financeiro`
--

CREATE TABLE `tb_admin.financeiro` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `vencimento` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.financeiro`
--

INSERT INTO `tb_admin.financeiro` (`id`, `cliente_id`, `nome`, `valor`, `vencimento`, `status`) VALUES
(48, 3, 'Payment', '100,00', '2021-09-11', 1),
(49, 3, 'Payment', '100,00', '2021-09-21', 1),
(50, 3, 'Payment Three', '100,00', '2021-09-01', 1),
(51, 3, 'Payment Three', '100,00', '2021-09-02', 1),
(52, 3, 'Payment Three', '100,00', '2021-09-02', 1),
(53, 3, 'Payment Three', '100,00', '2021-09-02', 1),
(54, 3, 'Payment Three', '100,00', '2021-09-02', 1),
(55, 3, 'Payment Three', '100,00', '2021-09-02', 1),
(56, 7, 'Treino', '90,00', '2021-09-09', 1),
(57, 7, 'Treino', '90,00', '2021-09-19', 1),
(58, 7, 'Treino', '90,00', '2021-09-29', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.imagens_imoveis`
--

CREATE TABLE `tb_admin.imagens_imoveis` (
  `id` int(11) NOT NULL,
  `imovel_id` int(11) NOT NULL,
  `imagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.imagens_imoveis`
--

INSERT INTO `tb_admin.imagens_imoveis` (`id`, `imovel_id`, `imagem`) VALUES
(1, 1, 'listImovelFour.jpg'),
(3, 3, 'listImovelFour.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.imoveis`
--

CREATE TABLE `tb_admin.imoveis` (
  `id` int(11) NOT NULL,
  `empreend_id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `area` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.imoveis`
--

INSERT INTO `tb_admin.imoveis` (`id`, `empreend_id`, `nome`, `preco`, `area`) VALUES
(1, 2, 'Imóvel de luxo', '1.00', 100),
(3, 0, 'Imóvel Representativo', '1.00', 900);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.online`
--

CREATE TABLE `tb_admin.online` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `ultima_acao` datetime NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.online`
--

INSERT INTO `tb_admin.online` (`id`, `ip`, `ultima_acao`, `token`) VALUES
(40, '::1', '2021-09-09 11:44:52', '613270d6cf497');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.usuarios`
--

CREATE TABLE `tb_admin.usuarios` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cargo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.usuarios`
--

INSERT INTO `tb_admin.usuarios` (`id`, `user`, `password`, `img`, `nome`, `cargo`) VALUES
(1, 'raissa', 'gaivabeach', '', 'Raissa Arcaro Daros', '2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.visitas`
--

CREATE TABLE `tb_admin.visitas` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `dia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.visitas`
--

INSERT INTO `tb_admin.visitas` (`id`, `ip`, `dia`) VALUES
(1, '::1', '2021-08-18'),
(2, '::1', '2021-08-18'),
(3, '::1', '2021-08-26'),
(4, '::1', '2021-08-26'),
(5, '::1', '2021-08-26'),
(6, '::1', '2021-08-27'),
(7, '::1', '2021-08-27'),
(8, '::1', '2021-08-27'),
(9, '::1', '2021-08-27'),
(10, '::1', '2021-08-27'),
(11, '192.168.0.102', '2021-08-29'),
(12, '::1', '2021-08-30'),
(13, '::1', '2021-08-30'),
(14, '::1', '2021-09-01'),
(15, '::1', '2021-09-03'),
(16, '::1', '2021-09-04'),
(17, '::1', '2021-09-04'),
(18, '::1', '2021-09-09');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.config`
--

CREATE TABLE `tb_site.config` (
  `titulo` varchar(255) NOT NULL,
  `nome_autor` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `icone1` varchar(255) NOT NULL,
  `icone2` varchar(255) NOT NULL,
  `descricao2` text NOT NULL,
  `icone3` varchar(255) NOT NULL,
  `descricao3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_site.config`
--

INSERT INTO `tb_site.config` (`titulo`, `nome_autor`, `descricao`, `icone1`, `icone2`, `descricao2`, `icone3`, `descricao3`) VALUES
('Meu título', 'Raissa Dev', 'Minha descrição...', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.depoimentos`
--

CREATE TABLE `tb_site.depoimentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `depoimento` text NOT NULL,
  `data` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_site.depoimentos`
--

INSERT INTO `tb_site.depoimentos` (`id`, `nome`, `depoimento`, `data`, `order_id`) VALUES
(1, 'Raissa', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non massa sed lectus pretium facilisis. Mauris facilisis turpis vel nibh commodo consequat. Duis sit amet nulla eget orci euismod egestas in sed ex. Nam faucibus eget justo vulputate ornare. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.', '28/08/2021', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.servicos`
--

CREATE TABLE `tb_site.servicos` (
  `id` int(11) NOT NULL,
  `servico` text NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_site.servicos`
--

INSERT INTO `tb_site.servicos` (`id`, `servico`, `order_id`) VALUES
(1, 'Programadora', 1),
(2, 'Designer UI/UX', 2),
(3, 'Designer UI/UX', 3),
(4, 'Designer UI/UX', 4),
(5, 'Designer UI/UX', 5),
(6, 'Designer UI/UX', 6),
(7, 'Designer UI/UX', 7),
(8, 'Designer UI/UX', 8),
(9, 'Copywriter', 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.slides`
--

CREATE TABLE `tb_site.slides` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `slide` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_admin.clientes`
--
ALTER TABLE `tb_admin.clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.empreendimentos`
--
ALTER TABLE `tb_admin.empreendimentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.estoque`
--
ALTER TABLE `tb_admin.estoque`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.estoque_imagens`
--
ALTER TABLE `tb_admin.estoque_imagens`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.financeiro`
--
ALTER TABLE `tb_admin.financeiro`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.imagens_imoveis`
--
ALTER TABLE `tb_admin.imagens_imoveis`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.imoveis`
--
ALTER TABLE `tb_admin.imoveis`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.online`
--
ALTER TABLE `tb_admin.online`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.usuarios`
--
ALTER TABLE `tb_admin.usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.visitas`
--
ALTER TABLE `tb_admin.visitas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.depoimentos`
--
ALTER TABLE `tb_site.depoimentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.servicos`
--
ALTER TABLE `tb_site.servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.slides`
--
ALTER TABLE `tb_site.slides`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_admin.clientes`
--
ALTER TABLE `tb_admin.clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tb_admin.empreendimentos`
--
ALTER TABLE `tb_admin.empreendimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tb_admin.estoque`
--
ALTER TABLE `tb_admin.estoque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tb_admin.estoque_imagens`
--
ALTER TABLE `tb_admin.estoque_imagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `tb_admin.financeiro`
--
ALTER TABLE `tb_admin.financeiro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de tabela `tb_admin.imagens_imoveis`
--
ALTER TABLE `tb_admin.imagens_imoveis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tb_admin.imoveis`
--
ALTER TABLE `tb_admin.imoveis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_admin.online`
--
ALTER TABLE `tb_admin.online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `tb_admin.usuarios`
--
ALTER TABLE `tb_admin.usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_admin.visitas`
--
ALTER TABLE `tb_admin.visitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `tb_site.depoimentos`
--
ALTER TABLE `tb_site.depoimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_site.servicos`
--
ALTER TABLE `tb_site.servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `tb_site.slides`
--
ALTER TABLE `tb_site.slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
