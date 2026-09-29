create database sistemaHotel;
use sistemaHotel;

create table cliente (
	id bigint auto_increment primary key,
    nome varchar(150) not null,
    cpf varchar(20) not null,
    email varchar(150) not null,
    telefone varchar(20),
    dataNascimento date not null,
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