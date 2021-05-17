-- Professor, arrumei os atributos, vou subir no GITHUB de novo

insert into FUNCIONÁRIO ( cpf, nome, tel) values
('29856433760', 'Maria Eduarda', '43998341755'),
('29856433761', 'Maria Fernanda Oliveira', '43998341755'),
('29856433762', 'Gabriela Silva', '43998341755'),
('29856433763', 'Eduarda Almeida', '43998341755'),
('29856433764', 'Maria Eduarda Martins', '43998341755'),
('29856433765', 'Patricia Almeida', '43998341755'),
('29856433766', 'Victor Martins', '43998341755'),
('29856433767', 'Cristina Almeida', '43998341755'),
('29856433768', 'Dinei Almeida', '43998341755'),
('29856433769', 'Antonio Francisco', '43998341755'),
('29856433710', 'Giovani Martins', '43998341755'),
('29856433711', 'João Victor', '43998341755'),
('29856433712', 'Matheus Oliveira', '43998341755'),
('29856433713', 'Pedro Costa', '43998341755'),
('29856433714', 'Vinicius Sasaki', '43998341755'),
('29856433715', 'Iago Sasaki', '43998341755'),
('29856433716', 'Gabriel Cora', '43998341755'),
('29856433717', 'Maico Costa', '43998341755'),
('29856433718', 'Cassio Almeida', '43998341755'),
('29856433719', 'Antonio Costa', '43998341755');

insert into GERENTE (cpf, sal_mes, email_verificado, rfid) values
('29856433760', 3000, 'genrente1@cloros.com.br', 000),
('29856433761', 3000, 'genrente2@cloros.com.br', 001),
('29856433762', 3000, 'genrente3@cloros.com.br', 002),
('29856433763', 3000, 'genrente4@cloros.com.br', 003),
('29856433764', 3000, 'genrente5@cloros.com.br', 004),
('29856433765', 3000, 'genrente6@cloros.com.br', 005),
('29856433766', 3000, 'genrente7@cloros.com.br', 006),
('29856433767', 3000, 'genrente8@cloros.com.br', 007),
('29856433768', 3000, 'genrente9@cloros.com.br', 008),
('29856433769', 3000, 'genrente0@cloros.com.br', 009);

insert into  VENDEDOR (cpf, sal_venda, cod, nivel) values
('29856433710', 1200, '830', 00),
('29856433711', 1200, '831', 01),
('29856433712', 1200, '832', 02),
('29856433713', 1200, '833', 03),
('29856433714', 1200, '834', 04),
('29856433715', 1200, '835', 05),
('29856433716', 1200, '836', 06),
('29856433717', 1200, '837', 07),
('29856433718', 1200, '838', 08),
('29856433719', 1200, '839', 09);
   
insert into FORNECEDOR ( id, cnpj, nome) values
(000, '98765434523123', 'Juares da Silva'),
(100, '89874524589147', 'Osmar Pereira'),
(200, '87452889878568', 'André Alcantara'),
(300, '02154879568010', 'Gabriel Barboza'),
(400, '21457856587000', 'Douglas Menusi'),
(500, '32154785589968', 'Márcia Alexandre Ferreira Gomes'),
(600, '99988745142500', 'Anésia Francisca Sousa'),
(700, '11114750036599', 'Amanda Cardoso'),
(800, '99996300120304', 'Hugo Mognon'),
(900, '01243258745000', 'Paulo Ricardo');

insert into COMPRA ( id, valor, cpf_gen, id_fornecedor) values
(12, 100.00, '29856433760', 000),
(13, 100.00, '29856433761', 100),
(14, 100.00, '29856433762', 200),
(15, 100.00, '29856433763', 300),
(16, 100.00, '29856433764', 400),
(17, 100.00, '29856433765', 500),
(18, 100.00, '29856433766', 600),
(19, 100.00, '29856433767', 700),
(10, 100.00, '29856433768', 800),
(11, 100.00, '29856433769', 900);
    
insert into PRODUTO (descricao, id, valor) values
('Cloro', 1, 99.99),
('Cloro', 2, 99.99),
('Ph', 3, 202.89),
('Cloro pó', 4, 200.00),
('Balde Cloro', 5, 200.54),
('Ph', 6, 106.00),
('Cloro 2', 7, 101.12),
('Alga', 8, 50.99),
('Boia', 9, 70.00), 
('Cloro tipo 2', 11, 157.03);


insert into COMPRA_DO_PRODUTO( id_compra, id_produto) values
(12, 1),
(13, 2),
(14, 3),
(15, 4),
(16, 5),
(17, 6),
(18, 7),
(19, 8),
(10, 9),
(11, 11);
   
