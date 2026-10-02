create database sistemaHotel;
use sistemaHotel;

create table cliente (
	id bigint auto_increment primary key,
    nome varchar(150) not null,
    cpf varchar(20) not null,
    email varchar(150) not null,
    telefone varchar(20),
    data_nascimento date not null,
    endereco varchar(150) not null
);

create table quarto (
	id bigint auto_increment primary key,
    numero int not null unique,
    tipo enum('SIMPLES', 'DUPLO', 'SUITE', 'SUITE_PRESIDENCIAL') not null,
    capacidade int not null,
    preco double not null,
    status_quarto enum('DISPONIVEL', 'RESERVADO', 'OCUPADO', 'EM_LIMPEZA', 'MANUTENCAO')
);

create table reserva (
	id bigint auto_increment primary key,
    id_cliente bigint not null,
    id_quarto bigint not null,
    check_in date not null,
    check_out date not null,
    hospedes int not null,
    valor double not null
);
-- ============================================
-- 50 CLIENTES
-- ============================================

INSERT INTO cliente
(nome, cpf, email, telefone, data_nascimento, endereco)
VALUES
('João da Silva', '111.111.111-01', 'joao.silva@email.com', '(47) 99901-0001', '1990-01-15', 'Rua das Flores, 101'),
('Maria Santos', '111.111.111-02', 'maria.santos@email.com', '(47) 99901-0002', '1988-03-22', 'Rua das Palmeiras, 202'),
('Carlos Oliveira', '111.111.111-03', 'carlos.oliveira@email.com', '(47) 99901-0003', '1992-07-10', 'Rua Brasil, 303'),
('Ana Souza', '111.111.111-04', 'ana.souza@email.com', '(47) 99901-0004', '1995-11-05', 'Rua São Paulo, 404'),
('Pedro Costa', '111.111.111-05', 'pedro.costa@email.com', '(47) 99901-0005', '1985-09-18', 'Rua Central, 505'),
('Juliana Alves', '111.111.111-06', 'juliana.alves@email.com', '(47) 99901-0006', '1993-04-12', 'Rua XV de Novembro, 606'),
('Rafael Pereira', '111.111.111-07', 'rafael.pereira@email.com', '(47) 99901-0007', '1991-06-30', 'Rua Blumenau, 707'),
('Fernanda Lima', '111.111.111-08', 'fernanda.lima@email.com', '(47) 99901-0008', '1996-02-25', 'Rua Joinville, 808'),
('Lucas Martins', '111.111.111-09', 'lucas.martins@email.com', '(47) 99901-0009', '1989-08-14', 'Rua Curitiba, 909'),
('Camila Rodrigues', '111.111.111-10', 'camila.rodrigues@email.com', '(47) 99901-0010', '1994-12-03', 'Rua Paraná, 1010'),
('Bruno Ferreira', '111.111.111-11', 'bruno.ferreira@email.com', '(47) 99901-0011', '1987-05-21', 'Rua Amazonas, 1111'),
('Patrícia Gomes', '111.111.111-12', 'patricia.gomes@email.com', '(47) 99901-0012', '1990-10-09', 'Rua Bahia, 1212'),
('Diego Ribeiro', '111.111.111-13', 'diego.ribeiro@email.com', '(47) 99901-0013', '1992-01-28', 'Rua Ceará, 1313'),
('Larissa Carvalho', '111.111.111-14', 'larissa.carvalho@email.com', '(47) 99901-0014', '1997-07-16', 'Rua Goiás, 1414'),
('Gustavo Mendes', '111.111.111-15', 'gustavo.mendes@email.com', '(47) 99901-0015', '1986-03-11', 'Rua Minas Gerais, 1515'),
('Beatriz Barbosa', '111.111.111-16', 'beatriz.barbosa@email.com', '(47) 99901-0016', '1995-09-27', 'Rua Bahia, 1616'),
('Thiago Nunes', '111.111.111-17', 'thiago.nunes@email.com', '(47) 99901-0017', '1989-11-19', 'Rua Santa Catarina, 1717'),
('Mariana Castro', '111.111.111-18', 'mariana.castro@email.com', '(47) 99901-0018', '1993-06-08', 'Rua Rio Grande, 1818'),
('Felipe Moreira', '111.111.111-19', 'felipe.moreira@email.com', '(47) 99901-0019', '1991-02-17', 'Rua São José, 1919'),
('Amanda Teixeira', '111.111.111-20', 'amanda.teixeira@email.com', '(47) 99901-0020', '1996-08-24', 'Rua das Acácias, 2020'),
('André Rocha', '111.111.111-21', 'andre.rocha@email.com', '(47) 99901-0021', '1984-04-06', 'Rua das Orquídeas, 2121'),
('Letícia Dias', '111.111.111-22', 'leticia.dias@email.com', '(47) 99901-0022', '1998-01-13', 'Rua das Rosas, 2222'),
('Rodrigo Freitas', '111.111.111-23', 'rodrigo.freitas@email.com', '(47) 99901-0023', '1988-10-31', 'Rua das Acácias, 2323'),
('Isabela Ramos', '111.111.111-24', 'isabela.ramos@email.com', '(47) 99901-0024', '1994-05-15', 'Rua do Comércio, 2424'),
('Marcelo Correia', '111.111.111-25', 'marcelo.correia@email.com', '(47) 99901-0025', '1985-12-20', 'Rua do Mercado, 2525'),
('Natália Vieira', '111.111.111-26', 'natalia.vieira@email.com', '(47) 99901-0026', '1997-03-07', 'Rua da Paz, 2626'),
('Eduardo Monteiro', '111.111.111-27', 'eduardo.monteiro@email.com', '(47) 99901-0027', '1990-07-22', 'Rua da Liberdade, 2727'),
('Carolina Cardoso', '111.111.111-28', 'carolina.cardoso@email.com', '(47) 99901-0028', '1992-09-14', 'Rua da Alegria, 2828'),
('Vinícius Azevedo', '111.111.111-29', 'vinicius.azevedo@email.com', '(47) 99901-0029', '1987-06-18', 'Rua da Harmonia, 2929'),
('Gabriela Pinto', '111.111.111-30', 'gabriela.pinto@email.com', '(47) 99901-0030', '1995-11-29', 'Rua da Amizade, 3030'),
('Renato Farias', '111.111.111-31', 'renato.farias@email.com', '(47) 99901-0031', '1989-02-09', 'Rua do Sol, 3131'),
('Bianca Lopes', '111.111.111-32', 'bianca.lopes@email.com', '(47) 99901-0032', '1996-06-23', 'Rua da Lua, 3232'),
('Henrique Duarte', '111.111.111-33', 'henrique.duarte@email.com', '(47) 99901-0033', '1986-08-12', 'Rua das Estrelas, 3333'),
('Sabrina Moura', '111.111.111-34', 'sabrina.moura@email.com', '(47) 99901-0034', '1993-10-05', 'Rua do Horizonte, 3434'),
('Leonardo Batista', '111.111.111-35', 'leonardo.batista@email.com', '(47) 99901-0035', '1991-12-16', 'Rua da Montanha, 3535'),
('Priscila Antunes', '111.111.111-36', 'priscila.antunes@email.com', '(47) 99901-0036', '1998-04-28', 'Rua do Lago, 3636'),
('Daniel Borges', '111.111.111-37', 'daniel.borges@email.com', '(47) 99901-0037', '1988-07-09', 'Rua da Serra, 3737'),
('Vanessa Tavares', '111.111.111-38', 'vanessa.tavares@email.com', '(47) 99901-0038', '1994-01-26', 'Rua do Parque, 3838'),
('Maurício Rezende', '111.111.111-39', 'mauricio.rezende@email.com', '(47) 99901-0039', '1985-05-17', 'Rua das Palmeiras, 3939'),
('Aline Coelho', '111.111.111-40', 'aline.coelho@email.com', '(47) 99901-0040', '1997-09-03', 'Rua das Flores, 4040'),
('Fábio Neves', '111.111.111-41', 'fabio.neves@email.com', '(47) 99901-0041', '1990-03-25', 'Rua do Bosque, 4141'),
('Renata Guimarães', '111.111.111-42', 'renata.guimaraes@email.com', '(47) 99901-0042', '1992-11-08', 'Rua das Palmeiras, 4242'),
('Alexandre Pires', '111.111.111-43', 'alexandre.pires@email.com', '(47) 99901-0043', '1987-04-19', 'Rua do Porto, 4343'),
('Débora Cavalcante', '111.111.111-44', 'debora.cavalcante@email.com', '(47) 99901-0044', '1995-08-27', 'Rua da Praia, 4444'),
('Wesley Martins', '111.111.111-45', 'wesley.martins@email.com', '(47) 99901-0045', '1993-02-14', 'Rua do Farol, 4545'),
('Cristina Andrade', '111.111.111-46', 'cristina.andrade@email.com', '(47) 99901-0046', '1989-06-11', 'Rua das Gaivotas, 4646'),
('Igor Santana', '111.111.111-47', 'igor.santana@email.com', '(47) 99901-0047', '1996-10-22', 'Rua do Mar, 4747'),
('Tatiane Melo', '111.111.111-48', 'tatiane.melo@email.com', '(47) 99901-0048', '1991-01-05', 'Rua da Enseada, 4848'),
('Caio Fonseca', '111.111.111-49', 'caio.fonseca@email.com', '(47) 99901-0049', '1988-12-13', 'Rua do Mirante, 4949'),
('Luana Sales', '111.111.111-50', 'luana.sales@email.com', '(47) 99901-0050', '1997-05-30', 'Rua do Jardim, 5050');


