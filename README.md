Exercício: 2 - Modelagem Lógica e Física 
Considere um sistema de gerenciamento de estoque com as tabelas "Produtos" 
e "Fornecedores". Cada produto possui um único fornecedor, e cada fornecedor está associado a apenas um produto. 
Tabela "Produtos": 
Campos: ProdutoID (Chave Primária), NomeProduto, Descricao, PrecoUnitario, EstoqueMinimo 
Tabela "Fornecedores": 
Campos: FornecedorID (Chave Primária), Nome Fornecedor, Endereco, Telefone, Email, ProdutoID (Chave Estrangeira referenciando ProdutoID na tabela Produtos) 
Implemente: 
Crie as instruções SQL para criar essas duas tabelas com os relacionamentos apropriados. 
• Insira 5 registros para cada tabela. 
Escreva uma consulta SQL que retorne o nome do produto e o nome do fornecedor de cada produto. 




Exercício: 3 - Modelagem Lógica e Física 
Imagine um sistema de gerenciamento escolar com as tabelas "Escolas" e "Alunos". Cada escola pode ter vários alunos, mas cada aluno está associado a apenas uma escola. 
Tabela "Escolas": 
Campos: EscolaID (Chave Primária), Nome Escola, Endereco, Telefone 
Tabela "Alunos": 
Campos: Matricula (Chave Primária), NomeAluno, Data Nascimento, Endereco, Telefone, EscolaID (Chave Estrangeira referenciando EscolaID na tabela Escolas) 
Instruções: 
Crie as instruções SQL para criar essas duas tabelas com os relacionamentos apropriados. 
Insira 5 registros para cada tabela. 
Escreva uma consulta SQL que liste o nome da escola e o número total de alunos matriculados em cada escola. 


Exercício: 4 - Modelagem Lógica e Física 
Suponha que você esteja desenvolvendo um sistema de revisões de produtos com as tabela's "Produtos" e "Comentarios". Cada produto pode ter vários comentários, mas cada comentário está associado a apenas um produto. 
Tabela "Produtos": 
Campos: ProdutoID (Chave Primária), Nome Produto, Descricao, Preco 
Tabela "Comentarios": 
Campos: ComentarioID (Chave Primária), ProdutoID (Chave Estrangeira referenciando ProdutolD na tabela Produtos), Autor, TextoComentario, DataComentario 
Instruções: 
Críe as instruções SQL para criar essas duas tabelas com os relacionamentos apropriados. 
• Insira 5 registros para cada tabela. 
Escreva uma consulta SQL que liste o número total de comentários feitos sobre cada produto. 
