-- Criar Tabela
CREATE DATABASE Livraria;

-- Mostrar Tabela
SHOW DATABASES;

-- Acessa Banco de Dados
USE Livraria;

-- Criar Tabela
CREATE TABLE Livraria.autores(
    Id INT (30) auto_increment PRIMARY KEY,
    Livro VARCHAR (255) NOT NULL,
    Autor VARCHAR (255) NOT NULL,
    Sexo_Autor VARCHAR (30) NOT NULL,
    Numero_Paginas INT NOT NULL,
    Editora VARCHAR (255) NOT NULL,
    Valor_Capa_Comum DOUBLE NOT NULL,
    Valor_Kingle DOUBLE NOT NULL,
    Ano_de_Publicacao int (4) NOT NULL
);

-- Inserir Registro na Tabela
INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('Pai Rico Pai Pobre','Robert T. Kloyosaki', 'Masculino', '336', 'Alta Books', '61.53', '58.45', '2018');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('Mindset','Carol S. Dweck', 'Feminino', '312', 'Objetiva', '38.99', '14.95', '2017');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('Como Fazer Amigos e Influenciar Pessoas', 'Dale Carnegie', 'Masculino', '256', 'Sextante', '38.99', '33.24', '2019');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('A Cabana','William P. Young', 'Masculino', '240', 'Aqueiro', '35.99', '17.905', '2008');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('O Poder do Hábito', 'Charles Duhigg', 'Masculino', '408', 'Objetiva', '42.99', '29.90', '2012');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('Código Limpo', 'Robert C. Martin', 'Masculino', '425', 'Alta Books', '91.99', '87.39', '2009');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('Essencialismo', 'Greg McKeown', 'Masculino', '272', 'Sextante', '53.58', '33.24', '2015');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('Me Poupe!', 'Nathalia Arcuri', 'Feminino', '176', 'Sextante', '32.86', '17.09', '2018');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('Comece Pelo Porquê', 'Simon Sinek', 'Masculino', '256', 'Sextante', '50.58', '24.90', '2018');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Numero_Paginas, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('O Alquimista', 'Paulo Coelho', 'Masculino', '206', 'Paralela', '24.70', '14.70', '2017');

SELECT * FROM Livraria.autores;

-- Apagar dados da tabela --
drop table Livraria.autores;