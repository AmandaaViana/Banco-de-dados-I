CREATE TABLE Veiculo 
( 
id_veiculo INT PRIMARY KEY
// id_chassi INT PRIMARY KEY,  
 placa VARCHAR(7) NOT NULL,  
 ano INT NOT NULL,  
 quilometragem INT NOT NULL,  
 marca VARCHAR(n) NOT NULL,  
 modelo VARCHAR(n) NOT NULL,  
 idModelo INT NOT NULL REFERENCES Modelo (idModelo),  
 idMarca INT NOT NULL REFERENCES Marca (idMarca)
); 

CREATE TABLE Modelo 
( 
 id_modelo INT PRIMARY KEY,  
 idMarca INT NOT NULL REFERENCES Marca (idMarca)  
); 

CREATE TABLE Marca 
( 
 id_marca INT PRIMARY KEY,  
); 

CREATE TABLE Comprador 
( 
 id_comprador INT PRIMARY KEY,  
 cpf VARCHAR(11) NOT NULL,  
 nome VARCHAR(20) NOT NULL,  
 estadoCivil VARCHAR(10),  
 UNIQUE (cpf)
); 

CREATE TABLE Corretor 
( 
 id_matrícula INT PRIMARY KEY,  
 nome VARCHAR(20) NOT NULL,  
 admissão DATE NOT NULL,  
); 

CREATE TABLE Cônjuge 
( 
 id_conjuge INT PRIMARY KEY,  
 nome VARCHAR(80),  
 cpf VARCHAR(11),  
 idComprador INT NOT NULL REFERENCES Comprador (idComprador)  
); 

CREATE TABLE Venda 
( 
 id_venda INT PRIMARY KEY,  
 data DATE NOT NULL,  
 valor VARCHAR(20) NOT NULL,  
 comissão VARCHAR(20) NOT NULL,  
 idVeiculo INT NOT NULL REFERENCES Veiculo (idVeiculo),  
 idCorretor INT NOT null REFERENCES Corretor (idCorretor),  
 idComprador INT NOT NULL REFERENCES Comprador (id_comprador),  
); 