-- ============================================
-- 50 QUARTOS
-- ============================================

INSERT INTO quarto
(numero, tipo, capacidade, preco, status_quarto)
VALUES
(101, 'SIMPLES', 1, 120.00, 'DISPONIVEL'),
(102, 'SIMPLES', 1, 120.00, 'OCUPADO'),
(103, 'SIMPLES', 2, 150.00, 'DISPONIVEL'),
(104, 'SIMPLES', 2, 150.00, 'RESERVADO'),
(105, 'SIMPLES', 2, 160.00, 'DISPONIVEL'),
(106, 'SIMPLES', 1, 110.00, 'EM_LIMPEZA'),
(107, 'SIMPLES', 2, 155.00, 'DISPONIVEL'),
(108, 'SIMPLES', 1, 115.00, 'MANUTENCAO'),
(109, 'SIMPLES', 2, 160.00, 'DISPONIVEL'),
(110, 'SIMPLES', 1, 120.00, 'OCUPADO'),

(201, 'DUPLO', 2, 220.00, 'DISPONIVEL'),
(202, 'DUPLO', 2, 230.00, 'RESERVADO'),
(203, 'DUPLO', 2, 240.00, 'DISPONIVEL'),
(204, 'DUPLO', 3, 260.00, 'OCUPADO'),
(205, 'DUPLO', 2, 225.00, 'DISPONIVEL'),
(206, 'DUPLO', 3, 280.00, 'DISPONIVEL'),
(207, 'DUPLO', 2, 235.00, 'EM_LIMPEZA'),
(208, 'DUPLO', 2, 245.00, 'DISPONIVEL'),
(209, 'DUPLO', 3, 270.00, 'RESERVADO'),
(210, 'DUPLO', 2, 220.00, 'DISPONIVEL'),

