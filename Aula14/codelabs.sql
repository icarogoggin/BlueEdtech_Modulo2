/*1)Listar o nome, sobrenome e email de todos os funcionários*/
SELECT nome, sobrenome, email FROM funcionarios
/*2)Listar o nome, sobrenome e email de todos os funcionários que são representantes de vendas*/
SELECT nome, sobrenome, email FROM funcionarios WHERE cargo = 'Sales Rep'
