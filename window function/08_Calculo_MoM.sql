
-- Fun��es de Janela
-- database = WF
-- FUN��ES DE OFFSET (Deslocamento): LAG e LEAD
-- C�lculo MoM

SELECT                --mostra a porcentagem que o faturamento sobre ou cai durante os meses
	Data_Fechamento AS 'Data do Fechamento',
	Faturamento_MM AS 'Faturamento Total (em milh�es)',
	FORMAT((Faturamento_MM/NULLIF(LAG(Faturamento_MM, 1, 0) OVER(ORDER BY Data_Fechamento), 0)) - 1, '0.00%') AS 'Crescimento MoM'
FROM Sales
ORDER BY [Data do Fechamento]