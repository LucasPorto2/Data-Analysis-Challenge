-- Querie para obter o Faturamento Mensal

SELECT Extract('Month' From created) AS mês , SUM(value) AS faturamento
FROM orders GROUP BY mês ORDER BY mês ;

-- Querie para obter o Número Mensal de Vendas

SELECT Extract('Month' From created) AS mês , COUNT(Extract('Month' From created)) AS número_de_vendas 
FROM orders GROUP BY mês ORDER BY mês;

-- Querie para obter o Número Mensal de Vendas por Produto

SELECT Extract('Month' From created) AS mês , hair_type,
COUNT(Extract('Month' From created)) AS número_de_vendas
FROM forms INNER JOIN orders ON forms.id = form_id
GROUP BY mês , hair_type  ORDER BY mês ;

-- Querie para obter o Ticket Médio

SELECT hair_type , AVG(value) AS ticket_médio FROM forms INNER JOIN orders
ON forms.id = form_id
GROUP BY hair_type ;


