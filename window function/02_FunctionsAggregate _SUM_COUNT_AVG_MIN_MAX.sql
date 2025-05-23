-- 1. Soma Total das Vendas da Tabela Stores

-- Soma total das vendas
SELECT 
    StoreID,
    StoreName,
    Region,
    QuantitySold,
    SUM(QuantitySold) OVER() AS 'Total Sold' --OVER() vai indicar que esse SUM está fora do GROUP BY, ou seja, não tem necessidade dele
FROM Stores
ORDER BY StoreID;

-- Soma total das vendas por região
SELECT 
    StoreID,
    StoreName,
    Region,
    QuantitySold,
    SUM(QuantitySold) OVER(PARTITION BY Region) AS 'Total Sold by Region' --pegou a ultima query e jogou nessa linha
FROM Stores
ORDER BY StoreID;


select top 100*
from Stores

select Region, sum(QuantitySold) --essa é a ultima query
from stores 
group by Region

-- 2. Contagem das Vendas da Tabela Stores


-- Contagem total de lojas
SELECT 
    StoreID,
    StoreName,
    Region,
    QuantitySold,
    COUNT(*) OVER() AS 'Total Stores'
FROM Stores
ORDER BY StoreID;

-- Contagem de lojas por região
SELECT 
    StoreID,
    StoreName,
    Region,
    QuantitySold,
    COUNT(*) OVER(PARTITION BY Region) AS 'Stores by Region'
FROM Stores
ORDER BY StoreID;


--3. Média das Vendas da Tabela Stores

-- Média das vendas
SELECT 
    StoreID,
    StoreName,
    Region,
    QuantitySold,
    AVG(QuantitySold) OVER() AS 'Average Sold'
FROM Stores
ORDER BY StoreID;

-- Média das vendas por região
SELECT 
    StoreID,
    StoreName,
    Region,
    QuantitySold,
    AVG(QuantitySold) OVER(PARTITION BY Region) AS 'Average Sold by Region'
FROM Stores
ORDER BY StoreID;



-- 4. Mínimo e Máximo das Vendas da Tabela Stores
-- Mínimo das vendas
SELECT 
    StoreID,
    StoreName,
    Region,
    QuantitySold,
    MIN(QuantitySold) OVER() AS 'Minimum Sold'
FROM Stores
ORDER BY StoreID;

-- Mínimo das vendas por região
SELECT 
    StoreID,
    StoreName,
    Region,
    QuantitySold,
    MIN(QuantitySold) OVER(PARTITION BY Region) AS 'Minimum Sold by Region'
FROM Stores
ORDER BY StoreID;

-- Máximo das vendas
SELECT 
    StoreID,
    StoreName,
    Region,
    QuantitySold,
    MAX(QuantitySold) OVER() AS 'Maximum Sold'
FROM Stores
ORDER BY StoreID;

-- Máximo das vendas por região
SELECT 
    StoreID,
    StoreName,
    Region,
    QuantitySold,
    MAX(QuantitySold) OVER(PARTITION BY Region) AS 'Maximum Sold by Region'
FROM Stores
ORDER BY StoreID; --fica mais fácil entender se ordenar por Region