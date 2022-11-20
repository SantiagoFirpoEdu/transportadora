INSERT INTO CLIENTES (ID_CLIENTE, NOME)
VALUES (1, 'João Ferreira');
INSERT INTO CLIENTES (ID_CLIENTE, NOME)
VALUES (2, 'Maria da Silva');
INSERT INTO CLIENTES (ID_CLIENTE, NOME)
VALUES (3, 'Echelon Corporation');
INSERT INTO CLIENTES (ID_CLIENTE, NOME)
VALUES (4, 'Registers of Scotland');

INSERT INTO PESSOAS_FISICAS (ID_CLIENTE, CPF, RG, ORGAO_EMISSOR)
VALUES (1, 12345678900, 123456789, 'SSP');
INSERT INTO PESSOAS_FISICAS (ID_CLIENTE, CPF, RG, ORGAO_EMISSOR)
VALUES (2, 98765432100, 987654321, 'SSP');

INSERT INTO PESSOAS_JURIDICAS (ID_CLIENTE, CNPJ, INSCRICAO_ESTADUAL, UF_INSCRICAO)
VALUES (3, 123456, 1234, 'RS');
INSERT INTO PESSOAS_JURIDICAS (ID_CLIENTE, CNPJ, INSCRICAO_ESTADUAL, UF_INSCRICAO)
VALUES (4, 987654, 9876, 'RS');

INSERT INTO CAMINHOES(PLACA, MARCA, MODELO, ANO_FABRICACAO)
VALUES ('ABC1234', 'Volkswagen', 'Constellation', 2019);
INSERT INTO CAMINHOES(PLACA, MARCA, MODELO, ANO_FABRICACAO)
VALUES ('DEF5678', 'Volkswagen', 'Constellation', 2021);
INSERT INTO CAMINHOES(PLACA, MARCA, MODELO, ANO_FABRICACAO)
VALUES ('GHI9012', 'Volkswagen', 'Constellation', 2017);
INSERT INTO CAMINHOES(PLACA, MARCA, MODELO, ANO_FABRICACAO)
VALUES ('JKL3456', 'Volkswagen', 'Constellation', 2019);
INSERT INTO CAMINHOES(PLACA, MARCA, MODELO, ANO_FABRICACAO)
VALUES ('MNO7890', 'Volkswagen', 'Constellation', 2020);
INSERT INTO CAMINHOES(PLACA, MARCA, MODELO, ANO_FABRICACAO)
VALUES ('PQR1234', 'Volkswagen', 'Constellation', 2019);
INSERT INTO CAMINHOES(PLACA, MARCA, MODELO, ANO_FABRICACAO)
VALUES ('STU5678', 'Volkswagen', 'Constellation', 2018);

INSERT INTO ENTREGAS (ID_ENTREGA, ID_CLIENTE, DATA_PARTIDA, DATA_CHEGADA_PREVISTA, VALOR, PLACA)
VALUES (1, 1, TO_DATE('01/05/2022', 'dd/mm/yyyy'), TO_DATE('02/06/2022', 'dd/mm/yyyy'), 100.00, 'ABC1234');
INSERT INTO ENTREGAS (ID_ENTREGA, ID_CLIENTE, DATA_PARTIDA, DATA_CHEGADA_PREVISTA, VALOR, PLACA)
VALUES (2, 2, TO_DATE('02/03/2022', 'dd/mm/yyyy'), TO_DATE('12/04/2022', 'dd/mm/yyyy'), 200.00, 'DEF5678');
INSERT INTO ENTREGAS (ID_ENTREGA, ID_CLIENTE, DATA_PARTIDA, DATA_CHEGADA_PREVISTA, VALOR, PLACA)
VALUES (3, 3, TO_DATE('01/05/2022', 'dd/mm/yyyy'), TO_DATE('04/06/2022', 'dd/mm/yyyy'), 300.00, 'GHI9012');
INSERT INTO ENTREGAS (ID_ENTREGA, ID_CLIENTE, VALOR)
VALUES (4, 3, 400.00);
INSERT INTO ENTREGAS (ID_ENTREGA, ID_CLIENTE, VALOR)
VALUES (5, 3, 500.00);
INSERT INTO ENTREGAS (ID_ENTREGA, ID_CLIENTE, VALOR)
VALUES (6, 3, 600.00);
INSERT INTO ENTREGAS (ID_ENTREGA, ID_CLIENTE, VALOR)
VALUES (7, 3, 700.00);
INSERT INTO ENTREGAS (ID_ENTREGA, ID_CLIENTE, VALOR)
VALUES (8, 3, 700.00);

