-- Crie uma consulta que retorne as colunas CustomerId, FirstName, LastName e Address das pessoas consumidoras brasileiras
SELECT DISTINCT
CustomerId 'ID',
FirstName 'Nome',
LastName 'Sobrenome',
Address 'Endereço'
FROM customers
WHERE Country = 'Brazil';

-- Na consulta anterior, converta o sobrenome para letras maiúsculas
SELECT DISTINCT
CustomerId 'ID',
FirstName 'Nome',
UPPER (LastName) 'Sobrenome',
Address 'Endereço'
FROM customers
WHERE Country = 'Brazil';

-- Na consulta anterior, converta o nome para letras minúsculas
SELECT DISTINCT
CustomerId 'ID',
LOWER (FirstName) 'Nome',
UPPER (LastName) 'Sobrenome',
Address 'Endereço'
FROM customers
WHERE Country = 'Brazil';

-- Na consulta anterior, adicione uma coluna cujos os dados seja o resultado da concatenação das colunas de nome e sobrenome
SELECT DISTINCT
CustomerId 'ID',
LOWER (FirstName) 'Nome',
UPPER (LastName) 'Sobrenome',
FirstName || ' ' || LastName 'Nome Completo',
Address 'Endereço'
FROM customers
WHERE Country = 'Brazil';

-- Na consulta anterior, substitua "Av." por "Avenida" na coluna endereço
SELECT DISTINCT
CustomerId 'ID',
LOWER (FirstName) 'Nome',
UPPER (LastName) 'Sobrenome',
FirstName || ' ' || LastName 'Nome Completo',
REPLACE (Address, 'Av.','Avenida') 'Endereço'
FROM customers
WHERE Country = 'Brazil';

-- Na consulta anterior, utilize o símbolo de coringa para construir padrões textuais
SELECT DISTINCT
CustomerId 'ID',
LOWER (FirstName) 'Nome',
UPPER (LastName) 'Sobrenome',
FirstName || ' ' || LastName 'Nome Completo',
REPLACE (Address, 'Av.','Avenida') 'Endereço'
FROM customers
WHERE Country LIKE 'Br%';