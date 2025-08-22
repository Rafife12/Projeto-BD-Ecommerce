```sql
-- Consultas de exemplo
SELECT c.IdCliente, c.Nome, c.Email,
       CASE 
           WHEN pf.IdCliente IS NOT NULL THEN 'PF'
           WHEN pj.IdCliente IS NOT NULL THEN 'PJ'
           ELSE 'Desconhecido'
       END AS TipoCliente
FROM Cliente c
LEFT JOIN PessoaFisica pf ON c.IdCliente = pf.IdCliente
LEFT JOIN PessoaJuridica pj ON c.IdCliente = pj.IdCliente;

SELECT p.IdPedido, p.ValorTotal, e.Status, e.CodigoRastreio
FROM Pedido p
LEFT JOIN Entrega e ON p.IdPedido = e.IdPedido;

SELECT co.IdConta, pa.TipoPagamento, pa.Detalhes
FROM Conta co
LEFT JOIN Pagamento pa ON co.IdConta = pa.IdConta;
```