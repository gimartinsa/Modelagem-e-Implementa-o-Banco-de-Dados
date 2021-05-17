create database loja;
use loja; 
DROP TABLE IF EXISTS FUNCIONÁRIO;
DROP TABLE IF EXISTS GERENTE;
DROP TABLE IF EXISTS VENDEDOR;
DROP TABLE IF EXISTS FORNCEDOR;
DROP TABLE IF EXISTS COMPRA;
DROP TABLE IF EXISTS PRODUTO;
DROP TABLE IF EXISTS COMPRA_DO_PRODUTO;
DROP TABLE IF EXISTS VENDA;
DROP TABLE IF EXISTS VENDA_TEM_PRODUTO; 
DROP TABLE IF EXISTS CLIENTE;
DROP TABLE IF EXISTS TELEFONES;
DROP TABLE IF EXISTS JURÍDICO;
DROP TABLE IF EXISTS FÍSICO;
DROP TABLE IF EXISTS PISCINEIRO;
DROP TABLE IF EXISTS FISICO_CONTRATA_PISCINEIRO; 


CREATE TABLE FUNCIONÁRIO (
	cpf varchar(12) primary key,
    nome varchar(50),
    tel varchar (20)
);

CREATE TABLE GERENTE (
	cpf varchar(12) primary key,
    sal_mes float,
    email_verificado varchar (50),
    rfid integer,
    foreign key(cpf) references FUNCIONÁRIO (cpf)
);

CREATE TABLE VENDEDOR (
	cpf varchar(12) primary key,
    sal_venda float,
    cod varchar(20),
    nivel integer,
    foreign key(cpf) references FUNCIONÁRIO (cpf)
);

CREATE TABLE FORNECEDOR (
	id integer primary key,
    cnpj varchar(14),
    nome varchar(50)
);

CREATE TABLE COMPRA (
	id integer primary key,
    valor float,
    cpf_gen varchar(12),
    id_fornecedor integer,
    foreign key(cpf_gen) references GERENTE (cpf),
    foreign key(id_fornecedor) references FORNECEDOR (id)
);

CREATE TABLE PRODUTO (
	id integer primary key,
    descricao varchar(200),
    valor float
);

CREATE TABLE COMPRA_DO_PRODUTO(
	id_compra integer,
    id_produto integer,
    foreign key (id_compra) references COMPRA (id),
    foreign key (id_produto) references PRODUTO (id),
    primary key (id_compra, id_produto)
);

CREATE TABLE VENDA (
	id integer primary key,
    dat varchar (20),
    valor float,
    cpf varchar(12),
    foreign key(cpf) references VENDEDOR (cpf)
);

CREATE TABLE VENDA_TEM_PRODUTO (
	id_venda integer,
    id_produto integer,
	foreign key (id_venda) references VENDA (id),
    foreign key (id_produto) references PRODUTO (id),
    primary key (id_venda, id_produto)
);

CREATE TABLE CLIENTE(
	id integer primary key,
    nome varchar (50),
    cupom_desc varchar(6)
);

CREATE TABLE TELEFONES (
	id integer,
    telefone varchar (20),
    primary key (id, telefone),
    foreign key (id) references CLIENTE (id) on delete cascade
);

CREATE TABLE JURIDICO (
	id integer primary key,
    cnpj varchar(14),
    razao_soc varchar (50),
    email varchar(50),
	foreign key (id) references CLIENTE (id)
);

CREATE TABLE FÍSICO (
	id integer primary key,
    rg integer,
    email varchar(50),
    cpf varchar(12),
    foreign key (id) references CLIENTE (id)
);

CREATE TABLE PISCINEIRO (
	cpf varchar(12) primary key,
    horario_disp varchar(50),
    nome varchar(50)
);

CREATE TABLE FISICO_CONTRATA_PISCINEIRO (
	id_fis integer,
    cpf_pisc varchar (12),
	foreign key (id_fis) references FÍSICO (id),
    foreign key (cpf_pisc) references PISCINEIRO (cpf),
    primary key (id_fis, cpf_pisc)
);

drop database loja;
-- https://github.com/gimartinsa/Modelagem-e-Implementa-o-Banco-de-Dados