-- C�lculo da Porcentagem Total de Vendas
-- a) Porcentagem de Participa��o de Cada Loja em Rela��o ao Total de Vendas
-- Porcentagem de participa��o de cada loja em rela��o ao total de vendas
SELECT 
    StoreID,
    StoreName,
    Region,
    QuantitySold,
    SUM(QuantitySold) OVER() AS 'Total Sold',
    FORMAT(QuantitySold / SUM(QuantitySold) OVER(), '0.00%') AS 'Percentage of Total Sales'
FROM Stores
ORDER BY StoreID;
--ORDER BY 6 desc; --ordena a sexta coluna que � a porcentagem em ordem decrescente


-- Porcentagem de participa��o de cada loja em rela��o ao total de vendas por regi�o
SELECT --esse select � separado por regi�o, diferente do outro que era um 'todo'
    StoreID,
    StoreName,
    Region,
    QuantitySold,
    SUM(QuantitySold) OVER(PARTITION BY Region) AS 'Total Sold by Region',
    FORMAT(QuantitySold / SUM(QuantitySold) OVER(PARTITION BY Region), '0.00%') AS 'Percentage of Sales by Region'
FROM Stores
ORDER BY Region;