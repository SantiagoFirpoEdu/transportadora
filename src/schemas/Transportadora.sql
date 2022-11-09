CREATE TABLE caminhao
(
    placa          INT         NOT NULL,
    marca          VARCHAR(64) NOT NULL,
    modelo         VARCHAR(64) NOT NULL,
    ano_fabricacao INT         NOT NULL
);

ALTER TABLE caminhao
    ADD CONSTRAINT pk_caminhao PRIMARY KEY (placa);


CREATE TABLE categoriaitem
(
    id_categoria NUMERIC(10) NOT NULL,
    descricao    VARCHAR(256)
);

ALTER TABLE categoriaitem
    ADD CONSTRAINT pk_categoriaitem PRIMARY KEY (id_categoria);


CREATE TABLE cidade
(
    id_cidade          NUMERIC(10) NOT NULL,
    nome               INT,
    unidade_federativa NCHAR(2)
);

ALTER TABLE cidade
    ADD CONSTRAINT pk_cidade PRIMARY KEY (id_cidade);


CREATE TABLE cliente
(
    id_cliente NUMERIC(10) NOT NULL,
    nome       INT,
    endereco   INT,
    telefones  INT
);

ALTER TABLE cliente
    ADD CONSTRAINT pk_cliente PRIMARY KEY (id_cliente);


CREATE TABLE distancia
(
    id_cidade_partida NUMERIC(10) NOT NULL,
    id_cidade_chegada NUMERIC(10) NOT NULL,
    distancia         INT
);

ALTER TABLE distancia
    ADD CONSTRAINT pk_distancia PRIMARY KEY (id_cidade_partida, id_cidade_chegada);


CREATE TABLE endereco
(
    cep         NUMERIC(8)  NOT NULL,
    rua         VARCHAR(64) NOT NULL,
    numero      NUMERIC(5)  NOT NULL,
    complemento NUMERIC(3),
    bairro      VARCHAR(64),
    cidade      VARCHAR(64) NOT NULL,
    estado      NCHAR(2)    NOT NULL
);


CREATE TABLE entrega
(
    id_entrega        NUMERIC(10) NOT NULL,
    valor             INT,
    data_chegada      DATE,
    data_partida      DATE,
    id_cidade_partida NUMERIC(10),
    placa             VARCHAR(7),
    id_cidade_chegada NUMERIC(10),
    id_cliente        NUMERIC(10) NOT NULL
);

ALTER TABLE entrega
    ADD CONSTRAINT pk_entrega PRIMARY KEY (id_entrega);


CREATE TABLE item
(
    iditem      NUMERIC(10) NOT NULL,
    descricao   VARCHAR(64) NOT NULL,
    peso        INT         NOT NULL,
    largura     INT         NOT NULL,
    comprimento INT         NOT NULL,
    altura      INT         NOT NULL
);

ALTER TABLE item
    ADD CONSTRAINT pk_item PRIMARY KEY (iditem);


CREATE TABLE licitacao
(
    indice_licitacao   NUMERIC(10) NOT NULL,
    id_item            NUMERIC(10) NOT NULL,
    orgao_fiscalizador VARCHAR(64),
    data_licitacao     DATE        NOT NULL
);

ALTER TABLE licitacao
    ADD CONSTRAINT pk_licitacao PRIMARY KEY (indice_licitacao, id_item);


CREATE TABLE motorista
(
    cnh              NUMERIC(11) NOT NULL,
    data_contratacao DATE        NOT NULL,
    nome             VARCHAR(64) NOT NULL,
    salario          DECIMAL(6)  NOT NULL
);

ALTER TABLE motorista
    ADD CONSTRAINT pk_motorista PRIMARY KEY (cnh);


CREATE TABLE pessoafisica
(
    id_cliente NUMERIC(10) NOT NULL,
    cpf        NUMERIC(11),
    rg         NUMERIC(10)
);

ALTER TABLE pessoafisica
    ADD CONSTRAINT pk_pessoafisica PRIMARY KEY (id_cliente);


CREATE TABLE pessoajuridica
(
    id_cliente         NUMERIC(10) NOT NULL,
    cnpj               NUMERIC(10),
    inscricao_estadual NUMERIC(10)
);

ALTER TABLE pessoajuridica
    ADD CONSTRAINT pk_pessoajuridica PRIMARY KEY (id_cliente);


CREATE TABLE protocolo_seguranca
(
    id_protocolo_seguranca NUMERIC(10) NOT NULL,
    descricao              VARCHAR(256)
);

ALTER TABLE protocolo_seguranca
    ADD CONSTRAINT pk_protocolo_seguranca PRIMARY KEY (id_protocolo_seguranca);


CREATE TABLE remessa
(
    id_item         NUMERIC(10) NOT NULL,
    id_entrega      NUMERIC(10) NOT NULL,
    valor_declarado DECIMAL(10)
);

ALTER TABLE remessa
    ADD CONSTRAINT pk_remessa PRIMARY KEY (id_item, id_entrega);