INSERT INTO ITENS (ID_ITEM, DESCRICAO, PESO, LARGURA, COMPRIMENTO, ALTURA)
VALUES (1, 'Caixa de papelão', 1.00, 1.20, 1.20, 10.20);
INSERT INTO ITENS (ID_ITEM, DESCRICAO, PESO, LARGURA, COMPRIMENTO, ALTURA)
VALUES (2, 'Embaladora automática', 115.00, 4.00, 3.50, 1.40);
INSERT INTO ITENS (ID_ITEM, DESCRICAO, PESO, LARGURA, COMPRIMENTO, ALTURA)
VALUES (3, 'Aspirador robô', 5.00, 0.40, 0.40, 0.20);
INSERT INTO ITENS (ID_ITEM, DESCRICAO, PESO, LARGURA, COMPRIMENTO, ALTURA)
VALUES (4, 'Esteira semi-automática', 240.00, 10.00, 1.20, 0.50);
INSERT INTO ITENS (ID_ITEM, DESCRICAO, PESO, LARGURA, COMPRIMENTO, ALTURA)
VALUES (5, 'Barril de ácido hidroclórico', 2.00, 10.00, 10.00, 10.00);

INSERT INTO REMESSAS (ID_ITEM, ID_ENTREGA, VALOR_DECLARADO)
VALUES (1, 1, 100.00);

INSERT INTO REMESSAS (ID_ITEM, ID_ENTREGA, VALOR_DECLARADO)
VALUES (2, 2, 100.00);

INSERT INTO REMESSAS (ID_ITEM, ID_ENTREGA, VALOR_DECLARADO)
VALUES (3, 3, 100.00);

INSERT INTO REMESSAS (ID_ITEM, ID_ENTREGA, VALOR_DECLARADO)
VALUES (4, 4, 100.00);

INSERT INTO MOTORISTAS(CNH, DATA_CONTRATACAO, NOME, SALARIO)
VALUES ('123456789', TO_DATE('01/02/2019', 'dd/mm/yyyy'), 'João Ferreira', 1800.00);
INSERT INTO MOTORISTAS(CNH, DATA_CONTRATACAO, NOME, SALARIO)
VALUES ('987654322', TO_DATE('20/02/2018', 'dd/mm/yyyy'), 'Maria da Silva', 1800.00);
INSERT INTO MOTORISTAS(CNH, DATA_CONTRATACAO, NOME, SALARIO)
VALUES ('142321789', TO_DATE('06/06/2020', 'dd/mm/yyyy'), 'José Roberto', 1800.00);
INSERT INTO MOTORISTAS(CNH, DATA_CONTRATACAO, NOME, SALARIO)
VALUES ('987822834', TO_DATE('21/08/2017', 'dd/mm/yyyy'), 'Joana Gomes', 1800.00);
INSERT INTO MOTORISTAS(CNH, DATA_CONTRATACAO, NOME, SALARIO)
VALUES ('167894411', TO_DATE('27/03/2021', 'dd/mm/yyyy'), 'João Miguel', 1800.00);
INSERT INTO MOTORISTAS(CNH, DATA_CONTRATACAO, NOME, SALARIO)
VALUES ('876543210', TO_DATE('30/11/2021', 'dd/mm/yyyy'), 'Maria Andrade', 1800.00);

