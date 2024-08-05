-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2024 at 04:50 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `empresa_moveis`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `nome`) VALUES
(1, 'Mesas'),
(2, 'Cadeiras'),
(3, 'Sofás'),
(4, 'Estantes'),
(5, 'Camas');

-- --------------------------------------------------------

--
-- Table structure for table `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `nota` decimal(5,2) NOT NULL,
  `imagem` varchar(1000) NOT NULL,
  `descricao` varchar(500) NOT NULL,
  `preco` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `nota`, `imagem`, `descricao`, `preco`, `id_categoria`) VALUES
(1, 'Sofá Confort Plus', 5.00, 'https://cdn.awsli.com.br/2500x2500/735/735589/produto/34758280/a76379530d.jpg', 'Um sofá confortável e elegante, perfeito para qualquer sala de estar. Estofado de alta densidade, estrutura reforçada e tecido de toque suave. Ideal para receber visitas ou relaxar após um longo dia.', 1499, 1),
(2, 'Sofá Retrátil Luxo', 4.70, 'https://www.decoracoesmoveis.com.br/media/catalog/product/cache/1/image/800x/9df78eab33525d08d6e5fb8d27136e95/r/i/rio_ambiente_01.jpg', 'Sofá retrátil com acabamento de luxo e alta durabilidade. Possui sistema de reclinação suave e apoio para os pés. Perfeito para quem busca conforto e sofisticação.', 1799, 1),
(3, 'Sofá Circular Moderno', 3.60, 'https://cdn12.picryl.com/photo/2016/12/31/sofa-couch-sofa-couch-5ef6f1-1024.jpg', 'Sofá perfeito com design moderno para ambientes curvos. Com estofado de alta qualidade, é ideal para quem busca um visual contemporâneo e inovador.', 1999, 1),
(4, 'Sofá de Couro Clássico', 4.80, 'https://images.pexels.com/photos/3773570/pexels-photo-3773570.png', 'Sofá de couro clássico com acabamento premium. Feito com couro legítimo, possui design atemporal e é uma peça de destaque em qualquer sala de estar.', 2499, 1),
(5, 'Sofá Cama Compacto', 4.00, 'https://ikihomestore.com.br/wp-content/uploads/2024/05/e1d622e70dfe594ac1c2bfd97fe27f82-1.jpg', 'Sofá cama compacto ideal para espaços pequenos e perfeito para momentos inesperados. Converte-se facilmente em uma cama confortável, com mecanismo de abertura simples e rápido.', 999, 1),
(6, 'Cadeira de Jantar Elegance', 4.50, 'https://ae01.alicdn.com/kf/Sc1593b9cf38b442ba40f546f3fa24676s/Conjunto-De-Combina-o-De-Mesa-De-Jantar-E-Cadeiras-De-M-rmore-Coroa-De-A.jpg', 'Cadeira de jantar com design moderno e acabamento em madeira de alta qualidade. Estofada com tecido resistente e confortável, é perfeita para jantares prolongados.', 249, 2),
(7, 'Cadeira de Escritório Ergonomic', 2.70, 'https://blog.wawdesign.com.br/wp-content/uploads/2019/11/cadeira-escritorio.jpg', 'Cadeira de escritório ergonômica com suporte lombar ajustável. Ideal para longas horas de trabalho, possui ajustes de altura, inclinação e apoio para os braços.', 399, 2),
(8, 'Cadeira Gamer Pro', 5.00, 'https://stullio.ru/assets/img/product/IMG_155_royal_blue_800_N1.jpg', 'Cadeira gamer com design ergonômico e ajustes personalizados. Inclui apoio para cabeça e lombar, além de reclinação completa para maior conforto durante as sessões de jogo.', 599, 2),
(9, 'Cadeira de Balcão Alta', 3.40, 'https://cdnm.westwing.com.br/glossary/uploads/br/2021/05/16210232/Cozinha-Americana-Preto-e-Branco-e1625079267257.jpg', 'Cadeira alta de balcão com design estiloso e confortável. Feita com materiais duráveis e de fácil limpeza, ideal para cozinhas e áreas de bar.', 199, 2),
(10, 'Cadeira Dobrável Prática', 4.20, 'https://cdn.leroymerlin.com.br/products/cadeira_dobravel_sem_bracos_para_areas_externas_em_madeira_eu_1566725196_4c6c_600x600.jpg', 'Cadeira dobrável prática e fácil de armazenar. Leve e portátil, é ideal para áreas externas e eventos, com estrutura resistente e fácil de limpar.', 99, 2),
(11, 'Mesa de Centro Vidro', 4.60, 'https://www.newlight.net.br/media/product/11c/mesa-de-vidro-retangular-1600-x-900-base-diniz-125-x-45-car-nog-transparente-74b.png', 'Mesa de centro com tampo de vidro temperado e estrutura de aço inox. Design elegante e moderno, ideal para salas de estar contemporâneas.', 399, 3),
(12, 'Mesa de Jantar Luxo', 5.00, 'https://images.tcdn.com.br/img/img_prod/1083165/mesa_de_jantar_retangular_off_white_nature_com_vidro_wind_160x90_4531_3_7de96a395b92124b1fc66f5a6dd9aebd.jpg', 'Mesa de jantar com acabamento de luxo e espaço para 8 pessoas. Feita com materiais de alta qualidade, é uma peça central para jantares e reuniões familiares.', 1299, 3),
(13, 'Mesa Lateral Moderna', 4.50, 'https://images.tcdn.com.br/img/img_prod/1136084/kit_mesa_lateral_organico_ferro_e_madeira_industrial_sala_331_1_883e2c528c9c88828dc20d964328ad66.jpg', 'Mesa lateral com design moderno e acabamento em madeira. Perfeita para complementar a decoração da sala, proporcionando funcionalidade e estilo.', 299, 3),
(14, 'Mesa de Escritório Office Pro', 5.00, 'https://images.tcdn.com.br/img/img_prod/1101616/mesa_de_reuniao_escritorio_4_lugares_1_60m_x_80cm_tampo_30mm_2263_1_e8f68ce07e148e0ec476c0097749b37b.jpg', 'Mesa de escritório espaçosa com acabamento em melamina e várias gavetas. Ideal para ambientes corporativos, oferece amplo espaço de trabalho e armazenamento.', 699, 3),
(15, 'Mesa de Jantar Compacta', 2.30, 'https://adboutique.com.br/wp-content/uploads/2022/02/mesa_compacta_colecao_cory_couro_ecologico_1080x1080.jpg', 'Mesa de jantar compacta ideal para espaços pequenos. Com design funcional e estrutura resistente, é perfeita para apartamentos e cozinhas compactas.', 499, 3),
(16, 'Cama King Size Luxo', 5.00, 'https://imgs.casasbahia.com.br/1546482828/1xg.jpg', 'Cama king size com cabeceira estofada e design sofisticado. Oferece máximo conforto e suporte, sendo a escolha perfeita para um quarto elegante e espaçoso.', 2599, 4),
(17, 'Cama Queen Size Confort', 4.70, 'https://www.kinghouse.com.br/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/C/o/Conjunto_Cama_Box_Queen_Size_Sheffield_158x198x65_Bege_Molas_Ensacadas__6.jpg', 'Cama queen size com acabamento confortável e design moderno. Ideal para quem busca conforto e estilo, com estrutura robusta e durável.', 1999, 4),
(18, 'Cama de Solteiro Juvenil', 4.40, 'https://down-br.img.susercontent.com/file/sg-11134201-7qvg0-lf8dh21z9svze1', 'Cama de solteiro ideal para quartos juvenis, com espaço para armazenamento. Design jovem e moderno, perfeita para otimizar o espaço do quarto.', 999, 4),
(19, 'Cama de Casal Tradicional', 4.50, 'https://www.imaginarium.com.br/ccstore/v1/images/?source=/file/v5100603928887920710/products/20061472-23020052-1.jpg', 'Cama de casal tradicional com estrutura em madeira maciça. Oferece conforto e durabilidade, sendo uma escolha clássica para qualquer quarto.', 1499, 4),
(20, 'Estante de Madeira Maciça', 4.60, 'https://img.elo7.com.br/product/zoom/4C04C0C/estante-em-madeira-california-estante-para-livros.jpg', 'Estante robusta feita de madeira maciça, ideal para sala ou escritório. Oferece amplo espaço de armazenamento e é uma peça decorativa de destaque.', 799, 5),
(21, 'Estante Modular Flex', 2.80, 'https://krasomoveisdeaco.com.br/wp-content/uploads/2023/05/12241381_1274607285898090_602712604997877651_n.jpg', 'Estante modular com design flexível e várias opções de configuração. Perfeita para quem busca personalização e versatilidade no espaço de armazenamento.', 999, 5),
(22, 'Estante de Metal Industrial', 4.70, 'https://cdn.leroymerlin.com.br/products/estante_metal_moveis_office_prateleiras_moderno_premium_estil_1567523255_0fba_300x300.jpg', 'Estante de metal com design industrial e alta durabilidade. Ideal para ambientes modernos e industriais, oferece funcionalidade e estilo.', 899, 5),
(23, 'Estante para Escritório Compacta', 4.00, 'https://multimoveis.vtexassets.com/arquivos/ids/161690/mp2561.697_zoom.jpg?v=637999860236670000', 'Estante compacta ideal para escritórios pequenos. Oferece amplo espaço de armazenamento em um design compacto e funcional.', 499, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
