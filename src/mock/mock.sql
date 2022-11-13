--Inserir dados de clientes
INSERT INTO clientes (id_cliente, nome) VALUES (1, 'João Ferreira');
INSERT INTO clientes (id_cliente, nome) VALUES (2, 'Maria da Silva');
INSERT INTO clientes (id_cliente, nome) VALUES (3, 'José Roberto');
INSERT INTO clientes (id_cliente, nome) VALUES (4, 'Joana Gomes');

INSERT INTO pessoas_fisicas (id_cliente, cpf) VALUES (1, '123.456.789-00');
INSERT INTO pessoas_fisicas (id_cliente, cpf) VALUES (2, '987.654.321-00');
INSERT INTO pessoas_fisicas (id_cliente, cpf) VALUES (3, '142.321.789-00');
INSERT INTO pessoas_fisicas (id_cliente, cpf) VALUES (4, '987.822.834-00');



--Inserir dados de entregas
INSERT INTO entregas (id_entrega, id_cliente, data_saida, valor) VALUES (1, 1, '2019-05-01', 100.00);
INSERT INTO entregas (id_entrega, id_cliente, data_saida, valor) VALUES (2, 2, '2021-03-02', 200.00);
INSERT INTO entregas (id_entrega, id_cliente, data_saida, valor) VALUES (3, 3, '2017-02-03', 300.00);

--Inserir dados de itens
INSERT INTO itens (id_item, descricao, peso, largura, comprimento, altura) VALUES (1, 'Caixa de papelão', 1.00, 10.00, 10.00, 10.00);
INSERT INTO itens (id_item, descricao, peso, largura, comprimento, altura) VALUES (2, 'Caixa de papelão', 1.00, 10.00, 10.00, 10.00);
INSERT INTO itens (id_item, descricao, peso, largura, comprimento, altura) VALUES (3, 'Caixa de papelão', 1.00, 10.00, 10.00, 10.00);
