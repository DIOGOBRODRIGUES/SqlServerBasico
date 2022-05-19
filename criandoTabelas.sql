-- criando tabelas do curso de SQL 

Create table Pedido
(
	Codigo int not null,
	DataSolicitacao datetime not null,
	FlagPago bit not null,
	TotalPedido float not null,
	CodigoCliente int not null
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


---tabela crianda graficamente código abaixo gerado a partir de INTERFACE
/****** Object:  Table [dbo].[Clientes]    Script Date: 19/05/2022 16:49:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Clientes](
	[Codigo] [int] NOT NULL,
	[Nome] [varchar](200) NOT NULL,
	[TipoPessoa] [char](1) NOT NULL
) ON [PRIMARY]
GO
