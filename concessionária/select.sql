/*1*/
SELECT * FROM Venda 
WHERE data_venda >= '2025-01-01'
ORDER BY valor DESC;

/*2*/
SELECT V.placa, V.cor, V.ano, Mar.nome_marca, Mod.nome_modelo
FROM Veiculo V
INNER JOIN Modelo Mod ON V.id_modelo = Mod.id_modelo
INNER JOIN Marca Mar ON Mod.id_marca = Mar.id_marca
INNER JOIN Venda Ven ON V.id_veiculo = Ven.id_veiculo;

/*3*/
SELECT Mar.nome_marca, COUNT(*) as quantidade_vendida
FROM Venda Ven
INNER JOIN Veiculo V ON Ven.id_veiculo = V.id_veiculo
INNER JOIN Modelo Mod ON V.id_modelo = Mod.id_modelo
INNER JOIN Marca Mar ON Mod.id_marca = Mar.id_marca
GROUP BY Mar.nome_marca
ORDER BY quantidade_vendida DESC;

/*4*/
SELECT Cor.nome, SUM(Ven.valor) as total_vendido
FROM Venda Ven
INNER JOIN Corretor Cor ON Ven.id_corretor = Cor.id_matricula
GROUP BY Cor.id_matricula, Cor.nome
HAVING total_vendido > 100000
ORDER BY total_vendido DESC;

/*5*/
SELECT Mar.nome_marca, AVG(Ven.valor) as valor_medio
FROM Venda Ven
INNER JOIN Veiculo V ON Ven.id_veiculo = V.id_veiculo
INNER JOIN Modelo Mod ON V.id_modelo = Mod.id_modelo
INNER JOIN Marca Mar ON Mod.id_marca = Mar.id_marca
GROUP BY Mar.nome_marca
ORDER BY valor_medio DESC;

/*6*/
SELECT Cor.nome, COUNT(*) as numero_vendas
FROM Venda Ven
INNER JOIN Corretor Cor ON Ven.id_corretor = Cor.id_matricula
GROUP BY Cor.id_matricula, Cor.nome
HAVING numero_vendas >= 3
ORDER BY numero_vendas DESC;

