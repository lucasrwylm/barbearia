
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `agendamentos` (
  `id_agendamento` int(11) NOT NULL,
  `id_servico` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_agenda` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `agendamentos` (`id_agendamento`, `id_servico`, `id_usuario`, `id_agenda`, `data`) VALUES
(3, 1, 22, 1, '2024-11-18'),
(4, 1, 25, 3, '2024-11-18'),
(5, 1, 24, 80, '2024-11-20'),
(6, 1, 23, 72, '2024-11-20'),
(7, 1, 26, 65, '2024-11-27');



CREATE TABLE `agendas` (
  `id_agenda` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `dia_da_semana` tinyint(4) NOT NULL,
  `horario` time NOT NULL,
  `data_criacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `agendas` (`id_agenda`, `id_usuario`, `dia_da_semana`, `horario`, `data_criacao`) VALUES
(1, 15, 1, '08:00:00', 0),
(2, 19, 1, '08:30:00', 0),
(3, 21, 1, '09:00:00', 0),
(4, 15, 1, '09:30:00', 0),
(5, 21, 1, '10:00:00', 0),
(6, 20, 1, '10:30:00', 0),
(7, 19, 1, '11:00:00', 0),
(8, 15, 1, '11:30:00', 0),
(9, 1, 2, '08:00:00', 0),
(10, 1, 2, '08:30:00', 0),
(11, 1, 2, '09:00:00', 0),
(12, 1, 2, '09:30:00', 0),
(13, 1, 2, '10:00:00', 0),
(14, 1, 2, '10:30:00', 0),
(15, 1, 2, '11:00:00', 0),
(16, 1, 2, '11:30:00', 0),
(17, 1, 3, '08:00:00', 0),
(18, 1, 3, '08:30:00', 0),
(19, 1, 3, '09:00:00', 0),
(20, 1, 3, '09:30:00', 0),
(21, 1, 3, '10:00:00', 0),
(22, 1, 3, '10:30:00', 0),
(23, 1, 3, '11:00:00', 0),
(24, 1, 3, '11:30:00', 0),
(25, 1, 4, '08:00:00', 0),
(26, 1, 4, '08:30:00', 0),
(27, 1, 4, '09:00:00', 0),
(28, 1, 4, '09:30:00', 0),
(29, 1, 4, '10:00:00', 0),
(30, 1, 4, '10:30:00', 0),
(31, 1, 4, '11:00:00', 0),
(32, 1, 4, '11:30:00', 0),
(33, 1, 5, '08:00:00', 0),
(34, 1, 5, '08:30:00', 0),
(35, 1, 5, '09:00:00', 0),
(36, 1, 5, '09:30:00', 0),
(37, 1, 5, '10:00:00', 0),
(38, 1, 5, '10:30:00', 0),
(39, 1, 5, '11:00:00', 0),
(40, 1, 5, '11:30:00', 0),
(41, 1, 6, '08:00:00', 0),
(42, 1, 6, '08:30:00', 0),
(43, 1, 6, '09:00:00', 0),
(44, 1, 6, '09:30:00', 0),
(45, 1, 6, '10:00:00', 0),
(46, 1, 6, '10:30:00', 0),
(47, 1, 6, '11:00:00', 0),
(48, 1, 6, '11:30:00', 0),
(49, 21, 1, '08:00:00', 0),
(50, 21, 1, '08:30:00', 0),
(51, 21, 1, '09:00:00', 0),
(52, 21, 1, '09:30:00', 0),
(53, 21, 1, '10:00:00', 0),
(54, 21, 1, '10:30:00', 0),
(55, 21, 1, '11:00:00', 0),
(56, 21, 1, '11:30:00', 0),
(57, 21, 2, '08:00:00', 0),
(58, 21, 2, '08:30:00', 0),
(59, 21, 2, '09:00:00', 0),
(60, 21, 2, '09:30:00', 0),
(61, 21, 2, '10:00:00', 0),
(62, 21, 2, '10:30:00', 0),
(63, 21, 2, '11:00:00', 0),
(64, 21, 2, '11:30:00', 0),
(65, 21, 3, '08:00:00', 0),
(66, 21, 3, '08:30:00', 0),
(67, 21, 3, '09:00:00', 0),
(68, 21, 3, '09:30:00', 0),
(69, 21, 3, '10:00:00', 0),
(70, 21, 3, '10:30:00', 0),
(71, 21, 3, '11:00:00', 0),
(72, 21, 3, '11:30:00', 0),
(73, 21, 3, '08:00:00', 0),
(74, 21, 3, '08:30:00', 0),
(75, 21, 3, '09:00:00', 0),
(76, 21, 3, '09:30:00', 0),
(77, 21, 3, '10:00:00', 0),
(78, 21, 3, '10:30:00', 0),
(79, 21, 3, '11:00:00', 0),
(80, 21, 3, '11:30:00', 0);



CREATE TABLE `contatos` (
  `id` int(11) NOT NULL,
  `numero` varchar(12) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `contatos` (`id`, `numero`, `id_usuario`) VALUES
(1, '21984563254', 14),
(2, '22974586650', 14),
(3, '27977542254', 15),
(4, '11985453320', 16),
(5, '21974563320', 17),
(6, '27985456630', 17);


CREATE TABLE `dados_bancarios` (
  `id_dado_bancario` int(11) NOT NULL,
  `nome_do_banco` varchar(60) NOT NULL,
  `numero_agencia` varchar(15) NOT NULL,
  `numero_conta` varchar(15) NOT NULL,
  `chave_pix` varchar(128) NOT NULL,
  `id_usuario` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `dados_bancarios` (`id_dado_bancario`, `nome_do_banco`, `numero_agencia`, `numero_conta`, `chave_pix`, `id_usuario`) VALUES
(3, 'Nubank', '5698', '55485547', '2198554563325', 18),
(4, 'Nubank', '5698', '55485547', '2198554563325', 21),
(5, 'Nubank', '5698', '55485547', '2198554563325', 22),
(6, 'Nubank', '5698', '55485547', '2198554563325', 23),
(7, 'Nubank', '5698', '55485547', '2198554563325', 24);



CREATE TABLE `servicos` (
  `id_servico` int(11) NOT NULL,
  `descricao` varchar(32) NOT NULL,
  `valor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `servicos` (`id_servico`, `descricao`, `valor`) VALUES
(1, 'Corte', 30),
(2, 'Barba', 30);



CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(256) NOT NULL,
  `email` varchar(128) NOT NULL,
  `data_de_nascimento` date NOT NULL,
  `id_grupo` int(11) NOT NULL DEFAULT 1,
  `data_criacao` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `usuarios` (`id_usuario`, `nome`, `email`, `data_de_nascimento`, `id_grupo`, `data_criacao`) VALUES
(14, 'Germnao', 'germ@shjxba.com', '2024-10-09', 1, '2024-10-14 16:59:16'),
(15, 'Germano Silva', 'germano@mail.com', '2000-01-01', 2, '2024-10-14 17:07:11'),
(16, 'Marta Souza', 'marta@mail.com', '2000-01-01', 2, '2024-10-14 17:24:48'),
(17, 'Karol', 'karol@mail.com', '2024-10-28', 1, '2024-10-18 14:40:37'),
(18, 'Isabela', 'isabela@mail.com', '2024-10-02', 1, '2024-10-18 14:40:37'),
(19, 'Jonathan', 'jonathan@mail.com', '2000-01-01', 2, '2024-10-23 17:28:25'),
(20, 'Moacir', 'moacir@mail.com', '2000-01-01', 2, '2024-10-23 17:29:44'),
(21, 'Rudimar', 'rudimar@mail.com', '2000-01-01', 2, '2024-10-23 17:30:33'),
(22, 'Marta Souza', 'marta@mail.com', '2000-01-01', 3, '2024-10-25 14:25:07'),
(23, 'John', 'marta@mail.com', '2000-01-01', 3, '2024-10-25 14:25:19'),
(24, 'Mark', 'marta@mail.com', '2000-01-01', 3, '2024-10-25 14:26:00'),
(25, 'Mariah', 'mariah@mail.com', '2014-11-18', 3, '2024-11-18 20:58:18'),
(26, 'Rose', 'rose@mail.com', '2012-07-28', 3, '2024-11-18 21:05:44');


ALTER TABLE `agendamentos`
  ADD PRIMARY KEY (`id_agendamento`),
  ADD KEY `id_servico` (`id_servico`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_agenda` (`id_agenda`);


ALTER TABLE `agendas`
  ADD PRIMARY KEY (`id_agenda`);

ALTER TABLE `contatos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);


ALTER TABLE `dados_bancarios`
  ADD PRIMARY KEY (`id_dado_bancario`);


ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id_servico`);


ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);


ALTER TABLE `agendamentos`
  MODIFY `id_agendamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;


ALTER TABLE `agendas`
  MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;


ALTER TABLE `contatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


ALTER TABLE `dados_bancarios`
  MODIFY `id_dado_bancario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;


ALTER TABLE `servicos`
  MODIFY `id_servico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;


ALTER TABLE `agendamentos`
  ADD CONSTRAINT `agendamentos_ibfk_1` FOREIGN KEY (`id_servico`) REFERENCES `servicos` (`id_servico`),
  ADD CONSTRAINT `agendamentos_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `agendamentos_ibfk_3` FOREIGN KEY (`id_agenda`) REFERENCES `agendas` (`id_agenda`);


ALTER TABLE `contatos`
  ADD CONSTRAINT `contatos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);
COMMIT;

