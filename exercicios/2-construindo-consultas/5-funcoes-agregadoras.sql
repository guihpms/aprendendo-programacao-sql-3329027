-- Para a tabela "invoices", crie uma consulta que retorne o país e a soma das compras realizadas nele, bem como o valor da compra mínima e máxima, a quantidade de compras realizadas e o ticket médio de cada compra.
SELECT
BillingCountry 'País',
SUM (Total) 'Soma Compras',
COUNT (Total) 'Compras Realizadas',
MIN (Total) 'Menor Valor',
MAX (Total) 'Maior Valor',
ROUND (AVG (Total),2) 'Ticket Médio'
FROM invoices
WHERE BillingCountry = 'Brazil';