(301, 'SUITE', 2, 350.00, 'DISPONIVEL'),
(302, 'SUITE', 3, 380.00, 'OCUPADO'),
(303, 'SUITE', 2, 360.00, 'DISPONIVEL'),
(304, 'SUITE', 4, 420.00, 'RESERVADO'),
(305, 'SUITE', 3, 390.00, 'DISPONIVEL'),
(306, 'SUITE', 2, 350.00, 'DISPONIVEL'),
(307, 'SUITE', 4, 450.00, 'OCUPADO'),
(308, 'SUITE', 3, 400.00, 'DISPONIVEL'),
(309, 'SUITE', 2, 370.00, 'EM_LIMPEZA'),
(310, 'SUITE', 4, 440.00, 'DISPONIVEL'),

(401, 'SUITE_PRESIDENCIAL', 4, 800.00, 'DISPONIVEL'),
(402, 'SUITE_PRESIDENCIAL', 5, 900.00, 'RESERVADO'),
(403, 'SUITE_PRESIDENCIAL', 4, 850.00, 'DISPONIVEL'),
(404, 'SUITE_PRESIDENCIAL', 6, 1000.00, 'OCUPADO'),
(405, 'SUITE_PRESIDENCIAL', 4, 850.00, 'DISPONIVEL'),
(406, 'SUITE_PRESIDENCIAL', 5, 950.00, 'DISPONIVEL'),
(407, 'SUITE_PRESIDENCIAL', 6, 1100.00, 'RESERVADO'),
(408, 'SUITE_PRESIDENCIAL', 4, 820.00, 'DISPONIVEL'),
(409, 'SUITE_PRESIDENCIAL', 5, 980.00, 'EM_LIMPEZA'),
(410, 'SUITE_PRESIDENCIAL', 6, 1200.00, 'DISPONIVEL'),

