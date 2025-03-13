create database Ruas; 

use Ruas; 

create table Continente (
  id_continente int primary key,
  nome_continente varchar(100) not null
);

create table pais (
  id_pais int primary key,
  nome_pais varchar(255) not null,
  id_continente int,
  foreign key (id_continente) references continente(id_continente)
);

create table estado (
  id_estado int primary key,
  nome_estado varchar(255) not null,
  id_pais int,
  foreign key (id_pais) references pais(id_pais)
);

create table cidade (
  id_cidade int primary key,
  nome_cidade varchar(255) not null,
  id_estado int,
  foreign key (id_estado) references estado(id_estado)
);

create table bairro (
  id_bairro int primary key,
  nome_bairro varchar(255) not null,
  id_cidade int,
  foreign key (id_cidade) references cidade(id_cidade)
);

create table rua (
  id_rua int primary key,
  nome_rua varchar(255) not null,
  id_bairro int,
  foreign key (id_bairro) references bairro(id_bairro)
);

insert into continente (id_continente, nome_continente) values
(1, 'África'),
(2, 'América'),
(3, 'Ásia'),
(4, 'Europa'),
(5, 'Oceania');

insert into pais (id_pais, nome_pais, id_continente) values
(1, 'Brasil', 2),
(2, 'Argentina', 2),
(3, 'Estados Unidos', 2),
(4, 'Alemanha', 4),
(5, 'França', 4),
(6, 'Japão', 3),
(7, 'China', 3),
(8, 'Itália', 4),
(9, 'Austrália', 5),
(10, 'Canadá', 2),
(11, 'México', 2),
(12, 'Índia', 3),
(13, 'Egito', 1),
(14, 'África do Sul', 1),
(15, 'Espanha', 4);

insert into estado (id_estado, nome_estado, id_pais) values
(1, 'São Paulo', 1),
(2, 'Rio de Janeiro', 1),
(3, 'Buenos Aires', 2),
(4, 'Califórnia', 3),
(5, 'Baviera', 4),
(6, 'Paris', 5),
(7, 'Osaka', 6),
(8, 'Sichuan', 7),
(9, 'Lombardia', 8),
(10, 'Queensland', 9),
(11, 'Ontário', 10),
(12, 'Yucatán', 11),
(13, 'Cairo', 13),
(14, 'Gauteng', 14),
(15, 'Andaluzia', 15);

insert into cidade (id_cidade, nome_cidade, id_estado) values
(1, 'São Paulo', 1),
(2, 'Rio de Janeiro', 2),
(3, 'Mendoza', 3),
(4, 'Los Angeles', 4),
(5, 'Munich', 5),
(6, 'Paris', 6),
(7, 'Kyoto', 7),
(8, 'Chengdu', 8),
(9, 'Milão', 9),
(10, 'Brisbane', 10),
(11, 'Toronto', 11),
(12, 'Mérida', 12),
(13, 'Alexandria', 13),
(14, 'Joanesburgo', 14),
(15, 'Sevilha', 15);

insert into cidade (id_cidade, nome_cidade, id_estado) values
(16, 'Buenos Aires', 3),
(17, 'Londres', 6),
(18, 'Roma', 9),
(19, 'Tóquio', 7),
(20, 'Pequim', 8),
(21, 'Sydney', 10),
(22, 'Vancouver', 11),
(23, 'Cairo', 13),
(24, 'Durban', 14),
(25, 'Barcelona', 15),
(26, 'Santiago', 3),
(27, 'Amsterdã', 5),
(28, 'Viena', 6),
(29, 'Cape Town', 14),
(30, 'Valência', 15);

insert into bairro (id_bairro, nome_bairro, id_cidade) values
(1, 'Centro', 1),
(2, 'Zona Leste', 1),
(3, 'Barra', 2),
(4, 'Copacabana', 2),
(5, 'San Telmo', 3),
(6, 'Hollywood', 4),
(7, 'Marienplatz', 5),
(8, 'Montmartre', 6),
(9, 'Gion', 7),
(10, 'Wuhou', 8),
(11, 'Navigli', 9),
(12, 'South Bank', 10),
(13, 'Scarborough', 11),
(14, 'Centro Histórico', 12),
(15, 'Zamalek', 13),
(16, 'Campo Belo', 14),
(17, 'Campo Grande', 15),
(18, 'Jardim Paulista', 1),
(19, 'Vila Madalena', 1),
(20, 'Beverly Hills', 4),
(21, 'Lapa', 3),
(22, 'Champs-Élysées', 6),
(23, 'Japonês', 7),
(24, 'Roma', 9),
(25, 'Avenida Paulista', 1),
(26, 'Faria Lima', 1),
(27, 'Soho', 12),
(28, 'Centro de Londres', 5),
(29, 'Sagrada Família', 15),
(30, 'Avenida Central', 13);

