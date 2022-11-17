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
INSERT INTO entregas (id_entrega, id_cliente, data_saida, valor) VALUES (4, 4, '2019-01-04', 400.00);
INSERT INTO entregas (id_entrega, id_cliente, data_saida, valor) VALUES (5, 1, '2020-12-05', 500.00);
INSERT INTO entregas (id_entrega, id_cliente, data_saida, valor) VALUES (6, 2, '2019-11-06', 600.00);
INSERT INTO entregas (id_entrega, id_cliente, data_saida, valor) VALUES (7, 3, '2018-10-07', 700.00);
INSERT INTO entregas (id_entrega, id_cliente, data_saida, valor) VALUES (8, 4, '2017-09-08', 800.00);

--Inserir dados de itens
INSERT INTO itens (id_item, descricao, peso, largura, comprimento, altura) VALUES (1, 'Caixa de papelão', 1.00, 1.20, 1.20, 10.20);
INSERT INTO itens (id_item, descricao, peso, largura, comprimento, altura) VALUES (2, 'Embaladora automática', 115.00, 4.00, 3.50, 1.40);
INSERT INTO itens (id_item, descricao, peso, largura, comprimento, altura) VALUES (3, 'Aspirador robô', 5.00, 0.40, 0.40, 0.20);
INSERT INTO itens (id_item, descricao, peso, largura, comprimento, altura) VALUES (4, 'Esteira semi-automática', 240.00, 10.00, 1.20, 0.50);
INSERT INTO itens (id_item, descricao, peso, largura, comprimento, altura) VALUES (5, 'Tablet SnapForce 47G', 2.00, 10.00, 10.00, 10.00);
INSERT INTO itens (id_item, descricao, peso, largura, comprimento, altura) VALUES (6, 'Caixa de papelão', 1.00, 10.00, 10.00, 10.00);
INSERT INTO itens (id_item, descricao, peso, largura, comprimento, altura) VALUES (7, 'Caixa de papelão', 1.00, 10.00, 10.00, 10.00);

--Inserir dados de motoristas
INSERT INTO motoristas(cnh, data_contratacao, nome, salario) VALUES ('123456789', '2019-05-01', 'João Ferreira', 1800.00);
INSERT INTO motoristas(cnh, data_contratacao, nome, salario) VALUES ('987654321', '2021-03-02', 'Maria da Silva', 1800.00);
INSERT INTO motoristas(cnh, data_contratacao, nome, salario) VALUES ('142321789', '2017-02-03', 'José Roberto', 1800.00);
INSERT INTO motoristas(cnh, data_contratacao, nome, salario) VALUES ('987822834', '2019-01-04', 'Joana Gomes', 1800.00);
INSERT INTO motoristas(cnh, data_contratacao, nome, salario) VALUES ('123456789', '2020-12-05', 'João Miguel', 1800.00);
INSERT INTO motoristas(cnh, data_contratacao, nome, salario) VALUES ('987654321', '2019-11-06', 'Maria Andrade', 1800.00);

--Inserir dados de caminhões
INSERT INTO caminhoes(placa, marca, modelo, ano_fabricacao) VALUES ('ABC-1234', 'Volkswagen', 'Constellation', 2019);
INSERT INTO caminhoes(placa, marca, modelo, ano_fabricacao) VALUES ('DEF-5678', 'Volkswagen', 'Constellation', 2021);
INSERT INTO caminhoes(placa, marca, modelo, ano_fabricacao) VALUES ('GHI-9012', 'Volkswagen', 'Constellation', 2017);
INSERT INTO caminhoes(placa, marca, modelo, ano_fabricacao) VALUES ('JKL-3456', 'Volkswagen', 'Constellation', 2019);
INSERT INTO caminhoes(placa, marca, modelo, ano_fabricacao) VALUES ('MNO-7890', 'Volkswagen', 'Constellation', 2020);
INSERT INTO caminhoes(placa, marca, modelo, ano_fabricacao) VALUES ('PQR-1234', 'Volkswagen', 'Constellation', 2019);
INSERT INTO caminhoes(placa, marca, modelo, ano_fabricacao) VALUES ('STU-5678', 'Volkswagen', 'Constellation', 2018);

--Inserir dados de conduções
INSERT INTO conducoes(id_entrega, cnh) VALUES (1, '123456789');
INSERT INTO conducoes(id_entrega, cnh) VALUES (2, '987654321');
INSERT INTO conducoes(id_entrega, cnh) VALUES (3, '142321789');
INSERT INTO conducoes(id_entrega, cnh) VALUES (4, '987822834');
INSERT INTO conducoes(id_entrega, cnh) VALUES (5, '123456789');
INSERT INTO conducoes(id_entrega, cnh) VALUES (6, '987654321');
INSERT INTO conducoes(id_entrega, cnh) VALUES (7, '142321789');

--Inserir dados de pessoas físicas
INSERT INTO pessoas_fisicas(id_cliente, cpf, rg) VALUES (1, '123456789', '987654321');
INSERT INTO pessoas_fisicas(id_cliente, cpf, rg) VALUES (2, '987654321', '123456789');
INSERT INTO pessoas_fisicas(id_cliente, cpf, rg) VALUES (3, '142321789', '987822834');
INSERT INTO pessoas_fisicas(id_cliente, cpf, rg) VALUES (4, '987822834', '142321789');
INSERT INTO pessoas_fisicas(id_cliente, cpf, rg) VALUES (5, '123456789', '987654321');

