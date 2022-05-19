-- criando tabelas do curso de SQL 

Create table Pedido
(
	Codigo int not null,
	DataSolicitacao datetime not null,
	FlagPago bit not null,
	TotalPedido float not null,
	CodigoCliente int
)

create table PedidoItem 
(
	CodigoPedido int not null, 
	CodigoProduto int not null,
	Preco float not null, 
	Quantidade int not null
)

create table Produtos 

(
	Codigo int, 
	Nome VARCHAR (100),
	Descricao VARCHAR(200),
	Preco float
)