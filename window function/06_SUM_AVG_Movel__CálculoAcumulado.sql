-- Fun��es de Janela
-- C�lculo de soma m�vel e m�dia m�vel
/*
CREATE TABLE Sales (
    Data_Fechamento DATETIME,
    Faturamento_MM FLOAT
);

INSERT INTO Sales(Data_Fechamento, Faturamento_MM) VALUES
    ('2020-01-01', 8),
    ('2020-02-01', 10),
    ('2020-03-01', 6),
    ('2020-04-01', 9),
    ('2020-05-01', 5),
    ('2020-06-01', 4),
    ('2020-07-01', 7),
    ('2020-08-01', 11),
    ('2020-09-01', 9),
    ('2020-10-01', 12),
    ('2020-11-01', 11),
    ('2020-12-01', 10);
**/
-- Consultas para Soma M�vel e M�dia M�vel
-- Agora, vamos criar as consultas SQL para calcular a soma m�vel e a m�dia m�vel dos faturamentos.

-- Soma M�vel

SELECT             --faz a soma do faturamento do m�s anterior com o atual (ele soma e tira m�dia)
    Data_Fechamento AS 'Data do Fechamento',
    Faturamento_MM AS 'Faturamento Total (em milh�es)',
    SUM(Faturamento_MM) OVER(ORDER BY Data_Fechamento 
	ROWS BETWEEN 1 PRECEDING AND CURRENT ROW) AS 'Fat. Acumulado (em milh�es)'
FROM Sales
ORDER BY [Data do Fechamento];



-- M�dia m�vel
SELECT
    Data_Fechamento AS 'Data do Fechamento',
    Faturamento_MM AS 'Faturamento Total (em milh�es)',
    AVG(Faturamento_MM) OVER(ORDER BY Data_Fechamento 
	ROWS BETWEEN 1 PRECEDING AND CURRENT ROW) AS 'Fat. M�dio (em milh�es)'
FROM Sales
ORDER BY [Data do Fechamento];


SELECT * FROM Sales


-- Soma acumulada

SELECT
	Data_Fechamento AS 'Data do Fechamento',
	Faturamento_MM AS 'Faturamento Total (em milh�es)',
	SUM(Faturamento_MM) OVER(ORDER BY Data_Fechamento 
	ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS 'Fat. Acumulado (em milh�es)'
FROM Sales
ORDER BY [Data do Fechamento]


-- M�dia acumulada

SELECT
	Data_Fechamento AS 'Data do Fechamento',
	Faturamento_MM AS 'Faturamento Total (em milh�es)',
	AVG(Faturamento_MM) OVER(ORDER BY Data_Fechamento 
	ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS 'Fat. Acumulado (em milh�es)'
FROM Sales
ORDER BY [Data do Fechamento]