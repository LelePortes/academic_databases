-- Cálculo da Porcentagem Total de Vendas
-- a) Porcentagem de Participação de Cada Loja em Relação ao Total de Vendas
-- Porcentagem de participação de cada loja em relação ao total de vendas
SELECT 
    StoreID,
    StoreName,
    Region,
    QuantitySold,
    SUM(QuantitySold) OVER() AS 'Total Sold',
    FORMAT(QuantitySold / SUM(QuantitySold) OVER(), '0.00%') AS 'Percentage of Total Sales'
FROM Stores
ORDER BY StoreID;
--ORDER BY 6 desc; --ordena a sexta coluna que é a porcentagem em ordem decrescente


-- Porcentagem de participação de cada loja em relação ao total de vendas por região
SELECT --esse select é separado por região, diferente do outro que era um 'todo'
    StoreID,
    StoreName,
    Region,
    QuantitySold,
    SUM(QuantitySold) OVER(PARTITION BY Region) AS 'Total Sold by Region',
    FORMAT(QuantitySold / SUM(QuantitySold) OVER(PARTITION BY Region), '0.00%') AS 'Percentage of Sales by Region'
FROM Stores
ORDER BY Region;