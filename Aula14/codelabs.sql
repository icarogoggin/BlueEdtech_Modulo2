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
