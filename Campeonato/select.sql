/*1 - Qual é o patrocinador principal em termos de valor financeiro? 
Liste o nome da empresa, seu CNPJ e o valor total acordado para o campeonato.*/

SELECT 
    nome AS nome_da_empresa, 
    cnpj, 
    valorPatrocinio AS valor_do_patrocínio
FROM 
    Patrocinio
ORDER BY
    valorPatrocinio DESC -- Ordena do maior
LIMIT 1;

/*2 - Qual é a classificação final (ranking) do campeonato? 
Liste o apelido do piloto, a categoria, e a pontuação total acumulada em todas as etapas e sua posição no ranking.*/

SELECT 
    P.apelido AS apelido,
    C.nomeCategoria AS categoria,
    SUM(CE.pontuacao) AS pontuacao_total, -- Soma a pontuação de todas as etapas para cada piloto
    RANK() OVER (ORDER BY SUM(CE.pontuacao) DESC) AS posicao_ranking -- Calcula a posição no ranking com base na pontuação total
FROM
    Piloto P
INNER JOIN 
    Categoria AS C ON P.id_Piloto = C.id_Piloto
INNER JOIN 
    Classificacao_etapa AS CE ON P.id_Piloto = CE.id_Piloto
GROUP BY
    P.id_Piloto, P.apelido, C.nomeCategoria
ORDER BY
    pontuacao_total DESC;
    
/*3 - Liste o nome completo do piloto, o modelo e a marca do carro que utiliza, e a qual categoria do mesmo?*/

SELECT 
    P.nomeCompleto AS nome_do_piloto,
    Carro.modelo AS modelo_do_carro,
    Carro.marca AS marca_do_carro,
    Categoria.nomeCategoria AS categoria
FROM
    Piloto
INNER JOIN 
    Carro ON Piloto.id_Piloto = Carro.id_Piloto  
INNER JOIN 
    Categoria ON Piloto.id_Piloto = Categoria.id_Piloto;

/*4 - Qual a soma total de ingressos vendidos e quantos ingressos foram vendidos para o campeonato?*/

SELECT 
    SUM(I.valor) AS valor_arrecadado, 
    COUNT(I.id_ingresso) AS total_de_ingressos_vendidos
FROM 
    Ingresso;


/*5 - Qual a próxima etapa da agenda? Liste o nome da etapa, a data de realização e a cidade/estado do endereço onde o evento ocorrerá.*/

SELECT 
    E.nome_etapa AS nome_da_etapa,
    E.dataEtapa AS data_da_realizacao,
    Endereco.cidade AS cidade,
    Endereco.estado AS estado
FROM
    Etapa
INNER JOIN 
    Endereco ON Etapa.id_Endereco = Endereco.id_Endereco
WHERE
    Etapa.dataEtapa > CURDATE() -- Filtra para etapas futuras
ORDER BY
    E.dataEtapa ASC
LIMIT 1;

