--# Exercícios SQL Review Prova
----------------------
-- 1. Selecionar todas as Categorias
--- Escreva uma consulta para selecionar todos os registros da tabela Categories.
select * 
from Categories;

----------------------

-- 2. Selecionar medicamentos com preço maior que R$ 20,00
--- Escreva uma consulta para selecionar os nomes e preços dos medicamentos que custam mais de R$ 20,00.
select name, price
from Medications 
where price > 20;

----------------------

-- 3. Contar o número de fornecedores
--- Escreva uma consulta para contar quantos fornecedores estão cadastrados na tabela Suppliers.
select count(*) as qty_fornecedores
from Suppliers;

----------------------

-- 4. Selecionar clientes nascidos antes de 1990
--- Escreva uma consulta que retorne os nomes dos clientes que nasceram antes de 1990.
select*
from Customers 
where date_of_birth < '1990-01-01';

----------------------

-- 5. Total de vendas por cliente
--- Escreva uma consulta que retorne o total de vendas realizadas por cada cliente. e necessario trazer o nome do Cliente
select ctm.name as 'nomeClientes', sum(sls.total) as 'totalVendas'
from Sales sls
inner join Customers ctm on ctm.customer_id = sls.customer_id
group by ctm.name;

----------------------

-- 6. Selecionar medicamentos de uma categoria específica
--- Escreva uma consulta para selecionar todos os medicamentos da categoria "Antibiotics".
select med.name
from Medications med
left join Categories ctg on ctg.category_id = med.category_id
where ctg.name = 'Antibiotics';

select *
from Medications med
inner join Categories cat on cat.category_id = med.category_id
left join Suppliers supp on supp.supplier_id = med.supplier_id --- essa consulta aparecem os fornecedores também, além dos itens acima
where cat.name = 'Antibiotics';

--NOVO TIPO DE INNER JOIN
select *
from Medications med, Categories cat, Suppliers supp -- primeiro a executar, ele pega todas essas tabelas
where 1=1 --vai na categoria e pega todas as tabelas
and cat.category_id = med.category_id
and supp.supplier_id = med.supplier_id
and cat.name = 'Antibiotics';

----------------------

-- 7. Verificar estoque de medicamentos
--- Escreva uma consulta para selecionar os nomes e estoques dos medicamentos que estão em falta (estoque = 0).
select name, stock
from Medications
where stock= 0;

----------------------

-- 8. Listar vendas e seus respectivos clientes
--- Escreva uma consulta que exiba as vendas juntamente com os nomes dos clientes.
select s.sale_id, c.name
from Sales s
join Customers c on c.customer_id = s.customer_id;

----------------------

-- 9. Contar medicamentos por categoria
--- Escreva uma consulta para contar quantos medicamentos existem em cada categoria.
select ctg.name as 'nomeCategoria', COUNT(med.medication_id) as 'totalMedicamentos'
from Categories ctg
left join Medications med on ctg.category_id = med.category_id
group by ctg.name;

----------------------

-- 10. Selecionar medicamentos cuja quantidade é menor que 50
--- Escreva uma consulta para selecionar os nomes e estoques dos medicamentos que têm um estoque menor que 50.
select name, stock
from Medications
where stock < 50;

----------------------

-- 11. Vendas com data de maio de 2025
--- Escreva uma consulta para selecionar todas as vendas que ocorreram em maio de 2025.
select *
from Sales
where MONTH(date) = 5 and
YEAR(date) = 2025;

----------------------

-- 12. Média de preço dos medicamentos
--- Escreva uma consulta para calcular a média dos preços dos medicamentos.
select avg(price) as media_precos
from Medications;

----------------------

-- 13. Medicamento mais caro
--- Escreva uma consulta para encontrar o medicamento mais caro.
select top 1 name, price
from Medications
order by price desc;

----------------------

-- 14. Total de medicamentos vendidos em uma venda
--- Escreva uma consulta que retorne o total de itens vendidos em cada venda, agrupando por venda.
select sale_id, SUM(quantity) as total_itens
from Sale_Items
group by sale_id;

----------------------

-- 15. Vendas em que o total é maior que R$ 80,00
--- Escreva uma consulta para selecionar os IDs das vendas cujo total é maior que R$ 80,00.
select*
from Sales
where total > 80.00;

----------------------

-- 16. Produtos com preço e estoque
--- Escreva uma consulta que exiba o nome do medicamento, o preço e o estoque, ordenados pelo preço em ordem decrescente.
select name, price, stock
from Medications
order by price desc;

----------------------

-- 17. Fornecedores sem medicamentos
--- Escreva uma consulta que retorne todos os fornecedores que não fornecem nenhum medicamento.
select s.*
from Suppliers s
left join Medications m on s.supplier_id = m.supplier_id
where m.medication_id is null;

----------------------

