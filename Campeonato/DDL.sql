CREATE DATABASE campeonato;

CREATE TABLE Campeonato 
( 
 id_Campeonato INT PRIMARY KEY,  
 dataInicio DATE NOT NULL,  
 dataFinal DATE NOT NULL,  
 temporada INT NOT NULL 
); 

CREATE TABLE Endereco 
( 
 id_endereco INT PRIMARY KEY,  
 rua VARCHAR(100),
 cidade VARCHAR(50) NOT NULL,   
 estado VARCHAR(2) NOT NULL,  
 cep VARCHAR(10) NOT NULL
); 

CREATE TABLE Piloto 
( 
 id_Piloto INT PRIMARY KEY,  
 nomeCompleto VARCHAR(100) NOT NULL,  
 apelido VARCHAR(20) UNIQUE,  
 dataNascimento DATE, 
 nacionalidade VARCHAR(20),  
 id_Campeonato INT NOT NULL REFERENCES Campeonato (id_Campeonato)  
); 

CREATE TABLE Categoria 
( 
 id_Categoria INT PRIMARY KEY,  
 nome VARCHAR(10) NOT NULL,
 id_Piloto INT NOT NULL REFERENCES Piloto (id_Piloto)
); 

CREATE TABLE Carro 
( 
 id_carro INT PRIMARY KEY, 
 marca VARCHAR(50) NOT NULL, 
 modelo VARCHAR(50) NOT NULL,   
 motor VARCHAR(50), 
 potência INT,  
 id_Piloto INT NOT NULL REFERENCES Piloto (id_Piloto)
); 

CREATE TABLE Etapa 
( 
 id_Etapa INT PRIMARY KEY,  
 nome_etapa VARCHAR(50) NOT NULL,  
 data DATE NOT NULL,  
 id_Endereco INT NOT NULL REFERENCES Endereco (id_Endereco),  
 id_Campeonato INT NOT NULL REFERENCES Campeonato (id_Campeonato)  
); 

CREATE TABLE Patrocinio 
( 
 id_Patrocinio INT PRIMARY KEY,  
 nome VARCHAR(100) NOT NULL,  
 cnpj VARCHAR(18) UNIQUE NOT NULL,  
 telefone VARCHAR(15),  
 email VARCHAR(100),  
 cidade VARCHAR(50),  
 valorPatrocinio NUMERIC(7,2) NOT NULL,  
 id_Campeonato INT NOT NULL  REFERENCES Campeonato (id_Campeonato)
); 

CREATE TABLE Ingresso 
( 
 id_ingresso INT PRIMARY KEY,  
 nome VARCHAR(100) NOT NULL,  
 cpf VARCHAR(14) UNIQUE NOT NULL,  
 id_Campeonato INT NOT NULL REFERENCES Campeonato (id_Campeonato)
); 

CREATE TABLE Classificacao_etapa 
( 
 id_classificacao_etapa INT PRIMARY KEY,  
 classificacao INT NOT NULL,  
 posicao_etapa INT NOT NULL,  
 pontuacao INT NOT NULL,  
 id_Piloto INT NOT NULL REFERENCES Piloto (id_Piloto),  
 id_Etapa INT NOT NULL REFERENCES Etapa (id_Etapa) 
); 
