


CREATE DATABASE Mariadb;

Show databases;

use Mariadb;

CREATE TABLE Mariadb.Produtos(
ID Int auto_increment primary key,
NomeProduto VARCHAR(255),
Descricao Text,
PrecoUnitario float,
EstoqueMinimo int
);


CREATE TABLE Mariadb.Fornecedores(
ID int auto_increment primary key,
NomeFornecedor varchar(255),
Endereco varchar(255) unique,
Telefone varchar(22) unique,
Email varchar(255) unique,
ProdutoID int,
foreign key (ProdutoID) references Produtos(ID)
);


insert into Mariadb.Produtos(NomeProduto,Descricao,PrecoUnitario,EstoqueMinimo)
values ("Desodorante 1","Na Axila",1000,10);

insert into Mariadb.Produtos(NomeProduto,Descricao,PrecoUnitario,EstoqueMinimo)
values ("Sandalia","No pé",3000,100);

insert into Mariadb.Produtos(NomeProduto,Descricao,PrecoUnitario,EstoqueMinimo)
values ("Oculos","No olho",10,2);

insert into Mariadb.Produtos(NomeProduto,Descricao,PrecoUnitario,EstoqueMinimo)
values ("Teclado","No dedo",200,50);

insert into Mariadb.Produtos(NomeProduto,Descricao,PrecoUnitario,EstoqueMinimo)
values ("Lente","No olho",1100,90);


insert into Mariadb.Fornecedores(NomeFornecedor,Endereco,Telefone,Email,ProdutoID)
values ("Matheus","Casa 0","(00) 0000-0000","matheus@gmail.com","1");

insert into Mariadb.Fornecedores(NomeFornecedor,Endereco,Telefone,Email,ProdutoID)
values ("Lima","Casa 1","(11) 1111-1111","lima@gmail.com","2");

insert into Mariadb.Fornecedores(NomeFornecedor,Endereco,Telefone,Email,ProdutoID)
values ("Maria","Casa 2","(22) 2222-2222","maria@gmail.com","3");

insert into Mariadb.Fornecedores(NomeFornecedor,Endereco,Telefone,Email,ProdutoID)
values ("Marcita","Casa 3","(33) 3333-3333","macita@gmail.com","4");

insert into Mariadb.Fornecedores(NomeFornecedor,Endereco,Telefone,Email,ProdutoID)
values ("Isa","Casa 4","(44) 4444-4444","instaisa@gmail.com","5");




select  
 P.NomeProduto AS "Nome do Produto",
 F.NomeFornecedor AS "Nome do Fornecedor"
 from Produtos P
 inner join Fornecedores F
 on P.ID = F.ProdutoID;


drop database Mariadb;

