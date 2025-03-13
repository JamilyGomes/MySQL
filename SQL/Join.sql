create database clientes;
use clientes;

create table estado (
    id_estado int auto_increment primary key,
    estado varchar(100) not null
);

create table cidade (
    id_cidade int auto_increment primary key,
    cidade varchar(100) not null,
    id_estado int,
    foreign key (id_estado) references estado (id_estado)
);

create table sexo (
    id_sexo int auto_increment primary key,
    sexo varchar(10) not null
);

create table nacionalidade (
    id_nacionalidade int auto_increment primary key,
    nacionalidade varchar(100) not null
);

create table raca (
    id_raca int auto_increment primary key,
    raca varchar(100) not null
);

create table escolaridade (
    id_escolaridade int auto_increment primary key,
    escolaridade varchar(100) not null
);

create table cliente (
    cpf varchar(14) primary key,
    nome varchar(100) not null,
    rg varchar(20),
    id_cidade int,
    id_sexo int,
    id_nacionalidade int,
    fone varchar(15),
    id_raca int,
    id_escolaridade int,
    foreign key (id_cidade) references cidade(id_cidade),
    foreign key (id_sexo) references sexo(id_sexo),
    foreign key (id_nacionalidade) references nacionalidade(id_nacionalidade),
    foreign key (id_raca) references raca(id_raca),
    foreign key (id_escolaridade) references escolaridade(id_escolaridade)
);

insert into estado (estado) values
('acre'), ('alagoas'), ('amazonas'), ('bahia'), ('ceará'),
('espírito santo'), ('goiás'), ('maranhão'), ('mato grosso'),
('mato grosso do sul'), ('minas gerais'), ('pará'), ('paraíba'),
('paraná'), ('pernambuco'), ('piauí'), ('rio de janeiro'),
('rio grande do norte'), ('rio grande do sul'), ('rondônia'),
('roraima'), ('santa catarina'), ('são paulo'), ('sergipe'),
('tocantins'), ('distrito federal');

insert into cidade (cidade, id_estado) values
('rio branco', 1), ('cruzeiro do sul', 1), ('sena madureira', 1),
('tarauacá', 1), ('feijó', 1), ('maceió', 2), ('arapiraca', 2),
('palmeira dos índios', 2), ('rio largo', 2), ('delmiro gouveia', 2),
('manaus', 3), ('parintins', 3), ('itacoatiara', 3), ('tabatinga', 3),
('tefé', 3), ('salvador', 4), ('feira de santana', 4), ('vitória da conquista', 4),
('camaçari', 4), ('itabuna', 4), ('fortaleza', 5), ('juazeiro do norte', 5),
('sobral', 5), ('caucaia', 5), ('crato', 5), ('vitória', 6), ('vila velha', 6),
('serra', 6), ('cariacica', 6), ('linhares', 6), ('goiânia', 7), ('anápolis', 7),
('aparecida de goiânia', 7), ('rio verde', 7), ('catalão', 7), ('são luís', 8),
('imperatriz', 8), ('caxias', 8), ('açailândia', 8), ('timom', 8), ('cuiabá', 9),
('várzea grande', 9), ('rondonópolis', 9), ('sinop', 9), ('tangará da serra', 9),
('campo grande', 10), ('dourados', 10), ('três lagoas', 10), ('corumbá', 10),
('ponta porã', 10), ('belo horizonte', 11), ('uberlândia', 11), ('contagem', 11),
('juiz de fora', 11), ('montes claros', 11), ('belém', 12), ('ananindeua', 12),
('santarém', 12), ('marabá', 12), ('parauapebas', 12), ('joão pessoa', 13),
('campina grande', 13), ('patos', 13), ('cajazeiras', 13), ('santa rita', 13),
('curitiba', 14), ('londrina', 14), ('maringá', 14), ('ponta grossa', 14),
('cascavel', 14), ('recife', 15), ('olinda', 15), ('jaboatão dos guararapes', 15),
('caruaru', 15), ('petrolina', 15), ('teresina', 16), ('parnaíba', 16),
('picos', 16), ('floriano', 16), ('campo maior', 16), ('rio de janeiro', 17),
('niterói', 17), ('nova iguaçu', 17), ('duque de caxias', 17), ('são gonçalo', 17),
('natal', 18), ('mossoró', 18), ('parnamirim', 18), ('caicó', 18), ('assú', 18),
('porto alegre', 19), ('caxias do sul', 19), ('pelotas', 19), ('santa maria', 19),
('novo hamburgo', 19), ('porto velho', 20), ('ji-paraná', 20), ('ariquemes', 20),
('rolim de moura', 20), ('vilhena', 20), ('boa vista', 21), ('roraimópolis', 21),
('caracaraí', 21), ('mucajaí', 21), ('cantá', 21), ('florianópolis', 22),
('joinville', 22), ('blumenau', 22), ('criciúma', 22), ('são josé', 22),
('são paulo', 23), ('campinas', 23), ('santos', 23), ('são bernardo do campo', 23),
('guarulhos', 23), ('aracaju', 24), ('nossa senhora do socorro', 24),
('lagarto', 24), ('itabaiana', 24), ('estância', 24), ('palmas', 25),
('araguaína', 25), ('gurupi', 25), ('paraíso do tocantins', 25),
('porto nacional', 25), ('brasilia', 26), ('ceilândia', 26), ('taguatinga', 26),
('gama', 26), ('sobradinho', 26);

