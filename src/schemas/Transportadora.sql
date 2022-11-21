CREATE TABLE CAMINHOES
(
    PLACA          NCHAR(7)    NOT NULL,
    MARCA          VARCHAR(64) NOT NULL,
    MODELO         VARCHAR(64) NOT NULL,
    ANO_FABRICACAO NUMERIC(4)  NOT NULL
);

ALTER TABLE CAMINHOES
    ADD CONSTRAINT PK_CAMINHOES PRIMARY KEY (PLACA);


CREATE TABLE CATEGORIAS_ITENS
(
    ID_CATEGORIA NUMERIC(10) NOT NULL,
    DESCRICAO    VARCHAR(256)
);

ALTER TABLE CATEGORIAS_ITENS
    ADD CONSTRAINT PK_CATEGORIAS_ITENS PRIMARY KEY (ID_CATEGORIA);


CREATE TABLE CIDADES
(
    ID_CIDADE          NUMERIC(10) NOT NULL,
    NOME               VARCHAR(64),
    UNIDADE_FEDERATIVA NCHAR(2)
);

ALTER TABLE CIDADES
    ADD CONSTRAINT PK_CIDADES PRIMARY KEY (ID_CIDADE);


CREATE TABLE CLIENTES
(
    ID_CLIENTE NUMERIC(10) NOT NULL,
    NOME       VARCHAR(64) NOT NULL
);

ALTER TABLE CLIENTES
    ADD CONSTRAINT PK_CLIENTES PRIMARY KEY (ID_CLIENTE);


CREATE TABLE DISTANCIAS
(
    ID_CIDADE_PARTIDA NUMERIC(10) NOT NULL,
    ID_CIDADE_CHEGADA NUMERIC(10) NOT NULL,
    DISTANCIA         DECIMAL(10)
);

ALTER TABLE DISTANCIAS
    ADD CONSTRAINT PK_DISTANCIAS PRIMARY KEY (ID_CIDADE_PARTIDA, ID_CIDADE_CHEGADA);


CREATE TABLE ENDERECOS
(
    ID_ENDERECO        CHAR(10)    NOT NULL,
    ID_CLIENTE         NUMERIC(10) NOT NULL,
    CEP                NUMERIC(8)  NOT NULL,
    RUA                VARCHAR(64) NOT NULL,
    NUMERO             NUMERIC(5)  NOT NULL,
    COMPLEMENTO        NUMERIC(3),
    BAIRRO             VARCHAR(64),
    UNIDADE_FEDERATIVA NCHAR(2)    NOT NULL,
    ID_CIDADE          NUMERIC(10) NOT NULL
);

ALTER TABLE ENDERECOS
    ADD CONSTRAINT PK_ENDERECOS PRIMARY KEY (ID_ENDERECO, ID_CLIENTE);


CREATE TABLE ENTREGAS
(
    ID_ENTREGA            NUMERIC(10) NOT NULL,
    VALOR                 DECIMAL(3),
    DATA_CHEGADA_PREVISTA DATE,
    DATA_PARTIDA          DATE,
    ID_CIDADE_PARTIDA     NUMERIC(10),
    PLACA                 NCHAR(7),
    ID_CIDADE_CHEGADA     NUMERIC(10),
    ID_CLIENTE            NUMERIC(10) NOT NULL
);

ALTER TABLE ENTREGAS
    ADD CONSTRAINT PK_ENTREGAS PRIMARY KEY (ID_ENTREGA);


CREATE TABLE ITENS
(
    ID_ITEM     NUMERIC(10) NOT NULL,
    DESCRICAO   VARCHAR(64) NOT NULL,
    PESO        DECIMAL(3)  NOT NULL,
    LARGURA     DECIMAL(3)  NOT NULL,
    COMPRIMENTO DECIMAL(3)  NOT NULL,
    ALTURA      DECIMAL(3)  NOT NULL
);

ALTER TABLE ITENS
    ADD CONSTRAINT PK_ITENS PRIMARY KEY (ID_ITEM);


CREATE TABLE LICITACOES
(
    INDICE_LICITACAO   NUMERIC(10) NOT NULL,
    ID_ITEM            NUMERIC(10) NOT NULL,
    ORGAO_FISCALIZADOR VARCHAR(64) NOT NULL,
    DATA_LICITACAO     DATE        NOT NULL
);

ALTER TABLE LICITACOES
    ADD CONSTRAINT PK_LICITACOES PRIMARY KEY (INDICE_LICITACAO, ID_ITEM);


CREATE TABLE MOTORISTAS
(
    CNH              NUMERIC(11) NOT NULL,
    DATA_CONTRATACAO DATE        NOT NULL,
    NOME             VARCHAR(64) NOT NULL,
    SALARIO          DECIMAL(6)  NOT NULL
);

