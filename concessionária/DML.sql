INSERT INTO Marca (id_marca, nome_marca)
VALUES (1, 'Toyota'),
       (2, 'Honda');

INSERT INTO Modelo (id_modelo, nome_modelo, id_marca)
VALUES (1, 'Corolla', 1),
       (2, 'Civic', 2);

INSERT INTO Veiculo (id_chassi, placa, cor, ano, quilometragem, id_modelo, id_marca)
VALUES (1001, 'ABC-1234', 'Prata', 2018, 45000, 1, 1),
       (1002, 'XYZ-5678', 'Preto', 2020, 30000, 2, 2);

INSERT INTO Comprador (id_comprador, cpf, nome, estadoCivil)
VALUES (1, '111.111.111-11', 'João Silva', 'Casado'),
       (2, '222.222.222-22', 'Maria Oliveira', 'Solteira');

INSERT INTO Conjuge (id_conjuge, nome, cpf, id_comprador)
VALUES (1, 'Ana Silva', '333.333.333-33', 1);

INSERT INTO Corretor (id_matricula, nome, admissao)
VALUES (101, 'Carlos Mendes', '2020-01-10'),
       (102, 'Fernanda Souza', '2021-06-15');

INSERT INTO Venda (id_venda, data, valor, comissao, id_chassi, id_matricula, id_comprador)
VALUES (1, '2023-05-20', 85000.00, 5000.00, 1001, 101, 1),
       (2, '2023-07-10', 95000.00, 6000.00, 1002, 102, 2);

