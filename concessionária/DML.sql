INSERT INTO Marca (id_marca, nome_marca)
VALUES (1, 'Toyota'),
       (2, 'Honda')
       (3, 'Ford')
       (4, 'Volkswagen'),
       (5, 'Chevrolet');

INSERT INTO Modelo (id_modelo, nome_modelo, id_marca)
VALUES (1, 'Corolla', 1),
       (2, 'Civic', 2)
       (3, 'Golf', 4),
       (4, 'Focus' 3)
       (5, 'Cruze', 5);

INSERT INTO Veiculo (id_chassi, placa, cor, ano, quilometragem, id_modelo, id_marca)
VALUES ('9BWZZZ377VT004251', 'ABC1234', 'Prata', 2020, 15000.50, 1, 1),
       ('3VWFE21C04M000001', 'DEF5678', 'Preto', 2019, 25000.75, 2, 2),
       ('1FAHP3F20CL000001', 'GHI9012', 'Branco', 2021, 10000.25, 3, 4),
       ('1G1PE5SB3E7100001', 'JKL3456', 'Vermelho', 2018, 35000.00, 4, 3),
       ('2HGFA165X7H000001', 'MNO7890', 'Azul', 2022, 5000.80, 5, 5);

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
