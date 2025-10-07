/*1 - Qual é o patrocinador principal em termos de valor financeiro? 
Liste o nome da empresa, seu CNPJ e o valor total acordado para o campeonato.*/

SELECT 
    nome AS nome_da_empresa, 
    cnpj, 
    MAX(valorPatrocinio) AS valor do patrocínio
FROM 
    Patrocinio
ORDER BY
    valorPatrocinio DESC -- Ordena do maior
LIMIT 1;

/*2 - Qual é a classificação final (ranking) do campeonato? 
Liste o apelido do piloto, a categoria, e a pontuação total acumulada em todas as etapas e sua posição no ranking.*/

SELECT 
    piloto.apelido, AS apelido,
    categoria.nome AS categoria,
    SUM(Classificacao_etapa.pontuacao) AS pontuacao_total, -- Soma a pontuação de todas as etapas para cada piloto
    RANK() OVER (ORDER BY SUM(Classificacao_etapa.pontuacao) DESC) AS posicao_ranking -- Calcula a posição no ranking com base na pontuação total
FROM
    Piloto
INNER JOIN 
    Categoria ON Piloto.id_Piloto = Categoria.idPiloto
INNER JOIN 
    Classificacao_etapa ON Piloto.id_Piloto = Classificacao_etapa.idPiloto;

/*3 - Liste o nome completo do piloto, o modelo e a marca do carro que utiliza, e a qual categoria do mesmo?*/

SELECT 
    Piloto.nomeCompleto AS nome_do_piloto,
    Carro.modelo AS modelo_do_carro,
    Carro.marca AS marca_do_carro,
    Categoria.nome AS categoria
FROM
    Piloto
INNER JOIN 
    Carro ON Piloto.id_Piloto = Carro.idPiloto  
INNER JOIN 
    Categoria ON Piloto.id_Piloto = Categoria.idPiloto;

/*4 - Qual a soma total de ingressos vendidos e quantos ingressos foram vendidos para o campeonato?*/

SELECT 
    SUM(Ingresso.valor) AS valor, 
    COUNT(Ingresso.id_Ingresso) AS total_de_ingressos_vendidos
FROM 
    Ingresso;


/*5 - Qual a próxima etapa da agenda? Liste o nome da etapa, a data de realização e a cidade/estado do endereço onde o evento ocorrerá.*/

SELECT 
    Etapa.nome_etapa AS nome_da_etapa,
    Etapa.data AS data_da_realizacao,
    Endereco.cidade AS cidade,
    Endereco.estado AS estado
FROM
    Etapa
INNER JOIN 
    Endereco ON Etapa.idEndereco = Endereco.idEndereco
WHERE
    Etapa.data > CURDATE() -- Filtra para etapas futuras
ORDER BY
    Etapa.data ASC -- Ordena pela data mais próxima
LIMIT 1; -- Limita o resultado à próxima etapa

