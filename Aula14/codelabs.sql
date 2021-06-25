/*1)Listar o nome, sobrenome e email de todos os funcionários*/
SELECT nome, sobrenome, email FROM funcionarios
/*2)Listar o nome, sobrenome e email de todos os funcionários que são representantes de vendas*/
SELECT nome, sobrenome, email FROM funcionarios WHERE cargo = 'Sales Rep'
/*3)Listar todos os cargos (sem repetir)*/
SELECT DISTINCT (cargo) FROM funcionarios
/*4)Listar todas as cidades (sem repetir) em que a empresa possui lojas*/
SELECT DISTINCT (cidade) FROM lojas
/*5)Listar o nome, sobrenome e email , cidade, país e telefone da loja do presidente da empresa*/
SELECT f.nome, f.sobrenome, f.email, l.cidade, l.pais, l.telefone FROM funcionarios f INNER JOIN lojas l ON f.codloja = l.codloja WHERE f.cargo = 'President';
/*6)Listar o produto com o maior preço*/
SELECT * FROM produtos ORDER BY precosugerido DESC LIMIT 1;
/*7)Listar o produto com menor preço*/
SELECT * FROM produtos ORDER BY precosugerido ASC LIMIT 1;
/*8)Listar o produto com menor quantidade em estoque*/
SELECT * FROM produtos ORDER BY qtdestoque ASC LIMIT 1;
/*9)Listar o produto com maior quantidade em estoque*/
SELECT * FROM produtos ORDER BY qtdestoque DESC LIMIT 1;
/*10)Listar produto e quantidade de vendas daquele produto*/
SELECT p.nomeproduto, SUM(d.quantidadepedida) FROM produtos p INNER JOIN detalhespedidos d ON d.codproduto = p.codproduto GROUP BY p.nomeproduto;
/*DESAFIOS*/
/*1)Listar os clientes com maior quantidade de vendas. Exibir: Nome, Sobrenome, Cidade e Estado do Cliente e a quantidade de vendas dele*/
SELECT c.nomecontato AS "NOME", c.sobrenomecontato AS "SOBRENOME", c.estado AS "ESTADO", COUNT(p.numpedido) AS "TOTAL PEDIDOS"
FROM clientes c INNER JOIN pedidos p 
ON c.numcliente = p.numcliente 
GROUP BY c.nomecontato, c.sobrenomecontato, c.estado ORDER BY COUNT(p.numpedido) desc;