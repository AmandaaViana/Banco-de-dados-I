INSERT INTO Campeonato (dataInicio, dataFinal, temporada)
VALUES ('2025-03-22', '2025-11-16', 2025);

INSERT INTO Piloto (nomeCompleto, apelido, dataNascimento, nacionalidade, id_Campeonato)
VALUES ('Carlos Silva', 'Carlinhos', '1990-05-14', 'Brasileiro', 1),
       ('Ana Souza', 'Aninha', '1992-08-22', 'Portuguesa', 1),
       ('Miguel Torres', 'Miguinho', '1988-11-30', 'Brasileiro', 1),
       ('Laura Mendes', 'Laurinha', '1995-02-10', 'Italiana', 1),
       ('Pedro Lima', 'Pedrinho', '1991-07-25', 'Brasileiro', 1),
       ('Juliana Costa', 'Juju', '1993-12-05', 'Brasileira', 1),
       ('Rafael Oliveira', 'Rafa', '1989-09-15', 'Argentino', 1),
       ('Sofia Fernandes', 'Sofi', '1994-04-18', 'Chilena', 1),
       ('Lucas Pereira', 'Luquinha', '1990-06-29', 'Colombiano', 1);

INSERT INTO Categoria (nomeCategoria, id_Piloto)
VALUES ('Light', 1), 
       ('Master', 2),
       ('Pro', 3),
       ('Light', 4),
       ('Master', 5),
       ('Pro', 6),
       ('Light', 7),
       ('Master', 8),
       ('Pro', 9);

INSERT INTO Carro (marca, modelo, motor, potência, id_Piloto)
VALUES ('Nissan', 'Silvia s13', 'sr20', 280, 1),
       ('Nissan', 'Silvia s15', '1jz', 500, 2),
       ('Nissan', '370z', '1jz', 850, 3),
       ('BMW', 'E36', 'M50', 430, 4),
       ('BMW', 'E46', 'S54', 450, 5),
       ('BMW', 'E92', 'S65', 600, 6),
       ('Toyota', 'Supra mk4', '2jz', 530, 7),
       ('Chevrolet', 'Corvete', 'Lt4 procharger', 800, 8),
       ('Chevrolet', 'Camaro', 'V8', 650, 9);

INSERT INTO Classificacao_etapa (classificacao, pontuacao, id_Piloto, id_Etapa)
VALUES (1, 50, 8, 1),
       (2, 45, 3, 1),
       (3, 40, 5, 1),
       (4, 36, 9, 1),
       (5, 32, 7, 1),
       (6, 30, 2, 1),
       (7, 28, 4, 1),
       (8, 26, 6, 1),
       (9, 24, 1, 1);

INSERT INTO Classificacao_etapa (id_classificacao_etapa, classificacao, pontuacao, id_Piloto, id_Etapa) --deu erro relaçao id_Etapa
VALUES (1, 50, 5, 2),
       (2, 45, 8, 2),
       (3, 40, 2, 2),
       (4, 36, 6, 2),
       (5, 32, 4, 2),
       (6, 30, 9, 2),
       (7, 28, 1, 2),
       (8, 26, 3, 2),
       (9, 24, 7, 2);

/*Os dois classificao_etapa deu esse erro, insert or update on table "classificacao_etapa" violates foreign key constraint "classificacao_etapa_id_etapa_fkey"
DETAIL:  Key (id_etapa)=(1) is not present in table "etapa".
*/

INSERT INTO Patrocinio (nome, cnpj, telefone, email, cidade, valorPatrocinio, id_Campeonato)
VALUES ('Fueltech', '12.345.678/0001-90', '(21) 1234-5678', 'Fueltech@gmail.com', 'Rio de Janeiro', 50000.00, 1),
       ('Pirelli', '98.765.432/0001-12', '(11) 8765-4321', 'Pirelli@gmail.com', 'São Paulo', 75000.00, 1),
       ('Mahle', '23.456.789/0001-34', '(31) 2345-6789', 'Mahle@gmail.com', 'Belo Horizonte', 60000.00, 1),
       ('Sparco', '56.789.012/0001-56', '(51) 5678-9012', 'Sparco@mail.com', 'Porto Alegre', 45000.00, 1),
       ('Perfect Automotive', '87.654.321/0001-56', '(41) 8765-4321', 'PerfectAutomotive@gmail.com', 'Curitiba', 55000.00, 1);

INSERT INTO Ingresso (nome, cpf, valor, id_Etapa)
VALUES ('João Silva', '123.456.789-00', '2025-03-01', 150.00, 1),
       ('Maria Oliveira', '987.654.321-00', '2025-03-05', 200.00, 1),
       ('Carlos Pereira', '456.789.123-00', '2025-03-10', 180.00, 1),
       ('Ana Costa', '321.654.987-00', '2025-03-12', 220.00, 1),
       ('Lucas Fernandes', '654.321.987-00', '2025-03-15', 160.00, 1),
       ('Beatriz Santos', '789.123.456-00', '2025-03-18', 210.00, 1),
       ('Pedro Almeida', '147.258.369-00', '2025-03-20', 170.00, 1),
       ('Juliana Ribeiro', '369.258.147-00', '2025-03-22', 190.00, 1),
       ('Rafael Gomes', '258.369.147-00', '2025-03-25', 200.00, 1),
       ('Sofia Lima', '159.753.486-00', '2025-03-28', 180.00, 1),
       ('Mariana Rocha', '852.456.123-00', '2025-03-29', 210.00, 2),
       ('Miguel Barros', '753.159.486-00', '2025-03-30', 220.00, 2),
       ('Larissa Nunes', '951.357.486-00', '2025-04-01', 160.00, 2),
       ('Felipe Cardoso', '357.159.258-00', '2025-04-03', 170.00, 2),
       ('Camila Martins', '456.123.789-00', '2025-04-05', 190.00, 2);

INSERT INTO Etapa (nome_etapa, dataEtapa, idEndereco, id_Campeonato)
VALUES ('Etapa - Piracicaba', '2025-05-10', 4, 1),
       ('Etapa - Santa Luzia', '2025-07-05', 3, 1),
       ('Etapa - Londrina', '2025-08-20', 2, 1),
       ('Etapa - Balneário Camboriú', '2025-10-15', 5, 1),
       ('Etapa - Ribeirão Preto', '2025-11-16', 1, 1);

INSERT INTO Endereco (rua, cidade, estado, cep)
VALUES ('Av. Dr. Plínio de Castro Prado', 'Ribeirão Preto', 'SP', 14090-140),
       ('Av. Henrique Mansano', 'Londrina', 'PR', 86075-000),
       ('Av. das Indústrias', 'Santa Luzia', 'MG', 33040-130),
       ('Rodovia SP 135 Km 13,5', 'Piracicaba', 'SP', 13414-903),
       ('R. José Francisco Correia', 'Balneário Camboriú', 'SC', 88330-000);