insert into sexo (sexo) values ('masculino'), ('feminino'), ('outro');
insert into nacionalidade (nacionalidade) values ('brasileira'), ('estrangeira');
insert into raca (raca) values ('branca'), ('preta'), ('parda'), ('amarela'), ('indígena');
insert into escolaridade (escolaridade) values ('ensino fundamental'), ('ensino médio'), ('ensino superior'), ('pós-graduação'),
('mestrado'), ('doutorado'), ('técnico'), ('ensino infantil');

insert into cliente (cpf, nome, rg, id_cidade, id_sexo, id_nacionalidade, fone, id_raca, id_escolaridade) values
('12345678901', 'carlos silva', 'mg1234567', 1, 1, 1, '(11) 98765-4321', 1, 3),
('98765432100', 'ana pereira', 'sp2345678', 2, 2, 1, '(11) 87654-3210', 2, 2);

select cliente.nome, cidade.cidade
from cliente
join cidade on cliente.id_cidade = cidade.id_cidade;

select cliente.nome, estado.estado
from cliente
join cidade on cliente.id_cidade = cidade.id_cidade
join estado on cidade.id_estado = estado.id_estado;

set sql_safe_updates = 0;

update cidade 
set cidade = case 
    when left(cidade, 1) between 'a' and 'm' then 'abaixo de m'
    else 'acima de m'
end
where id_cidade is not null;

update estado 
set estado = case 
    when estado in ('mato grosso do sul', 'mato grosso', 'goiás', 'distrito federal') then 'centro oeste'
    when estado in ('são paulo', 'rio de janeiro', 'minas gerais', 'espírito santo') then 'sudeste'
    when estado in ('paraná', 'santa catarina', 'rio grande do sul') then 'sul'
    when estado in ('bahia', 'pernambuco', 'ceará', 'alagoas', 'sergipe', 'rio grande do norte', 'paraíba', 'maranhão', 'piauí') then 'nordeste'
    else 'norte'
end;

update nacionalidade 
set nacionalidade = 'fora do brasil' 
where nacionalidade = 'estrangeira';

update raca 
set raca = 'não especificado' 
where raca not in ('branca', 'preta', 'parda', 'amarela', 'indígena');

update escolaridade 
set escolaridade = 'não especificado'
where escolaridade not in ('ensino fundamental', 'ensino médio', 'ensino superior', 'pós-graduação', 'mestrado', 'doutorado', 'técnico', 'ensino infantil');

select nome, cidade from cliente
join cidade on cliente.id_cidade = cidade.id_cidade;

select nome, estado from cliente
join cidade on cliente.id_cidade = cidade.id_cidade
join estado on cidade.id_estado = estado.id_estado;

select nome, cpf, raca from cliente
join raca on cliente.id_raca = raca.id_raca;

select nome, nacionalidade from cliente
join nacionalidade on cliente.id_nacionalidade = nacionalidade.id_nacionalidade;

select nome, escolaridade from cliente
join escolaridade on cliente.id_escolaridade = escolaridade.id_escolaridade;

select cliente.nome, cidade.cidade, estado.estado 
from cliente 
join cidade on cliente.id_cidade = cidade.id_cidade 
join estado on cidade.id_estado = estado.id_estado;

select 
cliente.nome, 
cidade.cidade, 
estado.estado, 
cliente.fone, 
cliente.rg, 
sexo.sexo, 
nacionalidade.nacionalidade, 
raca.raca, 
escolaridade.escolaridade 
from cliente 
join cidade on cliente.id_cidade = cidade.id_cidade 
join estado on cidade.id_estado = estado.id_estado 
join sexo on cliente.id_sexo = sexo.id_sexo 
join nacionalidade on cliente.id_nacionalidade = nacionalidade.id_nacionalidade 
join raca on cliente.id_raca = raca.id_raca 
join escolaridade on cliente.id_escolaridade = escolaridade.id_escolaridade;