ALTER TABLE MOTORISTAS
    ADD CONSTRAINT PK_MOTORISTAS PRIMARY KEY (CNH);


CREATE TABLE PESSOAS_FISICAS
(
    ID_CLIENTE    NUMERIC(10) NOT NULL,
    CPF           NUMERIC(11) NOT NULL,
    RG            NUMERIC(10) NOT NULL,
    ORGAO_EMISSOR VARCHAR(32) NOT NULL
);

ALTER TABLE PESSOAS_FISICAS
    ADD CONSTRAINT PK_PESSOAS_FISICAS PRIMARY KEY (ID_CLIENTE);


CREATE TABLE PESSOAS_JURIDICAS
(
    ID_CLIENTE         NUMERIC(10) NOT NULL,
    CNPJ               NUMERIC(11) NOT NULL,
    INSCRICAO_ESTADUAL NUMERIC(10) NOT NULL,
    UF_INSCRICAO       NCHAR(2)    NOT NULL
);

ALTER TABLE PESSOAS_JURIDICAS
    ADD CONSTRAINT PK_PESSOAS_JURIDICAS PRIMARY KEY (ID_CLIENTE);


CREATE TABLE PROTOCOLOS_SEGURANCA
(
    ID_PROTOCOLO_SEGURANCA NUMERIC(10)  NOT NULL,
    DESCRICAO              VARCHAR(256) NOT NULL
);

ALTER TABLE PROTOCOLOS_SEGURANCA
    ADD CONSTRAINT PK_PROTOCOLOS_SEGURANCA PRIMARY KEY (ID_PROTOCOLO_SEGURANCA);


CREATE TABLE REMESSAS
(
    ID_ITEM         NUMERIC(10) NOT NULL,
    ID_ENTREGA      NUMERIC(10) NOT NULL,
    VALOR_DECLARADO DECIMAL(10)
);

ALTER TABLE REMESSAS
    ADD CONSTRAINT PK_REMESSAS PRIMARY KEY (ID_ITEM, ID_ENTREGA);


CREATE TABLE SEGURADORAS
(
    NUMERO_SEGURADORA NUMERIC(10) NOT NULL,
    NOME              VARCHAR(64) NOT NULL
);

ALTER TABLE SEGURADORAS
    ADD CONSTRAINT PK_SEGURADORAS PRIMARY KEY (NUMERO_SEGURADORA);


CREATE TABLE TELEFONES
(
    ID_TELEFONE CHAR(10)    NOT NULL,
    DDD         NCHAR(2)    NOT NULL,
    NUMERO      NUMERIC(9),
    ID_CLIENTE  NUMERIC(10) NOT NULL
);

ALTER TABLE TELEFONES
    ADD CONSTRAINT PK_TELEFONES PRIMARY KEY (ID_TELEFONE);


CREATE TABLE APOLICES
(
    ID_APOLICE        NUMERIC(10) NOT NULL,
    NUMERO_SEGURADORA NUMERIC(10) NOT NULL,
    ID_CLIENTE        NUMERIC(10) NOT NULL,
    VALOR_PREMIO      DECIMAL(15) NOT NULL,
    VALOR_FRANQUIA    DECIMAL(15) NOT NULL,
    ID_ENTREGA        NUMERIC(10) NOT NULL
);

ALTER TABLE APOLICES
    ADD CONSTRAINT PK_APOLICES PRIMARY KEY (ID_APOLICE, NUMERO_SEGURADORA, ID_CLIENTE);


CREATE TABLE CATEGORIZACOES
(
    ID_ITEM      NUMERIC(10) NOT NULL,
    ID_CATEGORIA NUMERIC(10) NOT NULL
);

ALTER TABLE CATEGORIZACOES
    ADD CONSTRAINT PK_CATEGORIZACOES PRIMARY KEY (ID_ITEM, ID_CATEGORIA);


CREATE TABLE CONDUCOES
(
    ID_ENTREGA NUMERIC(10) NOT NULL,
    CNH        NUMERIC(11) NOT NULL
);

ALTER TABLE CONDUCOES
    ADD CONSTRAINT PK_CONDUCOES PRIMARY KEY (ID_ENTREGA, CNH);


CREATE TABLE INSPECOES
(
    ID_PROTOCOLO_SEGURANCA NUMERIC(10) NOT NULL,
    ID_ITEM                NUMERIC(10) NOT NULL,
    DATA                   DATE
);

ALTER TABLE INSPECOES
    ADD CONSTRAINT PK_INSPECOES PRIMARY KEY (ID_PROTOCOLO_SEGURANCA, ID_ITEM);


