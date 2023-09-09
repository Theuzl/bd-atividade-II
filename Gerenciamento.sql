-- Criar tabela
CREATE DATABASE Gerenciamento;

-- Mostrar Tabela
SHOW DATABASES;

-- Acessa Banco de Dados
USE Gerenciamento;

-- Criar Tabela
CREATE TABLE Clientes(
ID int(30) AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255) NOT NULL,
Email VARCHAR(255)  unique NOT NULL,
Telefone VARCHAR(23)  unique NOT NULL
);

-- Criar Tabela
CREATE TABLE Pedidos(
ID int(30) AUTO_INCREMENT PRIMARY KEY,
ID_Clientes int,
DataPedido DATE NOT NULL,
ValorTotal decimal(10,2) NOT NULL,
foreign key(ID_Clientes) References Clientes(ID)
);

-- INSERINDO VALORES CLIENTES

INSERT INTO Clientes(Nome, Email, Telefone)
VALUES ('Matheus Vitor','matheus.v@gmail.com','(00) 0 0000-0000');

INSERT INTO Clientes(Nome, Email, Telefone)
VALUES ('Carlos','carlos@gmail.com','(11) 1 1111-1111');

INSERT INTO Clientes(Nome, Email, Telefone)
VALUES ('Vitor','vitor@gmail.com','(22) 2 2222-2222');

INSERT INTO Clientes(Nome, Email, Telefone)
VALUES ('Maria','maria@gmail.com','(33) 3 3333-3333');

INSERT INTO Clientes(Nome, Email, Telefone)
VALUES ('Lima','lima@gmail.com','(44) 4 4444-4444');

-- INSERINDO VALORES PEDIDOS
INSERT INTO Pedidos(ID_Clientes,DataPedido,ValorTotal)
VALUES (1,'2023-12-06',23.30);

INSERT INTO Pedidos(ID_Clientes,DataPedido,ValorTotal)
VALUES (3,'2023-10-06',123.30);

INSERT INTO Pedidos(ID_Clientes,DataPedido,ValorTotal)
VALUES (3,'2023-10-16',200.00);

INSERT INTO Pedidos(ID_Clientes,DataPedido,ValorTotal)
VALUES (4,'2023-01-06',1.30);

INSERT INTO Pedidos(ID_Clientes,DataPedido,ValorTotal)
VALUES (5,'2023-01-20',50.30);




-- Acessa Banco de Dados
SELECT * FROM Pedidos;
SELECT * fROM Clientes;

DROP DATABASE Gerenciamento;