-- Criar tabela
CREATE DATABASE Blog;

-- Mostrar Tabela
SHOW DATABASES;

-- Acessa Banco de Dados
USE Blog;


CREATE TABLE Artigo(
ID int(30) AUTO_INCREMENT PRIMARY KEY,
Titulo VARCHAR(255) NOT NULL,
Conteudo TEXT NOT NULL,
DataPublicacao DATE NOT NULL
);



CREATE TABLE Comentario(
ID int(30) AUTO_INCREMENT PRIMARY KEY,
ID_Artigo int NOT NULL,
Autor VARCHAR(255) NOT NULL,
Texto TEXT NOT NULL,
DataComentario DATE,
foreign key(ID_Artigo) References Artigo(ID)
);

-- INSERINDO DADOS DO ARTIGO

INSERT INTO Artigo(Titulo, Conteudo, DataPublicacao)
VALUES ('Bíblia','Conteudo Bíblico','1990-05-02');

INSERT INTO Artigo(Titulo, Conteudo, DataPublicacao)
VALUES ('Pai Rico e Pai Pobre','Pai Rico e Pai Pobre','2002-06-02');

INSERT INTO Artigo(Titulo, Conteudo, DataPublicacao)
VALUES ('Cinderela','Sobre a Princesa','1980-10-06');

INSERT INTO Artigo(Titulo, Conteudo, DataPublicacao)
VALUES ('Nemo','Sobre o Nemo','2003-06-06');

INSERT INTO Artigo(Titulo, Conteudo, DataPublicacao)
VALUES ('Elon Musk','Conteudo sobre Elon Musk','1999-06-07');

-- INSERINDO COMENTARIOS
INSERT INTO Comentario(ID_Artigo, Autor, Texto, DataComentario)
VALUES (1,'Deus','Bom livro','2000-06-06');

INSERT INTO Comentario(ID_Artigo, Autor, Texto, DataComentario)
VALUES (2,'Robert T. Kloyosaki','Bom livro','1999-02-13');

INSERT INTO Comentario(ID_Artigo, Autor, Texto, DataComentario)
VALUES (3,'Desconhecido','Bom livro','2003-02-11');

INSERT INTO Comentario(ID_Artigo, Autor, Texto, DataComentario)
VALUES (4,'Nemo','Ótimo livro','2003-10-06');

INSERT INTO Comentario(ID_Artigo, Autor, Texto, DataComentario)
VALUES (5,'Elon Musk','Ótimo livro','2010-05-10');




SELECT * FROM Comentario;
SELECT * FROM Artigo;
DROP DATABASE Blog;