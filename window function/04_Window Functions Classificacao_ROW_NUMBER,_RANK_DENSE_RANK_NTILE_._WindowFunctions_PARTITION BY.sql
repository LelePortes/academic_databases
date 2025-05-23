--Consultas de Classificação
-- Funções de Classificação para a tabela Stores, focando na região "Southeast"
SELECT
    StoreID,
    StoreName,
    Region,
    QuantitySold,
    ROW_NUMBER() OVER(ORDER BY QuantitySold DESC) AS 'RowNumber', --ordenando o maior por quantidade
    RANK() OVER(ORDER BY QuantitySold DESC) AS 'Rank',            --ordenando pela quantidade, mas, odenando por um ranking (está ranquiando)
    DENSE_RANK() OVER(ORDER BY QuantitySold DESC) AS 'DenseRank', --parece com o rank, a diferença é que não pula a posição do que duplica
    NTILE(3) OVER(ORDER BY QuantitySold DESC) AS 'Ntile'          --(tile faz uma divisão dentro dos valores que ele tem): divede o total e define que as divisões ficaram em 3 elementos
FROM
    Stores
WHERE
    Region = 'Southeast'
ORDER BY
    QuantitySold DESC;


--Consultas de Classificação com Particionamento por Região
-- Funções de Classificação para a tabela Stores, particionando por região
SELECT
    StoreID,
    StoreName,
    Region,
    QuantitySold,
    ROW_NUMBER() OVER(PARTITION BY Region ORDER BY QuantitySold DESC) AS 'RowNumber',
    RANK() OVER(PARTITION BY Region ORDER BY QuantitySold DESC) AS 'Rank',
    DENSE_RANK() OVER(PARTITION BY Region ORDER BY QuantitySold DESC) AS 'DenseRank',
    NTILE(3) OVER(PARTITION BY Region ORDER BY QuantitySold DESC) AS 'Ntile'
FROM
    Stores
ORDER BY
    Region, QuantitySold DESC;  -- Ordenação por região e quantidade vendida