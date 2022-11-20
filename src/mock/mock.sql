INSERT INTO clientes (id_cliente, nome) VALUES (1, 'João Ferreira');
INSERT INTO clientes (id_cliente, nome) VALUES (2, 'Maria da Silva');
INSERT INTO clientes (id_cliente, nome) VALUES (3, 'Echelon Corporation');
INSERT INTO clientes (id_cliente, nome) VALUES (4, 'Registers of Scotland');

INSERT INTO pessoas_fisicas (id_cliente, cpf) VALUES (1, 12345678900);
INSERT INTO pessoas_fisicas (id_cliente, cpf) VALUES (2, 98765432100);

INSERT INTO pessoas_juridicas (ID_CLIENTE, CNPJ, INSCRICAO_ESTADUAL) VALUES (3, 123456, 1234);
INSERT INTO pessoas_juridicas (ID_CLIENTE, CNPJ, INSCRICAO_ESTADUAL) VALUES (4, 987654, 9876);

INSERT INTO entregas (id_entrega, id_cliente, data_saida, valor) VALUES (1, 1, TO_DATE('01/05/2019', 'dd/mm/yyyy'), 100.00);
INSERT INTO entregas (id_entrega, id_cliente, data_saida, valor) VALUES (2, 2, TO_DATE('02/03/2019', 'dd/mm/yyyy'), 200.00);
INSERT INTO entregas (id_entrega, id_cliente, data_saida, valor) VALUES (3, 3, TO_DATE('01/05/2022', 'dd/mm/yyyy'), 300.00);
INSERT INTO entregas (id_entrega, id_cliente, valor) VALUES (4, 4, 400.00);
INSERT INTO entregas (id_entrega, id_cliente, valor) VALUES (5, 1,  500.00);
INSERT INTO entregas (id_entrega, id_cliente, valor) VALUES (6, 2,  600.00);
INSERT INTO entregas (id_entrega, id_cliente, valor) VALUES (7, 3,  700.00);

INSERT INTO itens (id_item, descricao, peso, largura, comprimento, altura) VALUES (1, 'Caixa de papelão', 1.00, 1.20, 1.20, 10.20);
INSERT INTO itens (id_item, descricao, peso, largura, comprimento, altura) VALUES (2, 'Embaladora automática', 115.00, 4.00, 3.50, 1.40);
INSERT INTO itens (id_item, descricao, peso, largura, comprimento, altura) VALUES (3, 'Aspirador robô', 5.00, 0.40, 0.40, 0.20);
INSERT INTO itens (id_item, descricao, peso, largura, comprimento, altura) VALUES (4, 'Esteira semi-automática', 240.00, 10.00, 1.20, 0.50);
INSERT INTO itens (id_item, descricao, peso, largura, comprimento, altura) VALUES (5, 'Barril de ácido hidroclórico', 2.00, 10.00, 10.00, 10.00);

INSERT INTO motoristas(cnh, data_contratacao, nome, salario) VALUES ('123456789', TO_DATE('01/02/2019', 'dd/mm/yyyy'), 'João Ferreira', 1800.00);
INSERT INTO motoristas(cnh, data_contratacao, nome, salario) VALUES ('987654322', TO_DATE('20/02/2018', 'dd/mm/yyyy'), 'Maria da Silva', 1800.00);
INSERT INTO motoristas(cnh, data_contratacao, nome, salario) VALUES ('142321789', TO_DATE('06/06/2020', 'dd/mm/yyyy'), 'José Roberto', 1800.00);
INSERT INTO motoristas(cnh, data_contratacao, nome, salario) VALUES ('987822834', TO_DATE('21/08/2017', 'dd/mm/yyyy'), 'Joana Gomes', 1800.00);
INSERT INTO motoristas(cnh, data_contratacao, nome, salario) VALUES ('167894411', TO_DATE('27/03/2021', 'dd/mm/yyyy'), 'João Miguel', 1800.00);
INSERT INTO motoristas(cnh, data_contratacao, nome, salario) VALUES ('876543210', TO_DATE('30/11/2021', 'dd/mm/yyyy'), 'Maria Andrade', 1800.00);

INSERT INTO caminhoes(placa, marca, modelo, ano_fabricacao) VALUES ('ABC1234', 'Volkswagen', 'Constellation', 2019);
INSERT INTO caminhoes(placa, marca, modelo, ano_fabricacao) VALUES ('DEF5678', 'Volkswagen', 'Constellation', 2021);
INSERT INTO caminhoes(placa, marca, modelo, ano_fabricacao) VALUES ('GHI9012', 'Volkswagen', 'Constellation', 2017);
INSERT INTO caminhoes(placa, marca, modelo, ano_fabricacao) VALUES ('JKL3456', 'Volkswagen', 'Constellation', 2019);
INSERT INTO caminhoes(placa, marca, modelo, ano_fabricacao) VALUES ('MNO7890', 'Volkswagen', 'Constellation', 2020);
INSERT INTO caminhoes(placa, marca, modelo, ano_fabricacao) VALUES ('PQR1234', 'Volkswagen', 'Constellation', 2019);
INSERT INTO caminhoes(placa, marca, modelo, ano_fabricacao) VALUES ('STU5678', 'Volkswagen', 'Constellation', 2018);

INSERT INTO conducoes(id_entrega, cnh) VALUES (1, '123456789');
INSERT INTO conducoes(id_entrega, cnh) VALUES (2, '987654322');
INSERT INTO conducoes(id_entrega, cnh) VALUES (3, '142321789');
INSERT INTO conducoes(id_entrega, cnh) VALUES (4, '987822834');
INSERT INTO conducoes(id_entrega, cnh) VALUES (5, '167894411');
INSERT INTO conducoes(id_entrega, cnh) VALUES (6, '876543210');
INSERT INTO conducoes(id_entrega, cnh) VALUES (7, '987822834');

