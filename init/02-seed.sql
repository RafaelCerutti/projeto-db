INSERT INTO usuario (nome, email, senha, username) VALUES
('Gabriel Teste', 'gabriel@teste.com', '$2b$10$hashFakeSoPraTeste', 'gabriel');

INSERT INTO cliente (id, nome_fantasia, razao_social, cpf_cnpj, tipo, email) VALUES
('CLI-0001', 'Mercado Bom Preço', 'Bom Preço Comércio de Alimentos LTDA', '12345678000195', 'JURIDICO', 'contato@bompreco.com'),
('CLI-0002', NULL, 'Maria da Silva', '12345678901', 'FISICO', 'maria@email.com');

INSERT INTO produto (descricao, departamento, codigo_barras, preco) VALUES
('Arroz Branco 5kg', 'Mercearia', '7891234567895', 27.90),
('Detergente 500ml', 'Limpeza',   '7899876543210', 2.49);