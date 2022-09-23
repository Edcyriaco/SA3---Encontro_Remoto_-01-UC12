CREATE DATABASE CRIPTO1   --Este comando cria um banco de dados
GO

USE CRIPTO1 -- Este comando seleciona um banco de dados 
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

INSERT INTO Usuarios VALUES ('ednaldo@gmail.com', '12345', 'Ednaldo')

INSERT INTO Usuarios VALUES ('maria@gmail.com', 'abcd', 'Maria')

INSERT INTO Usuarios VALUES ('eliane@gmail.com', 'abcd123', 'Eliane')

INSERT INTO Usuarios VALUES ('juliana@gmail.com', '123abcd', 'Juliana')

INSERT INTO Usuarios VALUES ('bethe@gmail.com', '123abcd123', 'Bethe')

INSERT INTO Usuarios VALUES ('thiago@gmail.com', 'aeiou', 'Thiago')

INSERT INTO Usuarios VALUES ('carlos@gmail.com', '123aeiou', 'Carlos')

INSERT INTO Usuarios VALUES ('pedro@gmail.com', '123aeiou123', 'Pedro')

GO

SELECT * FROM Usuarios

SELECT UsuarioId, Email, Senha FROM Usuarios WHERE UsuarioId = 1

SELECT UsuarioId, Email, HASHBYTES('MD2', Senha) AS 'Senha' FROM Usuarios WHERE UsuarioId = 1
SELECT UsuarioId, Email, HASHBYTES ('SHA2_512', Senha) , Nome FROM Usuarios WHERE UsuarioId = 1
GO

--Procedures -> Funções 

--Teste--

SELECT UsuarioId, Email, Nome, HASHBYTES('MD2', Senha) AS 'Senha' FROM Usuarios WHERE UsuarioId in ('1','3','4','5', '6','7', '8')  

SELECT UsuarioId, Email, Nome, HASHBYTES('MD4', Senha) AS 'Senha' FROM Usuarios WHERE UsuarioId in ('1','3','4','5', '6','7', '8')  

SELECT UsuarioId, Email, Nome, HASHBYTES('MD5', Senha) AS 'Senha' FROM Usuarios WHERE UsuarioId in ('1','3','4','5', '6','7', '8')  

SELECT UsuarioId, Email, Nome, HASHBYTES('SHA', Senha) AS 'Senha' FROM Usuarios WHERE UsuarioId in ('1','3','4','5', '6','7', '8')  

SELECT UsuarioId, Email, Nome, HASHBYTES('SHA1', Senha) AS 'Senha' FROM Usuarios WHERE UsuarioId in ('1','3','4','5', '6','7', '8')  

SELECT UsuarioId, Email, Nome, HASHBYTES('SHA2_256', Senha) AS 'Senha' FROM Usuarios WHERE UsuarioId in ('1','3','4','5', '6','7', '8')  

SELECT UsuarioId, Email, Nome, HASHBYTES('SHA2_512', Senha) AS 'Senha' FROM Usuarios WHERE UsuarioId in ('1','3','4','5', '6','7', '8')  
GO
