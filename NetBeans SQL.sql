create table dbbarbearia;
use dbbarbearia;

create table cliente(
	idcliente int primary key,
    nome varchar(30) not null,
    telefone varchar(15),
    login varchar(30) not null unique,
    senha varchar(20) not null
);

describe cliente;

insert into cliente(idcliente, nome, telefone, login, senha, perfil)
values (4, 'Recepcionista', '4444-4444', 'recepcao', '123', 'recepcao');

select * from cliente;

create table cadastro(
	idcadastro int primary key auto_increment,
    nomecadastro varchar(30) not null,
    telefonecadastro varchar(15) not null,
    email varchar(40)
);

insert into cadastro( nomecadastro, telefonecadastro, email)
values ('usu1', '1111-1111', 'usu1@gmail'),
	   ('usu2', '2222-2222', 'usu2@gmail');

describe cadastro;
select * from cadastro;

alter table cliente add column perfil varchar(20) not null;

update cliente set perfil='admin' where idcliente = '1';
update cliente set perfil='cliente' where idcliente = '2';