insert into rua (id_rua, nome_rua, id_bairro) values
(1, 'Rua Augusta', 1),
(2, 'Rua 25 de Março', 1),
(3, 'Rua Visconde de Pirajá', 2),
(4, 'Rua do Ouvidor', 3),
(5, 'Avenida Paulista', 1),
(6, 'Rua Frei Caneca', 2),
(7, 'Rua Consolação', 2),
(8, 'Rua Rio Branco', 4),
(9, 'Rua São João', 5),
(10, 'Rua Foca', 6),
(11, 'Rua Belleville', 7),
(12, 'Rua Collin de Varennes', 8),
(13, 'Rua Boulevarde', 9),
(14, 'Rua Morumbi', 10),
(15, 'Rua Lamarca', 11),
(16, 'Rua Galvão', 12),
(17, 'Rua Taguari', 13),
(18, 'Rua Barbosa', 14),
(19, 'Rua Rio Sol', 15),
(20, 'Rua Monte Claro', 16),
(21, 'Rua do Brasil', 17),
(22, 'Rua Paulista', 18),
(23, 'Rua Alagoas', 19),
(24, 'Rua Pelotas', 20),
(25, 'Rua São Francisco', 21),
(26, 'Rua Flor de Lótus', 22),
(27, 'Rua Nova', 23),
(28, 'Rua Solar', 24),
(29, 'Rua Pimentel', 25),
(30, 'Rua da Liberdade', 26),
(31, 'Rua Avenida', 27),
(32, 'Rua do Sol', 28),
(33, 'Rua Paraná', 29),
(34, 'Rua Solstício', 30),
(35, 'Rua Céu Azul', 16),
(36, 'Rua Rosa', 17),
(37, 'Rua do Príncipe', 6),
(38, 'Rua das Acácias', 18),
(39, 'Rua da Paz', 17),
(40, 'Rua do Campo', 16),
(41, 'Rua do Sol', 15),
(42, 'Rua de Flores', 15),
(43, 'Rua da Areia', 18),
(44, 'Rua das Estrelas', 5),
(45, 'Rua Central', 10),
(46, 'Rua Belo Horizonte', 11),
(47, 'Rua Princesa Isabel', 12),
(48, 'Rua Novo Mundo', 14),
(49, 'Rua da Morte', 13),
(50, 'Rua da Vida', 14);



select * from bairro;

select * from rua;

select nome_rua from rua where id_rua = 37;

select nome_bairro from bairro where id_bairro = 12;

select nome_cidade from cidade where id_cidade = 29;

select nome_estado from estado where id_estado = 9;

select nome_pais from pais where id_pais = 19;

select nome_continente from continente where id_continente = 4;

alter table Continente add populacao int;

alter table pais add populacao int;

alter table estado add populacao int;

alter table cidade add populacao int;

alter table bairro add populacao int;

alter table rua add populacao int;

SET SQL_SAFE_UPDATES=0;
update Continente set populacao= 1243100 where id_Continente=5;

SET SQL_SAFE_UPDATES=0;
update pais set populacao= 1243100 where id_pais=1;
update pais set populacao = 2345000 where id_pais = 2;
update pais set populacao = 3456700 where id_pais = 3;
update pais set populacao = 4567800 where id_pais = 4;
update pais set populacao = 5678900 where id_pais = 5;
update pais set populacao = 6789100 where id_pais = 6;
update pais set populacao = 7890120 where id_pais = 7;
update pais set populacao = 8901230 where id_pais = 8;
update pais set populacao = 9012340 where id_pais = 9;
update pais set populacao = 1234500 where id_pais = 10;
update pais set populacao = 2345610 where id_pais = 11;
update pais set populacao = 3456720 where id_pais = 12;
update pais set populacao = 4567830 where id_pais = 13;
update pais set populacao = 5678940 where id_pais = 14;
update pais set populacao = 6789050 where id_pais = 15;

