-- 1. Soma Total das Vendas da Tabela Stores

-- Soma total das vendas
SELECT 
    StoreID,
    StoreName,
    Region,
    QuantitySold,
    SUM(QuantitySold) OVER() AS 'Total Sold' --OVER() vai indicar que esse SUM est� fora do GROUP BY, ou seja, n�o tem necessidade dele
FROM Stores
ORDER BY StoreID;

-- Soma total das vendas por regi�o
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

select Region, sum(QuantitySold) --essa � a ultima query
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

-- Contagem de lojas por regi�o
SELECT 
    StoreID,
    StoreName,
    Region,
    QuantitySold,
    COUNT(*) OVER(PARTITION BY Region) AS 'Stores by Region'
FROM Stores
ORDER BY StoreID;


--3. M�dia das Vendas da Tabela Stores

-- M�dia das vendas
SELECT 
    StoreID,
    StoreName,
    Region,
    QuantitySold,
    AVG(QuantitySold) OVER() AS 'Average Sold'
FROM Stores
ORDER BY StoreID;

-- M�dia das vendas por regi�o
SELECT 
    StoreID,
    StoreName,
    Region,
    QuantitySold,
    AVG(QuantitySold) OVER(PARTITION BY Region) AS 'Average Sold by Region'
FROM Stores
ORDER BY StoreID;



-- 4. M�nimo e M�ximo das Vendas da Tabela Stores
-- M�nimo das vendas
SELECT 
    StoreID,
    StoreName,
    Region,
    QuantitySold,
    MIN(QuantitySold) OVER() AS 'Minimum Sold'
FROM Stores
ORDER BY StoreID;

-- M�nimo das vendas por regi�o
SELECT 
    StoreID,
    StoreName,
    Region,
    QuantitySold,
    MIN(QuantitySold) OVER(PARTITION BY Region) AS 'Minimum Sold by Region'
FROM Stores
ORDER BY StoreID;

-- M�ximo das vendas
SELECT 
    StoreID,
    StoreName,
    Region,
    QuantitySold,
    MAX(QuantitySold) OVER() AS 'Maximum Sold'
FROM Stores
ORDER BY StoreID;

-- M�ximo das vendas por regi�o
SELECT 
    StoreID,
    StoreName,
    Region,
    QuantitySold,
    MAX(QuantitySold) OVER(PARTITION BY Region) AS 'Maximum Sold by Region'
FROM Stores
ORDER BY StoreID; --fica mais f�cil entender se ordenar por Region