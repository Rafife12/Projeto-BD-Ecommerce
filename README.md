# Projeto Conceitual de Banco de Dados – E-commerce

## Descrição do Projeto
Este projeto tem como objetivo modelar um banco de dados para um sistema de e-commerce, contemplando clientes, contas, pagamentos e entregas. O modelo foi desenvolvido considerando os seguintes pontos:

- **Cliente PJ e PF**: Uma conta pode ser Pessoa Jurídica (PJ) ou Pessoa Física (PF), mas **não pode ter as duas informações simultaneamente**. Essa regra foi implementada utilizando especialização no modelo conceitual.
- **Pagamento**: Uma conta pode possuir **mais de uma forma de pagamento**, permitindo flexibilidade para os clientes.
- **Entrega**: Cada pedido possui informações de **status** e **código de rastreio**, possibilitando acompanhar o envio e a entrega dos produtos.

## Modelo Conceitual
O diagrama abaixo representa o esquema conceitual (EER) do projeto, destacando entidades, atributos, relacionamentos e especializações:

<img width="1536" height="1024" alt="ChatGPT Image 22 de ago  de 2025, 11_37_04" src="https://github.com/user-attachments/assets/429a5bff-25a2-4779-8323-204fd74b7732"/>


## Objetivo do Projeto
Refinar e implementar um modelo de banco de dados relacional que suporte operações de cadastro, consulta e controle de pedidos, clientes, pagamentos e entregas. O projeto será avaliado pelo seu design, coerência com as regras de negócio e documentação.

## Scripts
- `scripts/criar_tabelas.sql`: Criação das tabelas com restrições de integridade.
- `scripts/inserir_dados.sql`: Scripts para popular o banco com dados de teste.
- `scripts/consultas.sql`: Consultas exemplo para validar o modelo.

## Instruções
1. Clonar o repositório.
2. Executar `criar_tabelas.sql` no seu SGBD favorito.
3. Popular o banco com `inserir_dados.sql`.
4. Testar consultas com `consultas.sql`.

---

Projeto desenvolvido como desafio de modelagem de banco de dados para fins de portfólio e avaliação.
