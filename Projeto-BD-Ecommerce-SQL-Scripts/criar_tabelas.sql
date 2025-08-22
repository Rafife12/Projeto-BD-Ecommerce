```sql
-- Criação das tabelas do e-commerce em T-SQL
CREATE TABLE Cliente (
    IdCliente INT IDENTITY(1,1) PRIMARY KEY,
    Nome NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE PessoaFisica (
    IdCliente INT PRIMARY KEY,
    CPF CHAR(11) NOT NULL UNIQUE,
    FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente)
);
CREATE TABLE PessoaJuridica (
    IdCliente INT PRIMARY KEY,
    CNPJ CHAR(14) NOT NULL UNIQUE,
    RazaoSocial NVARCHAR(150) NOT NULL,
    FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente)
);
CREATE TABLE Conta (
    IdConta INT IDENTITY(1,1) PRIMARY KEY,
    IdCliente INT NOT NULL,
    DataCriacao DATE NOT NULL DEFAULT GETDATE(),
    FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente)
);
CREATE TABLE Pagamento (
    IdPagamento INT IDENTITY(1,1) PRIMARY KEY,
    IdConta INT NOT NULL,
    TipoPagamento NVARCHAR(50) NOT NULL,
    Detalhes NVARCHAR(200) NULL,
    FOREIGN KEY (IdConta) REFERENCES Conta(IdConta)
);
CREATE TABLE Pedido (
    IdPedido INT IDENTITY(1,1) PRIMARY KEY,
    IdConta INT NOT NULL,
    DataPedido DATE NOT NULL DEFAULT GETDATE(),
    ValorTotal DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (IdConta) REFERENCES Conta(IdConta)
);
CREATE TABLE Entrega (
    IdEntrega INT IDENTITY(1,1) PRIMARY KEY,
    IdPedido INT NOT NULL,
    Status NVARCHAR(50) NOT NULL,
    CodigoRastreio NVARCHAR(50) NULL,
    FOREIGN KEY (IdPedido) REFERENCES Pedido(IdPedido)
);
```