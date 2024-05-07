use dbbarbearia;
describe cliente;
select * from cliente;
alter table cliente add column perfil varchar(20) not null;

update cliente set perfil='cliente' where idcliente = '2';