create database agenda;

use agenda;

show tables;

CREATE TABLE usuarios (

    id INT AUTO_INCREMENT PRIMARY KEY,

    nome VARCHAR(100) NOT NULL,

    email VARCHAR(100) UNIQUE NOT NULL,

    contato VARCHAR(20),

    senha_hash VARCHAR(255) NOT NULL

);
 
select * from usuarios;
 
 describe usuarios;