INSERT INTO CONDUCOES(ID_ENTREGA, CNH)
VALUES (1, '123456789');
INSERT INTO CONDUCOES(ID_ENTREGA, CNH)
VALUES (2, '987654322');
INSERT INTO CONDUCOES(ID_ENTREGA, CNH)
VALUES (3, '142321789');
INSERT INTO CONDUCOES(ID_ENTREGA, CNH)
VALUES (4, '987822834');
INSERT INTO CONDUCOES(ID_ENTREGA, CNH)
VALUES (5, '167894411');
INSERT INTO CONDUCOES(ID_ENTREGA, CNH)
VALUES (6, '876543210');
INSERT INTO CONDUCOES(ID_ENTREGA, CNH)
VALUES (7, '987822834');

INSERT INTO SEGURADORAS(NUMERO_SEGURADORA, NOME)
VALUES (1, 'Connect Seguradora');
INSERT INTO SEGURADORAS(NUMERO_SEGURADORA, NOME)
VALUES (2, 'Grupo Anjos da Guarda');

INSERT INTO APOLICES(ID_APOLICE, NUMERO_SEGURADORA, ID_CLIENTE, ID_ENTREGA, VALOR_PREMIO, VALOR_FRANQUIA)
VALUES (1, 1, 3, 1, 100000, 10000);
INSERT INTO APOLICES(ID_APOLICE, NUMERO_SEGURADORA, ID_CLIENTE, ID_ENTREGA, VALOR_PREMIO, VALOR_FRANQUIA)
VALUES (2, 2, 4, 2, 1000000, 100000);
INSERT INTO APOLICES(ID_APOLICE, NUMERO_SEGURADORA, ID_CLIENTE, ID_ENTREGA, VALOR_PREMIO, VALOR_FRANQUIA)
VALUES (3, 1, 3, 3, 100000000, 100000);
INSERT INTO APOLICES(ID_APOLICE, NUMERO_SEGURADORA, ID_CLIENTE, ID_ENTREGA, VALOR_PREMIO, VALOR_FRANQUIA)
VALUES (4, 2, 4, 4, 100000, 100000);
INSERT INTO APOLICES(ID_APOLICE, NUMERO_SEGURADORA, ID_CLIENTE, ID_ENTREGA, VALOR_PREMIO, VALOR_FRANQUIA)
VALUES (5, 1, 3, 5, 100000, 100000);
INSERT INTO APOLICES(ID_APOLICE, NUMERO_SEGURADORA, ID_CLIENTE, ID_ENTREGA, VALOR_PREMIO, VALOR_FRANQUIA)
VALUES (6, 2, 4, 6, 10000000, 100000);

INSERT INTO CATEGORIAS_ITENS(ID_CATEGORIA, DESCRICAO)
VALUES (1, 'Maquinário');
INSERT INTO CATEGORIAS_ITENS(ID_CATEGORIA, DESCRICAO)
VALUES (2, 'Logística');
INSERT INTO CATEGORIAS_ITENS(ID_CATEGORIA, DESCRICAO)
VALUES (3, 'Materiais químicos');

INSERT INTO CATEGORIZACOES(ID_ITEM, ID_CATEGORIA)
VALUES (1, 2);
INSERT INTO CATEGORIZACOES(ID_ITEM, ID_CATEGORIA)
VALUES (2, 1);
INSERT INTO CATEGORIZACOES(ID_ITEM, ID_CATEGORIA)
VALUES (3, 1);
INSERT INTO CATEGORIZACOES(ID_ITEM, ID_CATEGORIA)
VALUES (4, 1);
INSERT INTO CATEGORIZACOES(ID_ITEM, ID_CATEGORIA)
VALUES (5, 3);

INSERT INTO CIDADES(ID_CIDADE, NOME, UNIDADE_FEDERATIVA)
VALUES (1, 'Porto Alegre', 'RS');
INSERT INTO CIDADES(ID_CIDADE, NOME, UNIDADE_FEDERATIVA)
VALUES (2, 'São Paulo', 'SP');
INSERT INTO CIDADES(ID_CIDADE, NOME, UNIDADE_FEDERATIVA)
VALUES (3, 'Rio de Janeiro', 'RJ');