insert into VENDA (id, dat, valor, cpf) values
(000, 1989-01-30, 19.30,'29856433710'),
(010, 2019-02-29, 18.30,'29856433711'),
(020, 2020-02-28, 18.30,'29856433712'),
(030, 2020-02-27, 18.30,'29856433713'),
(040, 2020-02-26, 18.30,'29856433714'),
(050, 2020-02-25, 18.30,'29856433715'),
(060, 2020-02-24, 18.30,'29856433716'),
(070, 2020-02-23, 18.30,'29856433717'),
(080, 2020-02-22, 18.30,'29856433718'),
(090, 2020-02-21, 18.30,'29856433719');


insert into VENDA_TEM_PRODUTO (id_venda, id_produto) values
(000, 1),
(010, 2),
(020, 3),
(030, 3),
(040, 4),
(050, 5),
(060, 6),
(070, 7),
(080, 8),
(090, 9);

insert into CLIENTE(id, nome, cupom_desc) values
(10, 'Ana Clara', 'COD'),
(11, 'Pedro Augusto', 'COD'),
(12, 'Maria Clara', 'COD'),
(13, 'João Victor', 'COD'),
(14, 'Ana Maria', 'COD'),
(15, 'Paulo Antonio', 'COD'),
(16, 'Victor Hugo', 'COD'),
(17, 'Ana Clara', 'COD'),
(18, 'Sandra Maria', 'COD'),
(19, 'Breno Santo', 'COD'),
(20, 'Mateus Paulo', 'COD'),
(21, 'Giovanna Martins', 'COD'),
(22, 'Lucas Santos', 'COD'),
(23, 'Pedro Pereira', 'COD'),
(24, 'José Carlos', 'COD'),
(25, 'Fatima Maria', 'COD'),
(26, 'Antonio Francisco', 'COD'),
(27, 'Caio Pereira', 'COD'),
(28, 'José Antonio', 'COD'),
(29, 'Antonio José', 'COD');


insert into TELEFONES (id, telefone) values
(10, 443629716),
(11, 443629726),
(12, 443629736),
(13, 443629746),
(14, 443629756),
(15, 443629766),
(16, 443629776),
(17, 443629796),
(18, 443629796),
(19, 443629706);

insert into JURIDICO (id, cnpj, razao_soc, email) values
(10, 12257612112514, 'cloro sa', 'cloro@hotmail.com'),
(11, 12257612112515, 'cloro1 sa', 'cloro1@hotmail.com'),
(12, 12257612112516, 'cloro2 sa', 'cloro2@hotmail.com'),
(13, 12257612112514, 'cloro3 sa', 'cloro3@hotmail.com'),
(14, 12257612112514, 'cloro4 sa', 'cloro4@hotmail.com'),
(15, 12257612112514, 'cloro5 sa', 'cloro5@hotmail.com'),
(16, 12257612112514, 'cloro6 sa', 'cloro6@hotmail.com'),
(17, 12257612112514, 'cloro7 sa', 'cloro7@hotmail.com'),
(18, 12257612112514, 'cloro8 sa', 'cloro8@hotmail.com'),
(19, 12257612112514, 'cloro9 sa', 'cloro9@hotmail.com');

insert into FÍSICO (id, rg, email, cpf) values
(20, 133211569, 'mateus@hotmail.com', 123123123),
(21, 133211569, 'giovanna@hotmail.com', 123123127),
(22, 133211569, 'lucas@hotmail.com', 123123125),
(23, 133211569, 'pedro@hotmail.com', 123123126),
(24, 133211569, 'jose@hotmail.com', 123123129),
(25, 133211569, 'fatima@hotmail.com', 12312311),
(26, 133211569, 'antonio1@hotmail.com', 1231231),
(27, 133211569, 'caio@hotmail.com', 123123122),
(28, 133211569, 'jose@hotmail.com', 123123563),
(29, 133211569, 'antonio@hotmail.com', 12312423);

insert into PISCINEIRO (cpf, horario_disp, nome) values
('1235689', '11:00', 'Carlos'),
('1235688', '11:00', 'Pedro'),
('1235687', '11:00', 'Paulo'),
('1235686', '11:00', 'Andre'),
('1235685', '11:00', 'Antonio'),
('1235684', '11:00', 'Lucas'),
('1235683', '11:00', 'Caio'),
('1235682', '11:00', 'Jaime'),
('1235681', '11:00', 'Jairo'),
('1235680', '11:00', 'Leonardo');


insert into FISICO_CONTRATA_PISCINEIRO (id_fis, cpf_pisc) values
(20,'1235689'),
(21,'1235688'),
(22,'1235687'),
(23,'1235686'),
(24,'1235685'),
(25,'1235684'),
(26,'1235683'),
(27,'1235682'),
(28,'1235681'),
(29,'1235680');
