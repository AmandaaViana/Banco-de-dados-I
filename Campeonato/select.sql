/*1 - Qual é o patrocinador principal em termos de valor financeiro? 
Liste o nome da empresa, seu CNPJ e o valor total acordado para o campeonato.*/

SELECT 
    nome, 
    cnpj, 
    MAX(valorPatrocinio) AS maior valor de patrocínio
FROM 
    Patrocinio

/*2 - Qual é a classificação final (ranking) do campeonato? 
Liste o apelido do piloto, a pontuação total acumulada em todas as etapas e sua posição no ranking.*/

SELECT 
    p.apelido, 
    cf.pontuacao_total, 
    cf.posicao_final

/*3 - Liste o nome completo do piloto, o modelo e a marca do carro que utiliza, e a qual categoria do mesmo?*/

/*4 - Qual o total de ingressos vendidos e quantos clientes únicos compraram bilhetes para o campeonato?*/

/*5 - Qual a próxima etapa da agenda? Liste o nome da etapa, a data de realização e a cidade/estado do endereço onde o evento ocorrerá.*/