INSERT INTO DISTANCIAS(ID_CIDADE_PARTIDA, ID_CIDADE_CHEGADA, DISTANCIA)
VALUES (1, 2, 100);
INSERT INTO DISTANCIAS(ID_CIDADE_PARTIDA, ID_CIDADE_CHEGADA, DISTANCIA)
VALUES (2, 3, 100);

INSERT INTO ENDERECOS(ID_ENDERECO, CEP, RUA, NUMERO, BAIRRO, ID_CIDADE, UNIDADE_FEDERATIVA, ID_CLIENTE)
VALUES (1, 12345678, 'Rua dos Alcântaras', 1030, 'Vila Madalena', 2, 'SP', 1);
INSERT INTO ENDERECOS(ID_ENDERECO, CEP, RUA, NUMERO, BAIRRO, ID_CIDADE, UNIDADE_FEDERATIVA, ID_CLIENTE)
VALUES (2, 12345678, 'Rua Silveira', 201, 'Petrópolis', 1, 'RS', 2);
INSERT INTO ENDERECOS(ID_ENDERECO, CEP, RUA, NUMERO, COMPLEMENTO, BAIRRO, ID_CIDADE, UNIDADE_FEDERATIVA, ID_CLIENTE)
VALUES (3, 12345678, 'Rua Doutor Henrique', 302, 340, 'Vila Rio Branco', 1, 'RS', 3);
INSERT INTO ENDERECOS(ID_ENDERECO, CEP, RUA, NUMERO, COMPLEMENTO, BAIRRO, ID_CIDADE, UNIDADE_FEDERATIVA, ID_CLIENTE)
VALUES (4, 12345678, 'Rua Ivo Soares', 1020, 705, 'Vila Mariana', 2, 'SP', 4);

INSERT INTO PROTOCOLOS_SEGURANCA(ID_PROTOCOLO_SEGURANCA, DESCRICAO)
VALUES (1, 'Inflamável');
INSERT INTO PROTOCOLOS_SEGURANCA(ID_PROTOCOLO_SEGURANCA, DESCRICAO)
VALUES (2, 'Corrosivo');

INSERT INTO INSPECOES(ID_PROTOCOLO_SEGURANCA, ID_ITEM, DATA)
VALUES (1, 1, TO_DATE('02/10/2021', 'dd/mm/yyyy'));
INSERT INTO INSPECOES(ID_PROTOCOLO_SEGURANCA, ID_ITEM, DATA)
VALUES (2, 2, TO_DATE('03/05/2021', 'dd/mm/yyyy'));

INSERT INTO LICITACOES(INDICE_LICITACAO, ID_ITEM, ORGAO_FISCALIZADOR, DATA_LICITACAO)
VALUES (1, 1, 'ABNT', TO_DATE('01/05/2021', 'dd/mm/yyyy'));
INSERT INTO LICITACOES(INDICE_LICITACAO, ID_ITEM, ORGAO_FISCALIZADOR, DATA_LICITACAO)
VALUES (2, 2, 'STMTJ', TO_DATE('01/05/2020', 'dd/mm/yyyy'));

INSERT INTO TELEFONES(ID_TELEFONE, DDD, NUMERO, ID_CLIENTE)
VALUES (1, 51, 12345678, 1);
INSERT INTO TELEFONES(ID_TELEFONE, DDD, NUMERO, ID_CLIENTE)
VALUES (2, 51, 12345678, 2);
INSERT INTO TELEFONES(ID_TELEFONE, DDD, NUMERO, ID_CLIENTE)
VALUES (3, 51, 12345678, 3);
INSERT INTO TELEFONES(ID_TELEFONE, DDD, NUMERO, ID_CLIENTE)
VALUES (4, 51, 12345678, 4);

COMMIT;