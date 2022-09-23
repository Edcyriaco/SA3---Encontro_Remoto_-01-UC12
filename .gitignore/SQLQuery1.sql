CREATE DATABASE CRIPTO   --Este comando cria um banco de dados
GO

USE CRIPTO -- Este comando seleciona um banco de dados 
GO

CREATE TABLE Usuarios
(
   Usuarioid INT PRIMARY KEY IDENTITY,
   Email VARCHAR(100) UNIQUE NOT NULL,
   Senha VARCHAR(50) NOT NULL,
   Nome VARCHAR(100) NOT NULL
)
GO

SELECT * FROM Usuarios
GO

INSERT INTO Usuarios VALUES ('ednaldo.cyriaco@gmail.com', '12345', 'Ednaldo Cyriaco')
GO

SELECT Usuarioid, Email, HASHBYTES('MD2', Senha ) AS Senha, Nome FROM Usuarios WHERE Usuarioid = 1
SELECT Usuarioid, Email, HASHBYTES('SHA2_512', Senha ) AS Senha, Nome FROM Usuarios WHERE Usuarioid = 1
GO

--Procedures -> Funções 