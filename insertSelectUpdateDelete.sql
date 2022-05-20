Use Ecomerce

SELECT * FROM clientes
--alt f1 exibe detalhes da tabela 

--formas de insert
INSERT INTO clientes (codigo, nome, TipoPessoa) values (1, 'Diogo', 'F');
INSERT clientes (codigo, nome, TipoPessoa) values (2, 'Tatiana', 'F');
INSERT INTO clientes (TipoPessoa, codigo, nome) values ('F', 3, 'Diana');
--outra forma de insert obdecendo a ordem que exitam na table
INSERT clientes values (4, 'Diogo', 'F');
INSERT clientes values (5, 'Diogo', 'F'), (6, 'Diogo', 'F');

SELECT TipoPessoa, nome FROM clientes

SELECT * from  FROM clientes WHERE TipoPessoa = 'J'
--atualizar
UPDATE clientes set codigo = 7, nome = 'José' WHERE codigo = 6
--deletar
DELETE from clientes WHERE codigo in (5, 4, 3)

--AND e OR  

SELECT * FROM clientes WHERE codigo = 1 AND TipoPessoa = 'F'
SELECT * FROM clientes WHERE codigo = 1 OR TipoPessoa = 'J'

SELECT * FROM Produtos 

INSERT Produtos VALUES (1, 'Caneta', 'Caneta azul', 1.5)
INSERT Produtos VALUES (2, 'Caderno', 'Caderno azul', 20)

SELECT * FROM Pedido

INSERT Pedido VALUES (1, getdate(), 0, 3, 7)

SELECT * FROM PedidoItem 
INSERT PedidoItem VALUES (1, 1, 1.5, 2)

-- Condicional no banco 
SELECT *, CASE
				WHEN TipoPessoa = 'J' THEN 'Juridica'
				WHEN TipoPessoa = 'F' THEN 'Física'
				ELSE 'Pessoa Indefinida'
		end
from clientes

--convesão

SELECT *, CONVERT(varchar, DataSolicitacao)
FROM Pedido
--conversão data formatação brasil
SELECT *, CONVERT(varchar, DataSolicitacao,103)
FROM Pedido

--concatenação

SELECT *, CASE
				WHEN TipoPessoa = 'J' THEN 'Juridica'
				WHEN TipoPessoa = 'F' THEN 'Física'
				ELSE 'Pessoa Indefinida'
		end  + CONVERT(varchar, GETDATE(), 103)
from clientes
