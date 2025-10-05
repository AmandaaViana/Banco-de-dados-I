CREATE DATABASE campeonato;

CREATE TABLE Campeonato 
( 
 id_Campeonato INT PRIMARY KEY AUTO_INCREMENT,  
 dataInicio DATE NOT NULL,  
 dataFinal DATE NOT NULL,  
 temporada YEAR NOT NULL 
); 

CREATE TABLE Piloto 
( 
 id_Piloto INT PRIMARY KEY AUTO_INCREMENT,  
 nomeCompleto VARCHAR(100) NOT NULL,  
 apelido VARCHAR(20) UNIQUE,  
 dataNascimento DATE, 
 nacionalidade VARCHAR(20),  
 idCampeonato INT NOT NULL REFERENCES Campeonato (idCampeonato)  
); 

CREATE TABLE Categoria 
( 
 id_Categoria INT PRIMARY KEY AUTO_INCREMENT,  
 nome VARCHAR(10) NOT NULL,
 idPiloto INT NOT NULL REFERENCES Piloto (idPiloto)
); 

CREATE TABLE Carro 
( 
 id_carro INT PRIMARY KEY AUTO_INCREMENT, 
 marca VARCHAR(50) NOT NULL, 
 modelo VARCHAR(50) NOT NULL,   
 motor VARCHAR(50), 
 potência INT,  
 idPiloto INT NOT NULL REFERENCES Piloto (idPiloto)
); 

CREATE TABLE Etapa 
( 
 id_Etapa INT PRIMARY KEY AUTO_INCREMENT,  
 nome_etapa VARCHAR(50) NOT NULL,  
 data DATE NOT NULL,  
 idEndereco INT NOT NULL REFERENCES Endereco (idEndereco),  
 idCampeonato INT NOT NULL REFERENCES Campeonato (idCampeonato)  
); 

CREATE TABLE Classificacao_etapa 
( 
 id_classificacao_etapa INT PRIMARY KEY AUTO_INCREMENT,  
 classificacao INT NOT NULL,  
 posicao_etapa INT NOT NULL,  
 pontuacao INT NOT NULL,  
 idPiloto INT NOT NULL REFERENCES Piloto (idPiloto),  
 idEtapa INT NOT NULL REFERENCES Etapa (idEtapa) 
); 

CREATE TABLE Patrocinio 
( 
 id_Patrocinio INT PRIMARY KEY AUTO_INCREMENT,  
 nome VARCHAR(100) NOT NULL,  
 cnpj VARCHAR(18) UNIQUE NOT NULL,  
 telefone VARCHAR(15),  
 email VARCHAR(100),  
 cidade VARCHAR(50),  
 valorPatrocinio NUMERIC(7,2) NOT NULL,  
 idCampeonato INT NOT NULL  REFERENCES Campeonato (idCampeonato)
); 

CREATE TABLE Endereco 
( 
 id_endereco INT PRIMARY KEY AUTO_INCREMENT,  
 rua VARCHAR(100),
 cidade VARCHAR(50) NOT NULL,   
 estado VARCHAR(2) NOT NULL,  
 cep VARCHAR(10) NOT NULL
); 

CREATE TABLE Ingresso 
( 
 id_ingresso INT PRIMARY KEY AUTO_INCREMENT,  
 nome VARCHAR(100) NOT NULL,  
 cpf VARCHAR(14) UNIQUE NOT NULL,  
 idCampeonato INT NOT NULL REFERENCES Campeonato (idCampeonato)
); 

