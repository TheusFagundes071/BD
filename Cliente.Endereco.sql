
CREATE DATABASE Matheus;


-- CREATE CLIENTES
CREATE TABLE Matheus.Clientes(
Id int primary key auto_increment,
Nome varchar(255) not null,
DataNascimento date not null,
Telefone varchar(22) not null
);

-- INSERT CLIENTES
insert into Matheus.Clientes(Nome,DataNascimento,Telefone)
values("Matheus","2003-06-06","(11) 11111-1111");

insert into Matheus.Clientes(Nome,DataNascimento,Telefone)
values("Bruno","2004-02-07","(22) 22222-2222");

insert into Matheus.Clientes(Nome,DataNascimento,Telefone)
values("Maria","1999-09-17","(33) 33333-3333");

insert into Matheus.Clientes(Nome,DataNascimento,Telefone)
values("Isabel","2002-09-10","(44) 44444-4444");

insert into Matheus.Clientes(Nome,DataNascimento,Telefone)
values("Neymar","1992-02-05","(55) 55555-5555");


CREATE TABLE Matheus.Endereco(
Id int primary key auto_increment,
Logradouro varchar(255) not null,
Numero varchar(12) not null,
Cidade varchar(255) 
);

insert into Matheus.Endereco(Logradouro,Numero,Cidade)
values("Alphaville","9","Salvador");

insert into Matheus.Endereco(Logradouro,Numero,Cidade)
values("Alto do Peru","10","Barreiras");

insert into Matheus.Endereco(Logradouro,Numero,Cidade)
values("Decada de 90","98","Salvador");

insert into Matheus.Endereco(Logradouro,Numero,Cidade)
values("Onibus","25569","Salvador");

insert into Matheus.Endereco(Logradouro,Numero,Cidade)
values("Al Hilhal","10","Arábia Saudita");


CREATE TABLE Matheus.Cadastrados(
Id int primary key auto_increment,
IDClientes int,
IDEndereco int,
foreign key (IDClientes) references Matheus.Clientes (Id),
foreign key (IDEndereco) references Matheus.Endereco (Id)
);

insert into Matheus.Cadastrados(IDClientes,IDEndereco)
values(1,1);

insert into Matheus.Cadastrados(IDClientes,IDEndereco)
values(2,2);

insert into Matheus.Cadastrados(IDClientes,IDEndereco)
values(3,3);

insert into Matheus.Cadastrados(IDClientes,IDEndereco)
values(4,4);

insert into Matheus.Cadastrados(IDClientes,IDEndereco)
values(5,5);

select
C.Nome as "Nome do Cliente",
E.Logradouro as "Endereço do Cliente"
From Matheus.Clientes C
inner join Matheus.Cadastrados CA on C.Id = CA.IDClientes
inner join Matheus.Endereco E on CA.IDEndereco = E.ID;

