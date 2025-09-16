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
 id_marca INT NOT NULL REFERENCES Marca (id_marca) 
); 

CREATE TABLE Veiculo 
( 
 id_veiculo INT PRIMARY KEY, 
 chassi VARCHAR(17) NOT NULL, 
 placa VARCHAR(10) NOT NULL, 
 cor VARCHAR(20) NOT NULL, 
 ano INT NOT NULL,  
 quilometragem INT NOT NULL,    
 id_modelo INT NOT NULL REFERENCES Modelo ( id_modelo),  
 id_marca INT NOT NULL REFERENCES Marca (id_marca)  
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
 id_comprador INT NOT NULL REFERENCES Comprador (id_comprador)  
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
 valor NUMERIC(7,2) NOT NULL,  
 comissão NUMERIC(7,2) NOT NULL,  
 id_chassi INT NOT NULL REFERENCES Veiculo(id_chassi), 
 id_corretor INT NOT NULL REFERENCES Corretor (id_corretor),  
 id_comprador INT NOT NULL REFERENCES Comprador (id_comprador) 
); 



