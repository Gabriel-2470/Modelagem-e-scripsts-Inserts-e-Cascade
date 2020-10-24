-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Out-2020 às 06:16
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jornal`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano`
--

CREATE TABLE `ano` (
  `ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ano`
--

INSERT INTO `ano` (`ano`) VALUES
(1950),
(1951),
(1952),
(1953),
(1954),
(1955),
(1956),
(1957),
(1958),
(1959),
(1960),
(1961),
(1962),
(1963),
(1964),
(1965),
(1966),
(1967),
(1968),
(1969),
(1970),
(1971),
(1972),
(1973),
(1974),
(1975),
(1976),
(1977),
(1978),
(1979),
(1980),
(1981),
(1982),
(1983),
(1984),
(1985),
(1986),
(1987),
(1988),
(1989),
(1990),
(1991),
(1992),
(1993),
(1994),
(1995),
(1996),
(1997),
(1998),
(1999),
(2000),
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019),
(2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codCategoria` int(11) NOT NULL,
  `categoria` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codCategoria`, `categoria`) VALUES
(1, 'Entretenimento'),
(2, 'Politica'),
(3, 'Saude'),
(4, 'Corona'),
(5, 'Bolsonaro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE `dia` (
  `dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dia`
--

INSERT INTO `dia` (`dia`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mes`
--

CREATE TABLE `mes` (
  `mes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mes`
--

INSERT INTO `mes` (`mes`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `codNoticia` int(11) NOT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `noticia` text DEFAULT NULL,
  `codRedator` int(11) DEFAULT NULL,
  `codCategoria` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`codNoticia`, `titulo`, `noticia`, `codRedator`, `codCategoria`, `dia`, `mes`, `ano`) VALUES
(1, 'Arthur do Val diz que São Paulo não tem dinheiro p', 'O deputado estadual Arthur do Val (Patriota), candidato à Prefeitura de São Paulo e que é conhecido como Mamãe Falei, afirmou, durante sabatina do Estadão desta terça-feira, dia 20, que considera a promessa de qualquer auxílio financeiro municipal como uma estratégia populista. A proposta de uma ajuda financeira consta entre as ideias defendidas por diversos candidatos, inclusive Celso Russomanno (Republicanos), que lidera as pesquisas de intenção de voto e conta com apoio do presidente Jair Bolsonaro.', 2, 2, 13, 10, 2020),
(2, 'Bolsonaro diz duvidar que Justiça obrigue vacinaçã', 'A pedido da defesa do senador Flávio Bolsonaro (Republicanos-RJ), órgãos do governo se mobilizaram em busca de elementos que permitissem a anulação das investigações envolvendo Fabrício Queiroz, ex-assessor do parlamentar.', 1, 5, 10, 9, 2020),
(3, 'Órgãos do governo buscaram anular investigação de ', 'O presidente Jair Bolsonaro (sem partido) voltou a dizer, em live na noite de hoje, que a vacinação contra a covid-19 não será obrigatória caso um imunizante seja comprovado eficaz. O presidente disse que duvida que a Justiça torne a vacinação compulsória e criticou governadores, chamando-os de \"aprendizes de ditadores\", mas sem citar nomes.', 1, 5, 15, 10, 2020),
(4, 'Record descobre acordo de Luiza Ambiel e Mirella e', 'Aentrada de Rodrigo Faro em A Fazenda na noite desta sexta-feira (23/10) foi diferente. Normalmente ladeado pelo peão eliminado da semana, desta vez o apresentador esteve sozinho.', 3, 1, 7, 9, 2020),
(5, 'Anvisa autoriza a importação de 6 milhões de doses', 'A Anvisa (Agência Nacional de Vigilância Sanitária) autorizou sexta-feira (23) a importação excepcional, pelo Instituto Butantan, de 6 milhões de doses da vacina Coronavac, produzida pela empresa chinesa Sinovac. O aval, porém, não indica que as doses poderão ser aplicadas. Isso ainda dependerá do resultado dos testes clínicos e do registro da vacina no pais.', 4, 4, 22, 9, 2020),
(6, 'Vacinação obrigatória será analisada pelo plenário', 'O ministro do Supremo Tribunal Federal (STF) Ricardo Lewandowski decidiu, nesta sexta-feira (23), que vai levar diretamente ao plenário três ações que discutem a realização compulsória de vacinação e outras medidas profiláticas no combate à pandemia de Covid-19.', 5, 3, 6, 10, 2020),
(7, 'Saúde do DF alerta para proliferação de barbeiros ', 'Após uma médica do Distrito Federal encontrar um barbeiro dentro de casa, num prédio em Águas Claras, a Secretaria de Saúde alerta que é justamente nesta época de chuvas que o transmissor da Doença de Chagas costuma aparecer mais.', 5, 3, 21, 10, 2020),
(8, 'A Culpa é do Cabral”: Comedy Central confirma nova', 'A nova temporada de “A Culpa é do Cabral” está confirmada e a produção do Comedy Central acaba de abrir inscrições para a plateia que, neste ano, será virtual. Os novos episódios da famosa mesa redonda do humor para a televisão serão gravados entre 16 e 23 de novembro.', 3, 1, 26, 10, 2020),
(9, 'Senador com dinheiro na cueca: o que se sabe e o q', 'O senador Chico Rodrigues (DEM-RR) foi flagrado pela Polícia Federal na última quarta-feira (14) com 33 mil Reais na cueca. O dinheiro foi encontrado no cumprimento de mandado de busca e apreensão na casa do parlamentar durante uma operação para apurar um suposto esquema criminoso de desvio de recursos públicos para o combate ao coronavírus em Roraima.', 2, 2, 24, 10, 2020),
(10, 'Parece milagre, mas é trabalho: como casas de repo', 'Desde o início da pandemia de covid-19, em meados de março, não há notícia de algum estabelecimento que não teve sua rotina substancialmente alterada para evitar a disseminação da moléstia infecciosa. Escolas, escritórios, parques, condomínios tiveram suas rotinas lançadas de pernas para o ar em nome da proteção. Locais de estudo, espaços de trabalho, ambientes de diversão e moradias tiveram de passar por uma abrupta adaptação.', 4, 4, 4, 9, 2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `redator`
--

CREATE TABLE `redator` (
  `codRedator` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `sobrenome` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `ddd` int(11) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `codTurma` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `redator`
--

INSERT INTO `redator` (`codRedator`, `nome`, `sobrenome`, `email`, `ddd`, `cidade`, `telefone`, `codTurma`, `ano`, `mes`, `dia`) VALUES
(1, 'Gabriel', 'Fernando', 'gabriel@email.com', 11, 'Maua', '937486786', 2, 2004, 8, 17),
(2, 'Arthur', 'Mamaefalei', 'mamaefalei@email.com', 11, 'São paulo', '964954853', 6, 2003, 5, 1),
(3, 'Ednaldo', 'Pereira', 'valetudo@email.com', 11, 'Rio Grande da Serra', '908552658', 5, 2004, 11, 9),
(4, 'Raphael', 'langelo', 'cellbit@email.com', 11, 'jacarezinho', '958384857', 2, 2004, 8, 20),
(5, 'ANDER', 'SHOW', 'elemsm@email.com', 11, 'Santo André', '905938588', 2, 1950, 9, 27);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codTurma` int(11) NOT NULL,
  `turma` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codTurma`, `turma`) VALUES
(1, '1C'),
(2, '2C'),
(3, '3C'),
(4, '1A'),
(5, '2A'),
(6, '3A');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ano`
--
ALTER TABLE `ano`
  ADD PRIMARY KEY (`ano`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codCategoria`);

--
-- Índices para tabela `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`dia`);

--
-- Índices para tabela `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`mes`);

--
-- Índices para tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`codNoticia`),
  ADD KEY `codRedator` (`codRedator`),
  ADD KEY `codCategoria` (`codCategoria`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`codRedator`),
  ADD KEY `codTurma` (`codTurma`),
  ADD KEY `ano` (`ano`),
  ADD KEY `mes` (`mes`),
  ADD KEY `dia` (`dia`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codTurma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `codNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `redator`
--
ALTER TABLE `redator`
  MODIFY `codRedator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `codTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`codRedator`) REFERENCES `redator` (`codRedator`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`codCategoria`) REFERENCES `categoria` (`codCategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_3` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_4` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_5` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `redator`
--
ALTER TABLE `redator`
  ADD CONSTRAINT `redator_ibfk_1` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`codTurma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_2` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_3` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_4` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