INSERT INTO seguradoras(numero_seguradora, nome) VALUES (1, 'Connect Seguradora');
INSERT INTO seguradoras(numero_seguradora, nome) VALUES (2, 'Grupo Anjos da Guarda');

INSERT INTO apolices(id_apolice, numero_seguradora, id_cliente, valor_premio, valor_franquia) VALUES (1, 1, 3, 100000.00, 1000.00);
INSERT INTO apolices(id_apolice, numero_seguradora, id_cliente, valor_premio, valor_franquia) VALUES (2, 2, 4, 100000.00, 1000.00);
INSERT INTO apolices(id_apolice, numero_seguradora, id_cliente, valor_premio, valor_franquia) VALUES (3, 1, 3, 1000000.00, 1000.00);
INSERT INTO apolices(id_apolice, numero_seguradora, id_cliente, valor_premio, valor_franquia) VALUES (4, 2, 4, 1000.00, 1000.00);
INSERT INTO apolices(id_apolice, numero_seguradora, id_cliente, valor_premio, valor_franquia) VALUES (5, 1, 3, 1000.00, 1000.00);
INSERT INTO apolices(id_apolice, numero_seguradora, id_cliente, valor_premio, valor_franquia) VALUES (6, 2, 4, 100000.00, 1000.00);

INSERT INTO categorias_item(id_categoria, descricao) VALUES (1, 'Maquinário');
INSERT INTO categorias_item(id_categoria, descricao) VALUES (2, 'Logística');
INSERT INTO categorias_item(id_categoria, descricao) VALUES (3, 'Materiais químicos');

INSERT INTO categorizacoes(id_item, id_categoria) VALUES (1, 2);
INSERT INTO categorizacoes(id_item, id_categoria) VALUES (2, 1);
INSERT INTO categorizacoes(id_item, id_categoria) VALUES (3, 1);
INSERT INTO categorizacoes(id_item, id_categoria) VALUES (4, 1);
INSERT INTO categorizacoes(id_item, id_categoria) VALUES (5, 3);

INSERT INTO cidades(id_cidade, nome, unidade_federativa) VALUES (1, 'Porto Alegre', 'RS');
INSERT INTO cidades(id_cidade, nome, unidade_federativa) VALUES (2, 'São Paulo', 'SP');
INSERT INTO cidades(id_cidade, nome, unidade_federativa) VALUES (3, 'Rio de Janeiro', 'RJ');

INSERT INTO distancias(id_cidade_partida, id_cidade_chegada, distancia) VALUES (1, 2, 100);
INSERT INTO distancias(id_cidade_partida, id_cidade_chegada, distancia) VALUES (2, 3, 100);

INSERT INTO enderecos(id_endereco, cep, rua, numero, bairro, cidade, unidade_federativa, id_cliente) VALUES (1, 12345678, 'Rua dos Alcântaras', 1030,  'Vila Madalena', 'São Paulo', 'SP', 1);
INSERT INTO enderecos(id_endereco, cep, rua, numero, bairro, cidade, unidade_federativa, id_cliente) VALUES (2, 12345678, 'Rua Silveira', 201, 'Petrópolis', 'Porto Alegre', 'RS', 2);
INSERT INTO enderecos(id_endereco, cep, rua, numero, complemento, bairro, cidade, unidade_federativa, id_cliente) VALUES (3, 12345678, 'Rua Doutor Henrique', 302, 340, 'Vila Mariana', 'São Paulo', 'SP', 3);
INSERT INTO enderecos(id_endereco, cep, rua, numero, complemento, bairro, cidade, unidade_federativa, id_cliente) VALUES (4, 12345678, 'Rua Ivo Soares', 1020, 705, 'Vila Mariana', 'São Paulo', 'SP', 4);

INSERT INTO protocolos_seguranca(id_protocolo_seguranca, descricao) VALUES (1, 'Inflamável');
INSERT INTO protocolos_seguranca(id_protocolo_seguranca, descricao) VALUES (2, 'Corrosivo');

INSERT INTO inspecoes(id_protocolo_seguranca, id_item, data) VALUES (1, 1, TO_DATE('02/10/2021', 'dd/mm/yyyy'));
INSERT INTO inspecoes(id_protocolo_seguranca, id_item, data) VALUES (2, 2, TO_DATE('03/05/2021', 'dd/mm/yyyy'));

INSERT INTO licitacoes(indice_licitacao, id_item, orgao_fiscalizador, data_licitacao) VALUES (1, 1, 'ABNT', TO_DATE('01/05/2021', 'dd/mm/yyyy'));
INSERT INTO licitacoes(indice_licitacao, id_item, orgao_fiscalizador, data_licitacao) VALUES (2, 2, 'STMTJ', TO_DATE('01/05/2020', 'dd/mm/yyyy'));

INSERT INTO telefones(id_telefone, ddd, numero, id_cliente) VALUES (1, 51, 12345678, 1);
INSERT INTO telefones(id_telefone, ddd, numero, id_cliente) VALUES (2, 51, 12345678, 2);
INSERT INTO telefones(id_telefone, ddd, numero, id_cliente) VALUES (3, 51, 12345678, 3);
INSERT INTO telefones(id_telefone, ddd, numero, id_cliente) VALUES (4, 51, 12345678, 4);

COMMIT;