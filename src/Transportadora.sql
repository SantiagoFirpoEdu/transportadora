CREATE TABLE CAMINHAO
(
    PLACA          INT NOT NULL,
    MARCA          INT,
    MODELO         INT,
    ANO_FABRICACAO INT
);

ALTER TABLE CAMINHAO
    ADD CONSTRAINT PK_CAMINHAO PRIMARY KEY (PLACA);


CREATE TABLE CATEGORIAITEM
(
    ID_CATEGORIA INT NOT NULL,
    DESCRICAO    VARCHAR(255)
);

ALTER TABLE CATEGORIAITEM
    ADD CONSTRAINT PK_CATEGORIAITEM PRIMARY KEY (ID_CATEGORIA);


CREATE TABLE CIDADE
(
    ID_CIDADE          INT NOT NULL,
    NOME               VARCHAR(127),
    UNIDADE_FEDERATIVA NCHAR(2)
);

ALTER TABLE CIDADE
    ADD CONSTRAINT PK_CIDADE PRIMARY KEY (ID_CIDADE);


CREATE TABLE CLIENTE
(
    ID_CLIENTE INT NOT NULL,
    NOME       VARCHAR(127),
    ENDERECO   VARCHAR(127),
    TELEFONES  INT
);

ALTER TABLE CLIENTE
    ADD CONSTRAINT PK_CLIENTE PRIMARY KEY (ID_CLIENTE);


CREATE TABLE DIMENSOES
(
    LARGURA     INT,
    COMPRIMENTO INT,
    ALTURA      INT
);


CREATE TABLE DISTANCIA
(
    ID_CIDADE   INT NOT NULL,
    ID_CIDADE_0 INT NOT NULL,
    DISTANCIA   INT
);

ALTER TABLE DISTANCIA
    ADD CONSTRAINT PK_DISTANCIA PRIMARY KEY (ID_CIDADE, ID_CIDADE_0);


CREATE TABLE ENDERECO
(
    CEP         INT,
    RUA         VARCHAR(127),
    NUMERO      INT,
    COMPLEMENTO INT,
    BAIRRO      VARCHAR(127),
    CIDADE      VARCHAR(127),
    ESTADO      NCHAR(2)
);


CREATE TABLE ENTREGA
(
    ID_ENTREGA  INT NOT NULL,
    VALOR       INT,
    ID_CLIENTE  INT,
    ID_CIDADE   INT,
    PLACA       INT,
    ID_CIDADE_0 INT
);

ALTER TABLE ENTREGA
    ADD CONSTRAINT PK_ENTREGA PRIMARY KEY (ID_ENTREGA);


CREATE TABLE ITEM
(
    ID_ITEM   INT NOT NULL,
    DESCRICAO INT,
    PESO      INT
);

ALTER TABLE ITEM
    ADD CONSTRAINT PK_ITEM PRIMARY KEY (ID_ITEM);


CREATE TABLE LICITACAO
(
    INDICE_LICITACAO   INT NOT NULL,
    ID_ITEM            INT NOT NULL,
    ORGAO_FISCALIZADOR INT,
    DATA_LICITACAO     INT
);

ALTER TABLE LICITACAO
    ADD CONSTRAINT PK_LICITACAO PRIMARY KEY (INDICE_LICITACAO, ID_ITEM);


CREATE TABLE MOTORISTA
(
    CNH              INT NOT NULL,
    DATA_CONTRATACAO DATE,
    NOME             VARCHAR(255),
    SALARIO          INT
);

ALTER TABLE MOTORISTA
    ADD CONSTRAINT PK_MOTORISTA PRIMARY KEY (CNH);


CREATE TABLE PESSOAFISICA
(
    ID_CLIENTE INT NOT NULL,
    CPF        INT,
    RG         INT
);

ALTER TABLE PESSOAFISICA
    ADD CONSTRAINT PK_PESSOAFISICA PRIMARY KEY (ID_CLIENTE);


CREATE TABLE PESSOAJURIDICA
(
    ID_CLIENTE         INT NOT NULL,
    CNPJ               INT,
    INSCRICAO_ESTADUAL INT
);

ALTER TABLE PESSOAJURIDICA
    ADD CONSTRAINT PK_PESSOAJURIDICA PRIMARY KEY (ID_CLIENTE);


CREATE TABLE PROTOCOLOSEGURANCA
(
    ID_PROTOCOLO_SEGURANCA INT NOT NULL,
    DESCRICAO              VARCHAR(255)
);

ALTER TABLE PROTOCOLOSEGURANCA
    ADD CONSTRAINT PK_PROTOCOLOSEGURANCA PRIMARY KEY (ID_PROTOCOLO_SEGURANCA);


CREATE TABLE REMESSA
(
    ID_ITEM         INT NOT NULL,
    ID_ENTREGA      INT NOT NULL,
    VALOR_DECLARADO INT
);

ALTER TABLE REMESSA
    ADD CONSTRAINT PK_REMESSA PRIMARY KEY (ID_ITEM, ID_ENTREGA);


CREATE TABLE SEGURADORA
(
    NUMERO_SEGURADORA INT NOT NULL,
    NOME              INT
);

ALTER TABLE SEGURADORA
    ADD CONSTRAINT PK_SEGURADORA PRIMARY KEY (NUMERO_SEGURADORA);


CREATE TABLE TELEFONE
(
    DDD    INT,
    NUMERO INT
);