CREATE TABLE seguradora
(
    numero_seguradora NUMERIC(10) NOT NULL,
    nome              VARCHAR(64) NOT NULL
);

ALTER TABLE seguradora
    ADD CONSTRAINT pk_seguradora PRIMARY KEY (numero_seguradora);


CREATE TABLE telefone
(
    ddd        NCHAR(2)    NOT NULL,
    numero     NUMERIC(9),
    id_cliente NUMERIC(10) NOT NULL
);


CREATE TABLE apolice
(
    id_apolice        NUMERIC(10) NOT NULL,
    numero_seguradora NUMERIC(10) NOT NULL,
    id_cliente        NUMERIC(10) NOT NULL,
    valor_premio      DECIMAL(3),
    valor_franquia    DECIMAL(3)
);

ALTER TABLE apolice
    ADD CONSTRAINT pk_apolice PRIMARY KEY (id_apolice, numero_seguradora, id_cliente);


CREATE TABLE categorizacao
(
    iditem       NUMERIC(10) NOT NULL,
    id_categoria NUMERIC(10) NOT NULL
);

ALTER TABLE categorizacao
    ADD CONSTRAINT pk_categorizacao PRIMARY KEY (iditem, id_categoria);


CREATE TABLE conducao
(
    id_entrega NUMERIC(10) NOT NULL,
    cnh        NUMERIC(11) NOT NULL
);

ALTER TABLE conducao
    ADD CONSTRAINT pk_conducao PRIMARY KEY (id_entrega, cnh);


CREATE TABLE inspecoes
(
    id_protocolo_seguranca NUMERIC(10) NOT NULL,
    id_item                NUMERIC(10) NOT NULL,
    data_ultima_inspecao   DATE
);

ALTER TABLE inspecoes
    ADD CONSTRAINT pk_inspecoes PRIMARY KEY (id_protocolo_seguranca, id_item);


ALTER TABLE distancia
    ADD CONSTRAINT fk_distancia_0 FOREIGN KEY (id_cidade_partida) REFERENCES cidade (id_cidade);
ALTER TABLE distancia
    ADD CONSTRAINT fk_distancia_1 FOREIGN KEY (id_cidade_chegada) REFERENCES cidade (id_cidade);


ALTER TABLE entrega
    ADD CONSTRAINT fk_entrega_0 FOREIGN KEY (id_cidade_partida) REFERENCES cidade (id_cidade);
ALTER TABLE entrega
    ADD CONSTRAINT fk_entrega_1 FOREIGN KEY (placa) REFERENCES caminhao (placa);
ALTER TABLE entrega
    ADD CONSTRAINT fk_entrega_2 FOREIGN KEY (id_cidade_chegada) REFERENCES cidade (id_cidade);
ALTER TABLE entrega
    ADD CONSTRAINT fk_entrega_3 FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente);


ALTER TABLE licitacao
    ADD CONSTRAINT fk_licitacao_0 FOREIGN KEY (id_item) REFERENCES item (iditem);


ALTER TABLE pessoafisica
    ADD CONSTRAINT fk_pessoafisica_0 FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente);


ALTER TABLE pessoajuridica
    ADD CONSTRAINT fk_pessoajuridica_0 FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente);


ALTER TABLE remessa
    ADD CONSTRAINT fk_remessa_0 FOREIGN KEY (id_item) REFERENCES item (iditem);
ALTER TABLE remessa
    ADD CONSTRAINT fk_remessa_1 FOREIGN KEY (id_entrega) REFERENCES entrega (id_entrega);


ALTER TABLE telefone
    ADD CONSTRAINT fk_telefone_0 FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente);


ALTER TABLE apolice
    ADD CONSTRAINT fk_apolice_0 FOREIGN KEY (numero_seguradora) REFERENCES seguradora (numero_seguradora);
ALTER TABLE apolice
    ADD CONSTRAINT fk_apolice_1 FOREIGN KEY (id_cliente) REFERENCES pessoajuridica (id_cliente);


ALTER TABLE categorizacao
    ADD CONSTRAINT fk_categorizacao_0 FOREIGN KEY (iditem) REFERENCES item (iditem);
ALTER TABLE categorizacao
    ADD CONSTRAINT fk_categorizacao_1 FOREIGN KEY (id_categoria) REFERENCES categoriaitem (id_categoria);


ALTER TABLE conducao
    ADD CONSTRAINT fk_conducao_0 FOREIGN KEY (id_entrega) REFERENCES entrega (id_entrega);
ALTER TABLE conducao
    ADD CONSTRAINT fk_conducao_1 FOREIGN KEY (cnh) REFERENCES motorista (cnh);


ALTER TABLE inspecoes
    ADD CONSTRAINT fk_inspecoes_0 FOREIGN KEY (id_protocolo_seguranca) REFERENCES protocolo_seguranca (id_protocolo_seguranca);
ALTER TABLE inspecoes
    ADD CONSTRAINT fk_inspecoes_1 FOREIGN KEY (id_item) REFERENCES item (iditem);