ALTER TABLE DISTANCIAS
    ADD CONSTRAINT FK_DISTANCIAS_0 FOREIGN KEY (ID_CIDADE_PARTIDA) REFERENCES CIDADES (ID_CIDADE);
ALTER TABLE DISTANCIAS
    ADD CONSTRAINT FK_DISTANCIAS_1 FOREIGN KEY (ID_CIDADE_CHEGADA) REFERENCES CIDADES (ID_CIDADE);


ALTER TABLE ENDERECOS
    ADD CONSTRAINT FK_ENDERECOS_0 FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTES (ID_CLIENTE);
ALTER TABLE ENDERECOS
    ADD CONSTRAINT FK_ENDERECOS_1 FOREIGN KEY (ID_CIDADE) REFERENCES CIDADES (ID_CIDADE);


ALTER TABLE ENTREGAS
    ADD CONSTRAINT FK_ENTREGAS_0 FOREIGN KEY (ID_CIDADE_PARTIDA) REFERENCES CIDADES (ID_CIDADE);
ALTER TABLE ENTREGAS
    ADD CONSTRAINT FK_ENTREGAS_PLACA FOREIGN KEY (PLACA) REFERENCES CAMINHOES (PLACA);
ALTER TABLE ENTREGAS
    ADD CONSTRAINT FK_ENTREGAS_2 FOREIGN KEY (ID_CIDADE_CHEGADA) REFERENCES CIDADES (ID_CIDADE);
ALTER TABLE ENTREGAS
    ADD CONSTRAINT FK_ENTREGAS_3 FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTES (ID_CLIENTE);


ALTER TABLE LICITACOES
    ADD CONSTRAINT FK_LICITACOES_0 FOREIGN KEY (ID_ITEM) REFERENCES ITENS (ID_ITEM);


ALTER TABLE PESSOAS_FISICAS
    ADD CONSTRAINT FK_PESSOAS_FISICAS_0 FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTES (ID_CLIENTE);


ALTER TABLE PESSOAS_JURIDICAS
    ADD CONSTRAINT FK_PESSOAS_JURIDICAS_0 FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTES (ID_CLIENTE);


ALTER TABLE REMESSAS
    ADD CONSTRAINT FK_REMESSAS_0 FOREIGN KEY (ID_ITEM) REFERENCES ITENS (ID_ITEM);
ALTER TABLE REMESSAS
    ADD CONSTRAINT FK_REMESSAS_1 FOREIGN KEY (ID_ENTREGA) REFERENCES ENTREGAS (ID_ENTREGA);


ALTER TABLE TELEFONES
    ADD CONSTRAINT FK_TELEFONES_0 FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTES (ID_CLIENTE);


ALTER TABLE APOLICES
    ADD CONSTRAINT FK_APOLICES_0 FOREIGN KEY (NUMERO_SEGURADORA) REFERENCES SEGURADORAS (NUMERO_SEGURADORA);
ALTER TABLE APOLICES
    ADD CONSTRAINT FK_APOLICES_1 FOREIGN KEY (ID_CLIENTE) REFERENCES PESSOAS_JURIDICAS (ID_CLIENTE);
ALTER TABLE APOLICES
    ADD CONSTRAINT FK_APOLICES_2 FOREIGN KEY (ID_ENTREGA) REFERENCES ENTREGAS (ID_ENTREGA);


ALTER TABLE CATEGORIZACOES
    ADD CONSTRAINT FK_CATEGORIZACOES_0 FOREIGN KEY (ID_ITEM) REFERENCES ITENS (ID_ITEM);
ALTER TABLE CATEGORIZACOES
    ADD CONSTRAINT FK_CATEGORIZACOES_1 FOREIGN KEY (ID_CATEGORIA) REFERENCES CATEGORIAS_ITENS (ID_CATEGORIA);


ALTER TABLE CONDUCOES
    ADD CONSTRAINT FK_CONDUCOES_0 FOREIGN KEY (ID_ENTREGA) REFERENCES ENTREGAS (ID_ENTREGA);
ALTER TABLE CONDUCOES
    ADD CONSTRAINT FK_CONDUCOES_1 FOREIGN KEY (CNH) REFERENCES MOTORISTAS (CNH);


ALTER TABLE INSPECOES
    ADD CONSTRAINT FK_INSPECOES_0 FOREIGN KEY (ID_PROTOCOLO_SEGURANCA) REFERENCES PROTOCOLOS_SEGURANCA (ID_PROTOCOLO_SEGURANCA);
ALTER TABLE INSPECOES
    ADD CONSTRAINT FK_INSPECOES_1 FOREIGN KEY (ID_ITEM) REFERENCES ITENS (ID_ITEM);

COMMIT;