CREATE TABLE APOLICE
(
    ID_APOLICE        INT NOT NULL,
    NUMERO_SEGURADORA INT NOT NULL,
    ID_CLIENTE        INT NOT NULL,
    VALOR_PREMIO      INT,
    VALOR_FRANQUIA    INT
);

ALTER TABLE APOLICE
    ADD CONSTRAINT PK_APOLICE PRIMARY KEY (ID_APOLICE, NUMERO_SEGURADORA, ID_CLIENTE);


CREATE TABLE CATEGORIZACAO
(
    ID_ITEM      INT NOT NULL,
    ID_CATEGORIA INT NOT NULL
);

ALTER TABLE CATEGORIZACAO
    ADD CONSTRAINT PK_CATEGORIZACAO PRIMARY KEY (ID_ITEM, ID_CATEGORIA);


CREATE TABLE CONDUCAO
(
    ID_ENTREGA INT NOT NULL,
    CNH        INT NOT NULL
);

ALTER TABLE CONDUCAO
    ADD CONSTRAINT PK_CONDUCAO PRIMARY KEY (ID_ENTREGA, CNH);


CREATE TABLE INSPECOES
(
    ID_PROTOCOLO_SEGURANCA INT NOT NULL,
    ID_ITEM                INT NOT NULL,
    DATA_ULTIMA_INSPECAO   INT
);

ALTER TABLE INSPECOES
    ADD CONSTRAINT PK_INSPECOES PRIMARY KEY (ID_PROTOCOLO_SEGURANCA, ID_ITEM);

ALTER TABLE DISTANCIA
    ADD CONSTRAINT FK_DISTANCIA_0 FOREIGN KEY (ID_CIDADE) REFERENCES CIDADE (ID_CIDADE);

ALTER TABLE DISTANCIA
    ADD CONSTRAINT FK_DISTANCIA_1 FOREIGN KEY (ID_CIDADE_0) REFERENCES CIDADE (ID_CIDADE);

ALTER TABLE ENTREGA
    ADD CONSTRAINT FK_ENTREGA_0 FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE (ID_CLIENTE);

ALTER TABLE ENTREGA
    ADD CONSTRAINT FK_ENTREGA_1 FOREIGN KEY (ID_CIDADE) REFERENCES CIDADE (ID_CIDADE);

ALTER TABLE ENTREGA
    ADD CONSTRAINT FK_ENTREGA_2 FOREIGN KEY (PLACA) REFERENCES CAMINHAO (PLACA);

ALTER TABLE ENTREGA
    ADD CONSTRAINT FK_ENTREGA_3 FOREIGN KEY (ID_CIDADE_0) REFERENCES CIDADE (ID_CIDADE);

ALTER TABLE LICITACAO
    ADD CONSTRAINT FK_LICITACAO_0 FOREIGN KEY (ID_ITEM) REFERENCES ITEM (ID_ITEM);

ALTER TABLE PESSOAFISICA
    ADD CONSTRAINT FK_PESSOAFISICA_0 FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE (ID_CLIENTE);

ALTER TABLE PESSOAJURIDICA
    ADD CONSTRAINT FK_PESSOAJURIDICA_0 FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE (ID_CLIENTE);

ALTER TABLE REMESSA
    ADD CONSTRAINT FK_REMESSA_0 FOREIGN KEY (ID_ITEM) REFERENCES ITEM (ID_ITEM);

ALTER TABLE REMESSA
    ADD CONSTRAINT FK_REMESSA_1 FOREIGN KEY (ID_ENTREGA) REFERENCES ENTREGA (ID_ENTREGA);

ALTER TABLE APOLICE
    ADD CONSTRAINT FK_APOLICE_0 FOREIGN KEY (NUMERO_SEGURADORA) REFERENCES SEGURADORA (NUMERO_SEGURADORA);

ALTER TABLE APOLICE
    ADD CONSTRAINT FK_APOLICE_1 FOREIGN KEY (ID_CLIENTE) REFERENCES PESSOAJURIDICA (ID_CLIENTE);

ALTER TABLE CATEGORIZACAO
    ADD CONSTRAINT FK_CATEGORIZACAO_0 FOREIGN KEY (ID_ITEM) REFERENCES ITEM (ID_ITEM);

ALTER TABLE CATEGORIZACAO
    ADD CONSTRAINT FK_CATEGORIZACAO_1 FOREIGN KEY (ID_CATEGORIA) REFERENCES CATEGORIAITEM (ID_CATEGORIA);

ALTER TABLE CONDUCAO
    ADD CONSTRAINT FK_CONDUCAO_0 FOREIGN KEY (ID_ENTREGA) REFERENCES ENTREGA (ID_ENTREGA);

ALTER TABLE CONDUCAO
    ADD CONSTRAINT FK_CONDUCAO_1 FOREIGN KEY (CNH) REFERENCES MOTORISTA (CNH);

ALTER TABLE INSPECOES
    ADD CONSTRAINT FK_INSPECOES_0 FOREIGN KEY (ID_PROTOCOLO_SEGURANCA) REFERENCES PROTOCOLOSEGURANCA (ID_PROTOCOLO_SEGURANCA);

ALTER TABLE INSPECOES
    ADD CONSTRAINT FK_INSPECOES_1 FOREIGN KEY (ID_ITEM) REFERENCES ITEM (ID_ITEM);
