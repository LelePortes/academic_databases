-- Fun��es de Janela
-- database = WF
-- FUN��ES DE OFFSET (Deslocamento): LAG e LEAD

SELECT
	Data_Fechamento AS 'Data do Fechamento',
	Faturamento_MM AS 'Faturamento Total (em milh�es)',
	LAG(Faturamento_MM, 1, 0) OVER(ORDER BY Data_Fechamento) AS 'Fat. M�s Anterior', --mostra o faturamento do m�s anterior
	LEAD(Faturamento_MM, 1, 0) OVER(ORDER BY Data_Fechamento) AS 'Fat. M�s Seguinte' --mostra o pr�ximo faturamento
FROM Sales
ORDER BY [Data do Fechamento]