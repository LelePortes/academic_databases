--Consultas de Classifica��o
-- Fun��es de Classifica��o para a tabela Stores, focando na regi�o "Southeast"
SELECT
    StoreID,
    StoreName,
    Region,
    QuantitySold,
    ROW_NUMBER() OVER(ORDER BY QuantitySold DESC) AS 'RowNumber', --ordenando o maior por quantidade
    RANK() OVER(ORDER BY QuantitySold DESC) AS 'Rank',            --ordenando pela quantidade, mas, odenando por um ranking (est� ranquiando)
    DENSE_RANK() OVER(ORDER BY QuantitySold DESC) AS 'DenseRank', --parece com o rank, a diferen�a � que n�o pula a posi��o do que duplica
    NTILE(3) OVER(ORDER BY QuantitySold DESC) AS 'Ntile'          --(tile faz uma divis�o dentro dos valores que ele tem): divede o total e define que as divis�es ficaram em 3 elementos
FROM
    Stores
WHERE
    Region = 'Southeast'
ORDER BY
    QuantitySold DESC;


--Consultas de Classifica��o com Particionamento por Regi�o
-- Fun��es de Classifica��o para a tabela Stores, particionando por regi�o
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
    Region, QuantitySold DESC;  -- Ordena��o por regi�o e quantidade vendida