--Inserir dados de pessoas jurídicas
INSERT INTO pessoas_juridicas(id_cliente, cnpj, inscricao_estadual) VALUES (6, '123456789', '987654321');
INSERT INTO pessoas_juridicas(id_cliente, cnpj, inscricao_estadual) VALUES (7, '987654321', '123456789');
INSERT INTO pessoas_juridicas(id_cliente, cnpj, inscricao_estadual) VALUES (8, '142321789', '987822834');
INSERT INTO pessoas_juridicas(id_cliente, cnpj, inscricao_estadual) VALUES (9, '987822834', '142321789');
INSERT INTO pessoas_juridicas(id_cliente, cnpj, inscricao_estadual) VALUES (10, '123456789', '987654321');

--Inserir dados de seguradoras
INSERT INTO seguradoras(numero_seguradora, nome) VALUES (1, 'Seguradora 1');
INSERT INTO seguradoras(numero_seguradora, nome) VALUES (2, 'Seguradora 2');
INSERT INTO seguradoras(numero_seguradora, nome) VALUES (3, 'Seguradora 3');
INSERT INTO seguradoras(numero_seguradora, nome) VALUES (4, 'Seguradora 4');

--Inserir dados de apólices
INSERT INTO apolices(id_apolice, numero_seguradora, id_cliente, valor_premio, valor_franquia) VALUES (1, 1, 1, 1000.00, 1000.00);
INSERT INTO apolices(id_apolice, numero_seguradora, id_cliente, valor_premio, valor_franquia) VALUES (2, 2, 2, 1000.00, 1000.00);
INSERT INTO apolices(id_apolice, numero_seguradora, id_cliente, valor_premio, valor_franquia) VALUES (3, 3, 3, 1000.00, 1000.00);
INSERT INTO apolices(id_apolice, numero_seguradora, id_cliente, valor_premio, valor_franquia) VALUES (4, 4, 4, 1000.00, 1000.00);
INSERT INTO apolices(id_apolice, numero_seguradora, id_cliente, valor_premio, valor_franquia) VALUES (5, 1, 5, 1000.00, 1000.00);
INSERT INTO apolices(id_apolice, numero_seguradora, id_cliente, valor_premio, valor_franquia) VALUES (6, 2, 6, 1000.00, 1000.00);

--Inserir dados de categorias de itens
INSERT INTO categorias_item(id_categoria, descricao) VALUES (1, 'Categoria 1');
INSERT INTO categorias_item(id_categoria, descricao) VALUES (2, 'Categoria 2');
INSERT INTO categorias_item(id_categoria, descricao) VALUES (3, 'Categoria 3');
INSERT INTO categorias_item(id_categoria, descricao) VALUES (4, 'Categoria 4');
INSERT INTO categorias_item(id_categoria, descricao) VALUES (5, 'Categoria 5');
INSERT INTO categorias_item(id_categoria, descricao) VALUES (6, 'Categoria 6');

--Inserir dados de categorizações
INSERT INTO categorizacoes(id_item, id_categoria) VALUES (1, 1);
INSERT INTO categorizacoes(id_item, id_categoria) VALUES (2, 2);
INSERT INTO categorizacoes(id_item, id_categoria) VALUES (3, 3);
INSERT INTO categorizacoes(id_item, id_categoria) VALUES (4, 4);
INSERT INTO categorizacoes(id_item, id_categoria) VALUES (5, 5);
INSERT INTO categorizacoes(id_item, id_categoria) VALUES (6, 6);

INSERT INTO distancias(id_cidade_partida, id_cidade_chegada, distancia) VALUES (1, 2, 100);
INSERT INTO distancias(id_cidade_partida, id_cidade_chegada, distancia) VALUES (2, 3, 100);

--Inserir dados de cidades
INSERT INTO cidades(id_cidade, nome, unidade_federativa) VALUES (1, 'Cidade 1', 'UF 1');
INSERT INTO cidades(id_cidade, nome, unidade_federativa) VALUES (2, 'Cidade 2', 'UF 2');

--Inserir dados de endereços
INSERT INTO enderecos(id_endereco, cep, rua, numero, complemento, bairro, cidade, unidade_federativa, id_cliente) VALUES (1, '12345678', 'Rua 1', 1, 'Complemento 1', 'Bairro 1', 'Cidade 1', 'UF 1', 1);
INSERT INTO enderecos(id_endereco, cep, rua, numero, complemento, bairro, cidade, unidade_federativa, id_cliente) VALUES (2, '12345678', 'Rua 2', 2, 'Complemento 2', 'Bairro 2', 'Cidade 2', 'UF 2', 2);
INSERT INTO enderecos(id_endereco, cep, rua, numero, complemento, bairro, cidade, unidade_federativa, id_cliente) VALUES (3, '12345678', 'Rua 3', 3, 'Complemento 3', 'Bairro 3', 'Cidade 3', 'UF 3', 3);
INSERT INTO enderecos(id_endereco, cep, rua, numero, complemento, bairro, cidade, unidade_federativa, id_cliente) VALUES (4, '12345678', 'Rua 4', 4, 'Complemento 4', 'Bairro 4', 'Cidade 4', 'UF 4', 4);
INSERT INTO enderecos(id_endereco, cep, rua, numero, complemento, bairro, cidade, unidade_federativa, id_cliente) VALUES (5, '12345678', 'Rua 5', 5, 'Complemento 5', 'Bairro 5', 'Cidade 5', 'UF 5', 5);
INSERT INTO enderecos(id_endereco, cep, rua, numero, complemento, bairro, cidade, unidade_federativa, id_cliente) VALUES (6, '12345678', 'Rua 6', 6, 'Complemento 6', 'Bairro 6', 'Cidade 6', 'UF 6', 6);