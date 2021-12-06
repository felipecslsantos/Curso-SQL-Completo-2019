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

SELECT EmailAddress
FROM Person.Person, Person.EmailAddress
WHERE FirstName = 'Peter' AND LastName = 'Krebs';