SET SQL_SAFE_UPDATES=0;
update estado set populacao= 1243100 where id_estado=1;
update estado set populacao = 2345000 where id_estado = 2;
update estado set populacao = 3456700 where id_estado = 3;
update estado set populacao = 4567800 where id_estado = 4;
update estado set populacao = 5678900 where id_estado = 5;
update estado set populacao = 6789100 where id_estado = 6;
update estado set populacao = 7890120 where id_estado = 7;
update estado set populacao = 8901230 where id_estado = 8;
update estado set populacao = 9012340 where id_estado = 9;
update estado set populacao = 1234500 where id_estado = 10;
update estado set populacao = 2345610 where id_estado = 11;
update estado set populacao = 3456720 where id_estado = 12;
update estado set populacao = 4567830 where id_estado = 13;
update estado set populacao = 5678940 where id_estado = 14;
update estado set populacao = 6789050 where id_estado = 15;
update estado set populacao = 7890160 where id_estado = 16;
update estado set populacao = 8901270 where id_estado = 17;
update estado set populacao = 9012380 where id_estado = 18;
update estado set populacao = 1234600 where id_estado = 19;
update estado set populacao = 2345720 where id_estado = 20;
update estado set populacao = 3456840 where id_estado = 21;
update estado set populacao = 4567950 where id_estado = 22;
update estado set populacao = 5679060 where id_estado = 23;
update estado set populacao = 6789170 where id_estado = 24;
update estado set populacao = 7890280 where id_estado = 25;
update estado set populacao = 8901390 where id_estado = 26;
update estado set populacao = 9012500 where id_estado = 27;
update estado set populacao = 1234700 where id_estado = 28;
update estado set populacao = 2345830 where id_estado = 29;
update estado set populacao = 3456950 where id_estado = 30;


SET SQL_SAFE_UPDATES=0;
update cidade set populacao= 1243100 where id_cidade=1;
update cidade set populacao = 2345000 where id_cidade = 2;
update cidade set populacao = 3456700 where id_cidade = 3;
update cidade set populacao = 4567800 where id_cidade = 4;
update cidade set populacao = 5678900 where id_cidade = 5;
update cidade set populacao = 6789100 where id_cidade = 6;
update cidade set populacao = 7890120 where id_cidade = 7;
update cidade set populacao = 8901230 where id_cidade = 8;
update cidade set populacao = 9012340 where id_cidade = 9;
update cidade set populacao = 1234500 where id_cidade = 10;
update cidade set populacao = 2345610 where id_cidade = 11;
update cidade set populacao = 3456720 where id_cidade = 12;
update cidade set populacao = 4567830 where id_cidade = 13;
update cidade set populacao = 5678940 where id_cidade = 14;
update cidade set populacao = 6789050 where id_cidade = 15;
update cidade set populacao = 7890160 where id_cidade = 16;
update cidade set populacao = 8901270 where id_cidade = 17;
update cidade set populacao = 9012380 where id_cidade = 18;
update cidade set populacao = 1234600 where id_cidade = 19;
update cidade set populacao = 2345720 where id_cidade = 20;
update cidade set populacao = 3456840 where id_cidade = 21;
update cidade set populacao = 4567950 where id_cidade = 22;
update cidade set populacao = 5679060 where id_cidade = 23;
update cidade set populacao = 6789170 where id_cidade = 24;
update cidade set populacao = 7890280 where id_cidade = 25;
update cidade set populacao = 8901390 where id_cidade = 26;
update cidade set populacao = 9012500 where id_cidade = 27;
update cidade set populacao = 1234700 where id_cidade = 28;
update cidade set populacao = 2345830 where id_cidade = 29;
update cidade set populacao = 3456950 where id_cidade = 30;


select * from continente where populacao = (select max(populacao) from continente);
select * from continente where populacao = (select min(populacao) from continente);
 
select * from pais where populacao = (select max(populacao) from pais);
select * from pais where populacao = (select min(populacao) from pais);
 
select * from estado where populacao = (select max(populacao) from estado);
select * from estado where populacao = (select min(populacao) from estado);
 
select * from cidade where populacao = (select max(populacao) from cidade);
select * from cidade where populacao = (select min(populacao) from cidade);

select * from continente;

select * from pais;

select * from estado;

select * from cidade;
