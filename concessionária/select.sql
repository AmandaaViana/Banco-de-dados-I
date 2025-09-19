/*1 - Listar todas as vendas a partir de 2025-01-01, ordenadas do maior para o menor valor */

SELECT * FROM Venda
WHERE data_venda >= '2025-01-01'
ORDER BY valor DESC;

/*2 - Listar veículos vendidos com marca e modelo */

SELECT Veiculo.placa, Veiculo.cor,Veiculo.ano,Marca.nome_marca, Modelo.nome_modelo
FROM Veiculo
INNER JOIN Modelo ON Veiculo.id_modelo = Modelo.id_modelo
INNER JOIN Marca ON Modelo.id_marca = Marca.id_marca
INNER JOIN Venda ON Veiculo.id_veiculo = Venda.id_veiculo;

/*3 - Quantidade de veículos vendidos por marca */

SELECT Marca.nome_marca, COUNT(*) AS quantidade_vendida
FROM Venda
INNER JOIN Veiculo ON Venda.id_veiculo = Veiculo.id_veiculo
INNER JOIN Modelo ON Veiculo.id_modelo = Modelo.id_modelo
INNER JOIN Marca ON Modelo.id_marca = Marca.id_marca
GROUP BY Marca.nome_marca
ORDER BY quantidade_vendida DESC;

/*4 - Valor total vendido por corretor (apenas quem vendeu mais de 100.000) */

SELECT Corretor.nome, SUM(Venda.valor) AS total_vendido
FROM Venda
INNER JOIN Corretor ON Venda.id_corretor = Corretor.id_matricula
GROUP BY Corretor.id_matricula, Corretor.nome
HAVING SUM(Venda.valor) > 100000
ORDER BY total_vendido DESC;

/*5 - Valor médio por marca */

SELECT Marca.nome_marca, AVG(Venda.valor) AS valor_medio
FROM Venda
INNER JOIN Veiculo ON Venda.id_veiculo = Veiculo.id_veiculo
INNER JOIN Modelo ON Veiculo.id_modelo = Modelo.id_modelo
INNER JOIN Marca ON Modelo.id_marca = Marca.id_marca
GROUP BY Marca.nome_marca
ORDER BY valor_medio DESC;

/*6 - Corretores com pelo menos 3 vendas */

SELECT Corretor.nome, COUNT(*) AS numero_vendas
FROM Venda
INNER JOIN Corretor ON Venda.id_corretor = Corretor.id_matricula
GROUP BY Corretor.id_matricula, Corretor.nome
HAVING COUNT(*) >= 3
ORDER BY numero_vendas DESC;

/*7 - Compradores que já realizaram compra acima de 80.000 */

SELECT Comprador.nome, Venda.valor
FROM Venda
INNER JOIN Comprador ON Venda.id_comprador = Comprador.id_comprador
WHERE Venda.valor > 80000
ORDER BY Venda.valor DESC;

/*8 - Quantidade de vendas por mês (ano-mês), do mais recente ao mais antigo */

SELECT TO_CHAR(data_venda, 'YYYY-MM') AS mes_ano, COUNT(*) AS vendas
FROM Venda
GROUP BY TO_CHAR(data_venda, 'YYYY-MM')
ORDER BY mes_ano DESC;

/*9 - Top 5 modelos mais vendidos */

SELECT Modelo.nome_modelo, COUNT(*) AS vendas
FROM Venda
INNER JOIN Veiculo ON Venda.id_veiculo = Veiculo.id_veiculo
INNER JOIN Modelo ON Veiculo.id_modelo = Modelo.id_modelo
GROUP BY Modelo.nome_modelo
ORDER BY vendas DESC
LIMIT 5;

/*10 - Média de quilometragem dos veículos vendidos por marca (apenas quem tem média > 50000) */

SELECT Marca.nome_marca, AVG(Veiculo.quilometragem) AS media_km
FROM Veiculo
INNER JOIN Modelo ON Veiculo.id_modelo = Modelo.id_modelo
INNER JOIN Marca ON Modelo.id_marca = Marca.id_marca
INNER JOIN Venda ON Veiculo.id_veiculo = Venda.id_veiculo
GROUP BY Marca.nome_marca
HAVING AVG(Veiculo.quilometragem) > 50000
ORDER BY media_km DESC;

/*11 - Veículos vendidos em 2024, ordenados por ano de fabricação (mais novos primeiro) */

SELECT Veiculo.*, Marca.nome_marca, Modelo.nome_modelo
FROM Veiculo
INNER JOIN Modelo ON Veiculo.id_modelo = Modelo.id_modelo
INNER JOIN Marca ON Modelo.id_marca = Marca.id_marca
INNER JOIN Venda ON Veiculo.id_veiculo = Venda.id_veiculo
WHERE EXTRACT(YEAR FROM Venda.data_venda) = 2024
ORDER BY Veiculo.ano DESC;

/*12 - Total de comissão por corretor (apenas quem recebeu mais de 10.000)*/

SELECT Corretor.nome, SUM(Venda.comissao) AS total_comissao
FROM Venda
INNER JOIN Corretor ON Venda.id_corretor = Corretor.id_matricula
GROUP BY Corretor.id_matricula, Corretor.nome
HAVING SUM(Venda.comissao) > 10000
ORDER BY total_comissao DESC;

/*13 - Compradores casados que já compraram algum veículo (com nome do cônjuge) */

SELECT Comprador.nome AS comprador, Comprador.estado_civil, Conjuge.nome AS nome_conjuge, Venda.valor
FROM Comprador
INNER JOIN Conjuge ON Comprador.id_comprador = Conjuge.id_comprador
INNER JOIN Venda ON Comprador.id_comprador = Venda.id_comprador
WHERE Comprador.estado_civil = 'Casado'
ORDER BY Venda.valor DESC;