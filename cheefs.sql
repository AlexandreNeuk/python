
-- Questão 1
select Sexo as "Sexo", count(*) as "Total"
from clientes
group by sexo

-- Questão 2
(SELECT  '18-20' Age_Range, COUNT(CASE WHEN idade BETWEEN 18 AND 20 THEN idade ELSE NULL END) Qtd
FROM clientes)
Union
(SELECT  '21-23', COUNT(CASE WHEN idade BETWEEN 21 AND 23 THEN idade ELSE NULL END) Qtd
FROM clientes)
Union
(SELECT  '24-27', COUNT(CASE WHEN idade BETWEEN 24 AND 27 THEN idade ELSE NULL END) Qtd
FROM clientes)
order by age_range

-- Questão 3
select count(*) as "Total", c.plano as "Tipo Plano"
from clientes c
inner join usos u on u.id = c.id
group by c.plano