-- 18. Alterar preço de um medicamento
--- Escreva uma consulta para atualizar o preço do medicamento "Paracetamol" para R$ 12,50.
update Medications 
set price = 12.50
where name = 'Paracetamol';

----------------------

-- 19. Excluir um cliente
--- Escreva uma consulta para excluir um cliente pelo seu ID (por exemplo, cliente_id = 1).
delete from Customers
where customer_id = 1;

----------------------

-- 20. Inserir um novo medicamento
--- Escreva uma consulta para inserir um novo medicamento chamado "Novo Medicamento" na categoria "Antidepressants" com preço R$ 35,00 e estoque 60.
insert into Medications (name, category_id, price, stock) values
						('Novo Medicamento',
						(select category_id 
						from Categories 
						where name = 'Antidepressants'), 35.00, 60);

----------------------

-- 21: View de Vendas por Cliente
--- Crie uma view que mostre todas as vendas feitas por cada cliente, incluindo o nome do cliente, a data da venda e o total da venda.
create view VendasPorCliente
as
select
c.name as nome_clientes,
s.date as data_da_venda,
s.total as total_vendas
from
Customers c
inner join
Sales s on c.customer_id = s.customer_id

----------------------

-- 22: Join para Medicamentos e Fornecedores
--- Escreva uma consulta que exiba o nome do medicamento, o nome do fornecedor e o preço, fazendo o join entre as tabelas Medications e Suppliers (supondo que ### haja uma relação de fornecimento que você poderia implementar).
----- Neste caso, você precisaria ajustar o modelo para incluir um relacionamento entre Suppliers e Medications
------ Assumindo uma tabela que relacione medicamentos com fornecedores, poderia ser algo assim:
SELECT 
    m.name AS medication_name, 
    s.name AS supplier_name,
    m.price
FROM Medications m
JOIN Suppliers s ON m.supplier_id = s.supplier_id;


----------------------

-- 23: Trigger para Atualizar Estoque
--- Crie uma trigger que atualize o valor do estoque na tabela Medications quando um novo item for inserido na tabela Sale_Items. 
--- Quando um produto é vendido, ### o estoque deve ser decrementado.
create trigger UpdateStockOnSale
on Sale_Items
after insert
as
begin
	update Medications
	set stock = stock - i.quantity
	from Medications m
	inner join inserted i on m.medication_id = i.medication_id;
	end;

--------------------

-- 24: Teste A trigger Criada
--- Para testar a trigger que foi criada anteriormente (UpdateStockOnSale), você IRÁ criar um procedimento armazenado que insere dados na tabela Sale_Items. 
-- Isso permitirá que você veja se a trigger atualiza corretamente os estoques na tabela Medications após a inserção.

CREATE OR ALTER PROCEDURE TestUpdateStockOnSale 
    @sales_id INT,
    @medication_id INT,
    @quantity INT,
	@unit_price NUMERIC(19,2)
AS
BEGIN
    -- Inserir um novo item de venda na tabela Sale_Items   
	INSERT INTO Sale_Items (sale_id, medication_id, quantity, unit_price) VALUES (@sales_id, @medication_id, @quantity, @unit_price);
    
    -- Opcionalmente, você pode selecionar o novo estoque para ver a atualização
    SELECT 
        medication_id,
        stock 
    FROM 
        Medications 
    WHERE 
        medication_id = @medication_id;
END;


-- Execute o select Antes de executar o procedimento

SELECT * FROM Medications WHERE medication_id = 1;

-- Testar o procedimento com valores específicos
EXEC TestUpdateStockOnSale @sales_id = 2,  @medication_id = 1, @quantity = 3 ,@unit_price=25.00;

-- Verificar o estoque do medicamento para confirmar se a trigger funcionou
SELECT * FROM Medications WHERE medication_id = 1;

--------------------

-- 25: View de Relatório de Vendas
--- Crie uma view que mostre um relatório completo das vendas, incluindo o nome do cliente, a data da venda, o total de cada venda e o número total de itens vendidos.
create view RelatorioVendas as
select
	c.name as customer_name,
	s.date as sale_date,
	s.total as sale_total,
	SUM(si.quantity) as total_items
from
	Sales s
join
	Customers c on s.customer_id = c.customer_id
join
	Sale_Items si on s.sale_id = si.sale_id
group by
	c.name, s.date, s.total

----------------------

-- 26: Join para Medicamentos em Vendas
--- Escreva uma consulta que mostre os detalhes das vendas, incluindo os medicamentos vendidos e seus preços unitários. A consulta deve retornar o nome do medicamento, a data da venda e o total (quantidade * preço unitário).
select
	m.name as medication_name,
	s.date as sal_date,
	si.quantity,
	si.unit_price,
	(si.quantity * si.unit_price) as total_price
from
	Sale_Items si
join
	Sales s on si.sale_id = s.sale_id
join
	Medications m on si.medication_id = m.medication_id;

----------------------