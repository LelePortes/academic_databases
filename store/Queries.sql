select*
from Customers c
where c.country in('USA', 'Brazil', 'UK')
order by c.country

select Country, count(Country) as 'total por País'
from Customers
group by Country
order by 2                     --ou "order by count(Country) desc" para decrescente

select Country, counter(Country) as 'total por País'
from Customers
where ContacTitle = 'Owner' --"where" faz busca dentro da tabela
group by Country
order by count(Country) desc

select Country, count(Country) as 'total por País'
from Customers
group by Country
having count(Country) > 5 --"having" é um filtro do contador 
order by count(Country) desc


--'where' tira antes do agrupamento e o 'having' filtra os dados depois do agrupamento