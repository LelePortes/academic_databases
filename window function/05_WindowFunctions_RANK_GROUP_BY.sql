-- Para criar uma tabela com o total de vendas por regi�o e incluir uma coluna de ranking, voc� pode usar as fun��es de agrega��o junto com a 
--fun��o de janela. A consulta que voc� forneceu est� quase correta, mas a fun��o RANK() deve ser ajustada para usar uma subconsulta ou uma 
-- CTE (Common Table Expression), j� que n�o podemos usar fun��es de janela diretamente em uma cl�usula SELECT que inclui fun��es de agrega��o como SUM().



--Consulta com Ranking Utilizando GROUP BY
-- Fun��es de Classifica��o: Ranking com GROUP BY
WITH VendasPorRegiao AS (
    SELECT
        Region AS 'Regi�o',
        SUM(QuantitySold) AS 'Total Vendido'
    FROM
        stores
    GROUP BY
        Region
)

SELECT
    Regi�o,
    [Total Vendido],
    RANK() OVER (ORDER BY [Total Vendido] DESC) AS 'Rank'
FROM
    VendasPorRegiao
ORDER BY
    [Rank];  -- Ordena��o pelo Rank