(501, 'SIMPLES', 1, 125.00, 'DISPONIVEL'),
(502, 'DUPLO', 2, 230.00, 'OCUPADO'),
(503, 'SUITE', 3, 380.00, 'DISPONIVEL'),
(504, 'SUITE_PRESIDENCIAL', 5, 950.00, 'RESERVADO'),
(505, 'SIMPLES', 2, 155.00, 'DISPONIVEL'),
(506, 'DUPLO', 3, 275.00, 'DISPONIVEL'),
(507, 'SUITE', 4, 430.00, 'OCUPADO'),
(508, 'SUITE_PRESIDENCIAL', 6, 1150.00, 'DISPONIVEL'),
(509, 'SIMPLES', 1, 120.00, 'EM_LIMPEZA'),
(510, 'DUPLO', 2, 240.00, 'DISPONIVEL');


-- ============================================
-- 50 RESERVAS
-- ============================================

INSERT INTO reserva
(id_cliente, id_quarto, check_in, check_out, hospedes, valor)
VALUES
(1, 1, '2026-10-02', '2026-10-04', 1, 240.00),
(2, 2, '2026-10-03', '2026-10-06', 1, 360.00),
(3, 3, '2026-10-05', '2026-10-08', 2, 450.00),
(4, 4, '2026-10-07', '2026-10-10', 2, 450.00),
(5, 5, '2026-10-10', '2026-10-13', 2, 480.00),
(6, 6, '2026-10-12', '2026-10-15', 1, 330.00),
(7, 7, '2026-10-14', '2026-10-17', 2, 465.00),
(8, 8, '2026-10-16', '2026-10-18', 1, 230.00),
(9, 9, '2026-10-18', '2026-10-21', 2, 480.00),
(10, 10, '2026-10-20', '2026-10-23', 1, 360.00),

(11, 11, '2026-10-22', '2026-10-25', 2, 660.00),
(12, 12, '2026-10-24', '2026-10-27', 2, 690.00),
(13, 13, '2026-10-26', '2026-10-29', 2, 720.00),
(14, 14, '2026-10-28', '2026-10-31', 3, 780.00),
(15, 15, '2026-11-01', '2026-11-04', 2, 675.00),
(16, 16, '2026-11-03', '2026-11-06', 3, 840.00),
(17, 17, '2026-11-05', '2026-11-08', 2, 705.00),
(18, 18, '2026-11-07', '2026-11-10', 2, 735.00),
(19, 19, '2026-11-09', '2026-11-12', 3, 810.00),
(20, 20, '2026-11-11', '2026-11-14', 2, 660.00),

(21, 21, '2026-11-13', '2026-11-16', 2, 1050.00),
(22, 22, '2026-11-15', '2026-11-18', 3, 1140.00),
(23, 23, '2026-11-17', '2026-11-20', 2, 1080.00),
(24, 24, '2026-11-19', '2026-11-22', 4, 1260.00),
(25, 25, '2026-11-21', '2026-11-24', 3, 1170.00),
(26, 26, '2026-11-23', '2026-11-26', 2, 1050.00),
(27, 27, '2026-11-25', '2026-11-28', 4, 1350.00),
(28, 28, '2026-11-27', '2026-11-30', 3, 1200.00),
(29, 29, '2026-11-29', '2026-12-02', 2, 1110.00),
(30, 30, '2026-12-01', '2026-12-04', 4, 1320.00),

(31, 31, '2026-12-03', '2026-12-06', 4, 2400.00),
(32, 32, '2026-12-05', '2026-12-08', 5, 2700.00),
(33, 33, '2026-12-07', '2026-12-10', 4, 2550.00),
(34, 34, '2026-12-09', '2026-12-12', 6, 3000.00),
(35, 35, '2026-12-11', '2026-12-14', 4, 2550.00),
(36, 36, '2026-12-13', '2026-12-16', 5, 2850.00),
(37, 37, '2026-12-15', '2026-12-18', 6, 3300.00),
(38, 38, '2026-12-17', '2026-12-20', 4, 2460.00),
(39, 39, '2026-12-19', '2026-12-22', 5, 2940.00),
(40, 40, '2026-12-21', '2026-12-24', 6, 3600.00),

(41, 41, '2026-12-23', '2026-12-25', 1, 250.00),
(42, 42, '2026-12-26', '2026-12-29', 2, 690.00),
(43, 43, '2026-12-28', '2026-12-31', 3, 1140.00),
(44, 44, '2027-01-02', '2027-01-05', 5, 2850.00),
(45, 45, '2027-01-04', '2027-01-07', 2, 465.00),
(46, 46, '2027-01-06', '2027-01-09', 3, 825.00),
(47, 47, '2027-01-08', '2027-01-11', 4, 1290.00),
(48, 48, '2027-01-10', '2027-01-13', 6, 3450.00),
(49, 49, '2027-01-12', '2027-01-15', 1, 360.00),
(50, 50, '2027-01-14', '2027-01-17', 2, 720.00);
