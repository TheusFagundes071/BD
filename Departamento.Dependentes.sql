
CREATE DATABASE Nike;


Create table Nike.Funcionarios(
Id int auto_increment primary key,
Nome varchar(255) not null,
Cargo varchar(255) not null,
DataContratacao date not null,
Salario float not null,
DepartamentoId int,
foreign key (DepartamentoId) references Nike.Departamentos(Id)
);

insert into Nike.Funcionarios(Nome,Cargo,DataContratacao,Salario,DepartamentoId)
values("Matheus","Modelo","2002-08-1","1000",1);

insert into Nike.Funcionarios(Nome,Cargo,DataContratacao,Salario,DepartamentoId)
values("André","Jogador","2002-08-1","2000",2);



create table Nike.Departamentos(
Id int auto_increment primary key,
Nome varchar(255) not null
);

insert into Nike.Departamentos(Nome)
values("Nike");

insert into Nike.Departamentos(Nome)
values("Adidas");



create table Nike.Dependentes(
Id int auto_increment primary key,
Nome varchar(255) not null,
DataNascimento date not null,
IDFuncionarios int,
foreign key (IDFuncionarios) references Nike.Funcionarios(Id)
);

insert into Nike.Dependentes(Nome,DataNascimento,IDFuncionarios)
values("Bruno","2004-02-03",1);


select F.Nome as "Nome do Funcionário",
D.Nome as "Nome do Departamento",
DE.Nome as "Nome do Dependentes"
from Nike.Funcionarios F
inner join Nike.Departamentos D on D.Id = F.DepartamentoId
left join Nike.Dependentes DE on DE.IDFuncionarios = F.Id;

drop database Nike;