-- Criar tabela
CREATE DATABASE Recurso_Humano;

-- Mostrar Tabela
SHOW DATABASES;

-- Acessa Banco de Dados
USE Recurso_Humano;


CREATE TABLE Recurso_Humano.Departamentos(
ID int(30) auto_increment not null primary key,
NomeDepartamento varchar(255) not null
);

 
CREATE TABLE Recurso_Humano.Funcionarios(
ID int (30) auto_increment not null primary key,
ID_Departamento int,
Nome varchar(255),
Cargo Varchar(255),
Salario Decimal(10,2),
foreign key (ID_Departamento) references Departamentos(ID)
);

INSERT INTO Recurso_Humano.Departamentos(NomeDepartamento)
VALUES('Financeiro');

INSERT INTO Recurso_Humano.Departamentos(NomeDepartamento)
VALUES('Humano'); 

INSERT INTO Recurso_Humano.Departamentos(NomeDepartamento)
VALUES('Pessoal'); 

INSERT INTO Recurso_Humano.Departamentos(NomeDepartamento)
VALUES('Comercial'); 

INSERT INTO Recurso_Humano.Departamentos(NomeDepartamento)
VALUES('Administrativo');  


INSERT INTO Recurso_Humano.Funcionarios(ID_Departamento,Nome,Cargo,Salario)
VALUES(1,'Matheus V','Financeiro',15600.00);

INSERT INTO Recurso_Humano.Funcionarios(ID_Departamento,Nome,Cargo,Salario)
VALUES(2,'Vitor','Vendedor',30.00);

INSERT INTO Recurso_Humano.Funcionarios(ID_Departamento,Nome,Cargo,Salario)
VALUES(3,'Mariano','Cantor',1100.00);

INSERT INTO Recurso_Humano.Funcionarios(ID_Departamento,Nome,Cargo,Salario)
VALUES(4,'Jutins','Sensei',900.00);

INSERT INTO Recurso_Humano.Funcionarios(ID_Departamento,Nome,Cargo,Salario)
VALUES(5,'Lima','Administrativo',1000.00);



select * from Recurso_Humano.Funcionarios;
select * from  Recurso_Humano.Departamentos;
drop database Recurso_Humano;