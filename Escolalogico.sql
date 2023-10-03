

CREATE DATABASE Senai;

Use Senai;

-- tables

create table Senai.Escola(
Id int auto_increment primary key,
NomeEscola varchar(255),
Endereco varchar(255),
Telefone varchar(22)
);

create table Senai.Alunos(
Matrícula int auto_increment primary key,
NomeAluno varchar(255),
DataNascimento date,
Endereco varchar(255),
Telefone varchar (22),
EscolaID int,
foreign key (EscolaID) references Senai.Escola (Id)
);


-- ESCOLAS

Insert into Senai.Escola(NomeEscola,Endereco,Telefone)
Values("Senai 0","Rua 1","(00) 00000-0000");

Insert into Senai.Escola(NomeEscola,Endereco,Telefone)
Values("Senai 1","Rua 2","(11) 11111-1111");

Insert into Senai.Escola(NomeEscola,Endereco,Telefone)
Values("Senai 2","Rua 3","(22) 22222-2222");

Insert into Senai.Escola(NomeEscola,Endereco,Telefone)
Values("Senai 3","Rua 4","(33) 33333-3333");

Insert into Senai.Escola(NomeEscola,Endereco,Telefone)
Values("Senai 4","Rua 5","(44) 44444-0000");


-- ALUNOS

Insert into Senai.Alunos(NomeAluno,DataNascimento,Endereco,Telefone,EscolaID)
Values("Macita",'1998-03-04',"Loja","(00) 00000-0000",1);

Insert into Senai.Alunos(NomeAluno,DataNascimento,Endereco,Telefone,EscolaID)
Values("Pontes",'2010-05-10',"Roma","(11) 11111-1111",2);

Insert into Senai.Alunos(NomeAluno,DataNascimento,Endereco,Telefone,EscolaID)
Values("Gueu",'1999-05-04',"Massara","(22) 22222-2222",3);

Insert into Senai.Alunos(NomeAluno,DataNascimento,Endereco,Telefone,EscolaID)
Values("Bruno",'2020-10-20',"Testo","(33) 33333-3333",4);

Insert into Senai.Alunos(NomeAluno,DataNascimento,Endereco,Telefone,EscolaID)
Values("Lins",'2002-03-11',"Nao sei","(44) 44444-4444",5);

Insert into Senai.Alunos(NomeAluno,DataNascimento,Endereco,Telefone,EscolaID)
Values("MEL",'2002-03-11',"Nao sei","(44) 44444-4444",5);

-- CONTAGEM
Insert into Senai.Alunos(NomeAluno,DataNascimento,Endereco,Telefone,EscolaID)
Values("MEL",'2002-03-11',"Nao sei","(44) 44444-4444",5);

Insert into Senai.Alunos(NomeAluno,DataNascimento,Endereco,Telefone,EscolaID)
Values("Macita",'1998-03-04',"Loja","(00) 00000-0000",1);

Insert into Senai.Alunos(NomeAluno,DataNascimento,Endereco,Telefone,EscolaID)
Values("Macita",'1998-03-04',"Loja","(00) 00000-0000",2);

Insert into Senai.Alunos(NomeAluno,DataNascimento,Endereco,Telefone,EscolaID)
Values("Macita",'1998-03-04',"Loja","(00) 00000-0000",2);


-- SELECT

Select 
E.NomeEscola AS "Nome da Escola",
count(A.Matrícula) AS "Matriculados"
FROM Senai.Escola E
INNER JOIN Senai.Alunos A
ON E.Id = A.ESCOLAID group by E.NomeEscola;

-- Count(quantos tem)

-- Group by (Onde procurar)











select * from Senai.Alunos;



