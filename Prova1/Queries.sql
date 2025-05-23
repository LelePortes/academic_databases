--A
select * from products;

--B
select * from products where type='Escolar';

--C
select * from products where quantity between 120 and 350;

--D
select * from products where name like 'L%';

--E
select count(*) as 'qtd_produtos'
from products;

--F
select sum(price) as 'soma_precos'
from products 
where type='Escolar';

--G
select sum(price) as 'soma_precos'
from products 
where type='Utensílios';

--H
select max(price) as 'maior_preco'
from products;

--I
select type, count(*) as 'qtd_products'
from products
group by type;