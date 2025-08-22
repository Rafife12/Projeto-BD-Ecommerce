-- Inserir dados de exemplo
INSERT INTO Cliente (Nome, Email) VALUES
('João Silva', 'joao@email.com'),
('Empresa X Ltda', 'contato@empresax.com');
INSERT INTO PessoaFisica (IdCliente, CPF) VALUES
(1, '12345678901');
INSERT INTO PessoaJuridica (IdCliente, CNPJ, RazaoSocial) VALUES
(2, '12345678000199', 'Empresa X Ltda');
INSERT INTO Conta (IdCliente) VALUES (1), (2);
INSERT INTO Pagamento (IdConta, TipoPagamento, Detalhes) VALUES
(1, 'Cartão de Crédito', 'Visa 1234'),
(1, 'Boleto', 'Vencimento 10/2025'),
(2, 'Transferência', 'Banco X');
INSERT INTO Pedido (IdConta, ValorTotal) VALUES
(1, 150.50),
(2, 1200.00);
INSERT INTO Entrega (IdPedido, Status, CodigoRastreio) VALUES
(1, 'Em trânsito', 'BR1234567890'),
(2, 'Entregue', 'BR0987654321');