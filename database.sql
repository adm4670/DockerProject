-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: meu-mysql
-- Tempo de geração: 30/04/2024 às 20:13
-- Versão do servidor: 8.3.0
-- Versão do PHP: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `Cinema`
--
CREATE DATABASE IF NOT EXISTS `Cinema` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `Cinema`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Filme`
--

CREATE TABLE `Filme` (
  `id` int NOT NULL,
  `titulo` varchar(500) NOT NULL,
  `numero_votos` int NOT NULL,
  `genero` varchar(200) NOT NULL,
  `tipo` varchar(200) NOT NULL,
  `ano` int NOT NULL,
  `diretor` varchar(200) NOT NULL,
  `media_usuario` int NOT NULL,
  `media_critico` int NOT NULL,
  `bilheteria` double NOT NULL,
  `data` text NOT NULL,
  `duracao` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `Filme`
--

INSERT INTO `Filme` (`id`, `titulo`, `numero_votos`, `genero`, `tipo`, `ano`, `diretor`, `media_usuario`, `media_critico`, `bilheteria`, `data`, `duracao`) VALUES
(9, 'O Poderoso Chefão', 2000000, 'Drama', 'Crime', 1972, 'Francis Ford Coppola', 92, 97, 245066411, '26373', 175),
(38, 'Senhor dos Anéis: O Retorno do Rei', 1900000, 'Aventura', 'Fantasia', 2003, 'Peter Jackson', 89, 95, 1118888979, '37972', 201),
(3, 'Pulp Fiction', 2200000, 'Policial', 'Drama', 1994, 'Quentin Tarantino', 89, 94, 213928762, '34587', 154),
(12, 'A Lista de Schindler', 1400000, 'Drama', 'Biografia', 1993, 'Steven Spielberg', 89, 93, 322183468, '34318', 195),
(2, 'O Senhor dos Anéis: A Sociedade do Anel', 2000000, 'Aventura', 'Fantasia', 2001, 'Peter Jackson', 88, 92, 871530324, '37244', 178),
(4, 'A Origem', 2500000, 'Ficção Científica', 'Ação', 2010, 'Christopher Nolan', 88, 86, 829895144, '40375', 148),
(19, 'Forrest Gump: O Contador de Histórias', 2200000, 'Drama', 'Comédia', 1994, 'Robert Zemeckis', 88, 83, 678226061, '34508', 142),
(45, 'Clube da Luta', 2200000, 'Drama', 'Suspense', 1999, 'David Fincher', 88, 79, 100853753, '36445', 139),
(5, 'Os Bons Companheiros', 1200000, 'Policial', 'Drama', 1990, 'Martin Scorsese', 87, 89, 46836394, '33135', 146),
(1, 'Matrix', 2000000, 'Ação', 'Ficção Científica', 1999, 'Wachowski', 87, 87, 463517383, '36250', 136),
(21, 'Parasita', 899000, 'Suspense', 'Drama', 2019, 'Bong Joon Ho', 86, 96, 266425485, '43606', 132),
(25, 'A Viagem de Chihiro', 816000, 'Animação', 'Fantasia', 2001, 'Hayao Miyazaki', 86, 96, 396708857, '37092', 125),
(29, 'O Silêncio dos Inocentes', 1500000, 'Terror', 'Drama', 1991, 'Jonathan Demme', 86, 96, 272742922, '33283', 118),
(16, 'Star Wars: Uma Nova Esperança', 1400000, 'Ficção Científica', 'Aventura', 1977, 'George Lucas', 86, 93, 775398007, '28270', 121),
(30, 'O Resgate do Soldado Ryan', 1500000, 'Drama', 'Guerra', 1998, 'Steven Spielberg', 86, 92, 48234912, '36000', 169),
(22, 'Cidade de Deus', 785000, 'Ação', 'Drama', 2002, 'Fernando Meirelles', 86, 79, 303766, '37295', 130),
(23, 'Interstellar', 2000000, 'Ficção Científica', 'Aventura', 2014, 'Christopher Nolan', 86, 74, 677471339, '41938', 169),
(6, 'Era Uma Vez no Oeste', 343000, 'Ação', 'Far-West', 1968, 'Sergio Leone', 85, 97, 5365000, '25193', 175),
(10, 'O Pianista', 884000, 'Drama', 'Biografia', 2002, 'Roman Polanski', 85, 96, 120072577, '37708', 150),
(24, 'Whiplash - Em Busca da Perfeição', 941000, 'Drama', 'Música', 2014, 'Damien Chazelle', 85, 93, 48982041, '41922', 107),
(34, 'Os Infiltrados', 1400000, 'Crime', 'Drama', 2006, 'Martin Scorsese', 85, 91, 289847354, '38996', 151),
(11, 'Gladiador', 1600000, 'Ação', 'Drama', 2000, 'Ridley Scott', 85, 77, 457640427, '36651', 155),
(32, 'Amnésia', 1300000, 'Mistério', 'Suspense', 2000, 'Christopher Nolan', 84, 92, 39971113, '36810', 113),
(35, 'Toy Story', 1000000, 'Animação', 'Aventura', 1995, 'John Lasseter', 83, 95, 373554033, '35025', 81),
(33, 'Scarface', 891000, 'Drama', 'Crime', 1983, 'Brian De Palma', 83, 80, 65499163, '30651', 170),
(27, 'O Labirinto do Fauno', 692000, 'Fantasia', 'Drama', 2006, 'Guillermo del Toro', 82, 95, 83629703, '38864', 118),
(20, 'Indiana Jones e a Última Cruzada', 795000, 'Ação', 'Aventura', 1989, 'Steven Spielberg', 82, 89, 474171806, '32652', 127),
(26, 'Blade Runner', 804000, 'Ficção Científica', 'Suspense', 1982, 'Ridley Scott', 81, 90, 33139618, '30127', 117),
(14, 'O Sexto Sentido', 1000000, 'Drama', 'Fantasia', 1999, 'M. Night Shyamalan', 81, 84, 672806292, '36404', 107),
(7, 'Tubarão', 644000, 'Terror', 'Aventura', 1975, 'Steven Spielberg', 80, 97, 470653000, '27563', 124),
(42, 'O Discurso do Rei', 699000, 'Drama', 'Biografia', 2010, 'Tom Hooper', 80, 92, 414211549, '40427', 118),
(50, 'Blade Runner 2049', 630000, 'Ficção Científica', 'Suspense', 2017, 'Denis Villeneuve', 80, 87, 259239658, '43007', 163),
(40, 'Donnie Darko', 834000, 'Ficção Científica', 'Drama', 2001, 'Richard Kelly', 80, 86, 7277912, '36910', 113),
(43, 'O Regresso', 849000, 'Aventura', 'Drama', 2015, 'Alejandro González Iñárritu', 80, 81, 532950503, '42377', 156),
(31, 'Sin City', 786000, 'Ação', 'Policial', 2005, 'Robert Rodriguez', 80, 77, 158527918, '38443', 124),
(48, 'O Irlandês', 417000, 'Crime', 'Drama', 2019, 'Martin Scorsese', 79, 94, 200000000, '43735', 209),
(13, 'Os Caça-Fantasmas', 435000, 'Comédia', 'Fantasia', 1984, 'Ivan Reitman', 78, 97, 295212467, '30841', 107),
(8, 'E.T. - O Extraterrestre', 429000, 'Ficção Científica', 'Aventura', 1982, 'Steven Spielberg', 78, 91, 792965326, '30113', 115),
(36, 'Shrek', 715000, 'Animação', 'Comédia', 2001, 'Andrew Adamson', 78, 90, 484409218, '37003', 90),
(17, 'Titanic', 1300000, 'Drama', 'Romance', 1997, 'James Cameron', 78, 89, 2187463944, '35783', 195),
(18, 'Avatar', 1400000, 'Ação', 'Ficção Científica', 2009, 'James Cameron', 78, 82, 2787965087, '40165', 162),
(49, 'Scarface (1932)', 30000, 'Crime', 'Drama', 1932, 'Howard Hawks', 78, 68, 217428, '11788', 93),
(39, 'Gravidade', 851000, 'Ficção Científica', 'Drama', 2013, 'Alfonso Cuarón', 77, 96, 723192705, '41509', 91),
(47, 'Psicopata Americano', 684000, 'Drama', 'Policial', 2000, 'Mary Harron', 76, 68, 10457296, '36546', 102),
(15, 'O Rei Leão', 1100000, 'Animação', 'Aventura', 1994, 'Roger Allers', 75, 88, 968511805, '34500', 88),
(44, 'Mulher-Maravilha', 687000, 'Ação', 'Aventura', 2017, 'Patty Jenkins', 74, 93, 821847012, '42870', 141),
(41, 'O Rei Leão (2019)', 261000, 'Animação', 'Aventura', 2019, 'Jon Favreau', 69, 53, 1656943394, '43655', 118);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
