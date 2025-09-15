CREATE DATABASE concessionaria;

CREATE TABLE Marca 
( 
 id_marca INT PRIMARY KEY,
 nome_marca VARCHAR(30)  
); 

CREATE TABLE Modelo 
( 
 id_modelo INT PRIMARY KEY, 
 nome_modelo VARCHAR(30) NOT NULL,
 idMarca INT NOT NULL REFERENCES Marca (idMarca) 
); 

CREATE TABLE Veiculo 
( 
 id_chassi INT PRIMARY KEY,  
 placa VARCHAR(10) NOT NULL, 
 cor VARCHAR(20) NOT NULL, 
 ano INT NOT NULL,  
 quilometragem INT NOT NULL,    
 idModelo INT NOT NULL REFERENCES Modelo (idModelo),  
 idMarca INT NOT NULL REFERENCES Marca (idMarca)  
); 

CREATE TABLE Comprador 
( 
 id_comprador INT PRIMARY KEY,  
 cpf VARCHAR(14) NOT NULL UNIQUE,  
 nome VARCHAR(50) NOT NULL,  
 estadoCivil VARCHAR(20)
); 

CREATE TABLE Cônjuge 
( 
 id_conjuge INT PRIMARY KEY,  
 nome VARCHAR(50),  
 cpf VARCHAR(14),  
 idComprador INT NOT NULL REFERENCES Comprador (idComprador)  
); 


CREATE TABLE Corretor 
( 
 id_matrícula INT PRIMARY KEY,  
 nome VARCHAR(50) NOT NULL,  
 admissão DATE NOT NULL
); 


CREATE TABLE Venda 
( 
 id_venda INT PRIMARY KEY,  
 data DATE NOT NULL,  
 valor VARCHAR(10) NOT NULL,  
 comissão VARCHAR(10) NOT NULL,  
 idChassi INT NOT NULL REFERENCES Veiculo(idChassi),,  
 idCorretor INT NOT NULL REFERENCES Corretor (idCorretor),  
 idComprador INT NOT NULL REFERENCES Comprador (idComprador) 
); 

