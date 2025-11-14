drop database if exists cadastropessoa;
 CREATE DATABASE cadastropessoa;

use cadastropessoa;

CREATE TABLE pessoa (
  cpf char(14) NOT NULL PRIMARY KEY,
  nome varchar(100) NULL,
  contato char(11) NULL
);

insert into  pessoa (cpf, nome, contato) values('09878634562919','Pedro','0987808');

create table agenda(
  cod int primary key auto_increment,
  cpf char(14) not null,
  foreign key (cpf) references pessoa(cpf),
  data date not null,
  descricao varchar(100) not null
);
insert into agenda (cpf,data, descricao) values ('09878634562919','2026-03-09','lavar louça');

select* from agenda;

alter table pessoa add senha varchar(20) not null;

select*from pessoa;