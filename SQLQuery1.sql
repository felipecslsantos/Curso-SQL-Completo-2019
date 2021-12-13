SELECT *
FROM person.Person;

SELECT Title
FROM person.Person;

SELECT *
FROM person.EmailAddress;

SELECT FirstName, LastName 
FROM Person.Person;

SELECT FirstName 
FROM Person.Person;

SELECT DISTINCT FirstName 
FROM Person.Person;

SELECT DISTINCT LastName
FROM Person.Person;

-- WHERE

SELECT FROM coluna1,coluna2,colunan
FROM tabela
WHERE condição;

/*

OPERADOR             -         DESCRIÇÃO
=								IGUAL
>								MAIOR QUE
<								MENOR QUE
>=								MAIOR QUE OU IGUAL
<=								MENOR QUE OU IGUAL
<>								DIFERENTE DE
AND								OPERADOR LÓGICO E
OR								OPERADOR LÓGICO OU

*/

SELECT *
FROM Person.Person
WHERE LastName = 'miller'

SELECT *
FROM production.Product
WHERE Color = 'Black' OR color = 'Blue'

SELECT *
FROM production.Product
WHERE ListPrice > 1000

SELECT *
FROM production.Product
WHERE ListPrice > 1000 and ListPrice < 5000

SELECT *
FROM production.Product
WHERE color <> 'red'

-- DESAFIO 1

/* a equipe de produção produtos precisa do nome
de todas peças que pesam mais de 500kg mas não 
mais 700kg para inspeção

-- DESAFIO 2

Foi pedido pelo Marketinguma relação de todos
os empregados(employees) que são casados(single=
solteiro, married=casado) e são 
assalariados(salaried)

-- DESAFIO 3

Um usuário chamado de Peter Krebs  está devendo
um pagamento, consiga o email dele para que possamos
enviar uma cobrança!

( você vai ter que usar a tabela person.person e depois a tabela person.emailaddress)

*/


SELECT Name
FROM Production.Product 
WHERE Weight > 500 AND Weight < 700;

SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' AND SalariedFlag = 1;

SELECT *
FROM Person.Person
WHERE FirstName = 'Peter' AND LastName = 'Krebs';

SELECT EmailAddress
FROM Person.EmailAddress
WHERE BusinessEntityID = 26;

--COUNT

SELECT count(DISTINCT Title)
FROM Person.Person;

/* DESAFIO 1

Eu quero saber quantos produtos temos cadastrados
em nossa tabela produtos (Production.Product)

DESAFIO 2

Eu que saber quantos tamanhos de produtos temos cadastrados em nossa tabela 

*/

SELECT COUNT(*)
FROM Production.Product;

SELECT COUNT(Size)
FROM Production.Product;


-- TOP

SELECT TOP 10 *
FROM Production.Product;

-- ORDER BY

SELECT *
FROM Person.Person
ORDER BY FirstName asc;

SELECT *
FROM Person.Person
ORDER BY FirstName desc;

SELECT *
FROM Person.Person
ORDER BY FirstName asc, LastName desc;

SELECT FirstName, LastName
FROM Person.Person
ORDER BY FirstName asc, LastName desc;

SELECT MiddleName
FROM Person.Person
ORDER BY MiddleName asc;

 -- DESAFIO 1

 /* 
 Obter o product ID dos 10 produtos mais caros
 cadastrados no sistema, listando do mais caro
 para o mais barato.
 */
/*
- dicas
- Você tará que usar a tabela Production.Product
- Você terá Order BY  e TOP
- E para ordenar você terá que usar ORDER BY  asc ou desc dependendo do resultado que está buscnado
*/

 SELECT TOP 10 ProductID, ListPrice
 FROM Production.Product
 ORDER BY ListPrice desc;

/* DESAFIO 2
	Obter o nome e número dos produtos que tem o ProductID entre 1~4
*/
/*
- dicas
- Você tará que usar a tabela Production.Product
- Você terá Order BY  e TOP
- E para ordenar você terá que usar ORDER BY  asc ou desc dependendo do resultado que está buscnado
*/

SELECT TOP 4 Name, ProductNumber
 FROM Production.Product
 ORDER BY ProductID asc;

 --BETWEEN

 SELECT *
 FROM Production.Product
 WHERE ListPrice between 1000 AND 1500;

 SELECT *
 FROM Production.Product
 WHERE ListPrice NOT between 1000 AND 1500;

 SELECT *
 FROM HumanResources.Employee
 WHERE Hiredate between '2009/01/01' AND '2010/01/01'
 ORDER BY Hiredate;

 -- IN

 SELECT *
 FROM Person.Person
 WHERE BusinessEntityID IN (2,7,13);

 SELECT *
 FROM Person.Person
 WHERE BusinessEntityID NOT IN (2,7,13);

 -- LIKE

 SELECT *
 FROM Person.Person
 WHERE FirstName LIKE 'OVI%';

 SELECT *
 FROM Person.Person
 WHERE FirstName LIKE '%TO';

 SELECT *
 FROM Person.Person
 WHERE FirstName LIKE '%ESSA%';

 SELECT *
 FROM Person.Person
 WHERE FirstName LIKE '%ro_';

 /* DESAFIO FUNDAMENTOS

 1- Quantos produtos temos cadastrados no sistema  que custam mais de 1500,00 dólares?

 
 */

 SELECT COUNT(ListPrice)
 FROM Production.Product
 WHERE ListPrice > 1500;

 /*
 2 - Quantas pessoas tem o nome que inicia com a letra ?
 */
 SELECT COUNT(LastName)
 FROM Person.Person
 WHERE LastName LIKE 'P%'

 /*
 3 - Em quantas cidades únicas estão cadastrados nossos clientes
 */

 SELECT COUNT(DISTINCT(City))
 FROM Person.Address;

 /*
 4 - Quais as cidades únicas que temos cadastrados em nosso sistema?
 */

 SELECT DISTINCT(City)
 FROM Person.Address;

 /*

 Quantos produtos vermelhos tem preço entre 500 e 100 dólares?

 */

 SELECT COUNT(*)
 FROM Production.Product
 WHERE Color = 'Red'
 AND ListPrice BETWEEN '500' AND '1000';

 /*

 Quantos produtos cadastrados tem a palavra 'road' no nome deles?

 */

 SELECT COUNT(*)
 FROM Production.Product
 WHERE Name like '%road%';

