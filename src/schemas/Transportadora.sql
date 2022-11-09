CREATE TABLE caminhoes
(
    placa          NUMERIC(7)  NOT NULL,
    marca          VARCHAR(64) NOT NULL,
    modelo         VARCHAR(64) NOT NULL,
    ano_fabricacao NUMERIC(4)  NOT NULL
);

ALTER TABLE caminhoes
    ADD CONSTRAINT pk_caminhoes PRIMARY KEY (placa);


CREATE TABLE categorias_item
(
    id_categoria NUMERIC(10) NOT NULL,
    descricao    VARCHAR(256)
);

ALTER TABLE categorias_item
    ADD CONSTRAINT pk_categorias_item PRIMARY KEY (id_categoria);


CREATE TABLE cidades
(
    id_cidade          NUMERIC(10) NOT NULL,
    nome               VARCHAR(64) NOT NULL,
    unidade_federativa NCHAR(2)    NOT NULL
);

ALTER TABLE cidades
    ADD CONSTRAINT pk_cidades PRIMARY KEY (id_cidade);


CREATE TABLE clientes
(
    id_cliente NUMERIC(10) NOT NULL,
    nome       VARCHAR(64) NOT NULL
);

ALTER TABLE clientes
    ADD CONSTRAINT pk_clientes PRIMARY KEY (id_cliente);


CREATE TABLE distancias
(
    id_cidade_partida NUMERIC(10) NOT NULL,
    id_cidade_chegada NUMERIC(10) NOT NULL,
    distancia         DECIMAL(10) NOT NULL
);

ALTER TABLE distancias
    ADD CONSTRAINT pk_distancias PRIMARY KEY (id_cidade_partida, id_cidade_chegada);


CREATE TABLE enderecos
(
    id_endereco NUMERIC(10) NOT NULL,
    cep         NUMERIC(8)  NOT NULL,
    rua         VARCHAR(64) NOT NULL,
    numero      NUMERIC(5)  NOT NULL,
    complemento NUMERIC(3),
    bairro      VARCHAR(64),
    cidade      VARCHAR(64) NOT NULL,
    estado      NCHAR(2)    NOT NULL,
    id_cliente  NUMERIC(10) NOT NULL
);

ALTER TABLE enderecos
    ADD CONSTRAINT pk_enderecos PRIMARY KEY (id_endereco);


CREATE TABLE entregas
(
    id_entrega        NUMERIC(10) NOT NULL,
    valor             INT,
    data_chegada      DATE,
    data_partida      DATE,
    id_cidade_partida NUMERIC(10),
    placa             NUMERIC(7),
    id_cidade_chegada NUMERIC(10),
    id_cliente        NUMERIC(10) NOT NULL
);

ALTER TABLE entregas
    ADD CONSTRAINT pk_entregas PRIMARY KEY (id_entrega);


CREATE TABLE itens
(
    iditem      NUMERIC(10) NOT NULL,
    descricao   VARCHAR(64) NOT NULL,
    peso        DECIMAL(3)  NOT NULL,
    largura     DECIMAL(3)  NOT NULL,
    comprimento DECIMAL(3)  NOT NULL,
    altura      DECIMAL(3)  NOT NULL
);

ALTER TABLE itens
    ADD CONSTRAINT pk_itens PRIMARY KEY (iditem);


CREATE TABLE licitacoes
(
    indice_licitacao   NUMERIC(10) NOT NULL,
    id_item            NUMERIC(10) NOT NULL,
    orgao_fiscalizador VARCHAR(64),
    data_licitacao     DATE        NOT NULL
);

ALTER TABLE licitacoes
    ADD CONSTRAINT pk_licitacoes PRIMARY KEY (indice_licitacao, id_item);


CREATE TABLE motoristas
(
    cnh              NUMERIC(11) NOT NULL,
    data_contratacao DATE        NOT NULL,
    nome             VARCHAR(64) NOT NULL,
    salario          DECIMAL(6)  NOT NULL
);

ALTER TABLE motoristas
    ADD CONSTRAINT pk_motoristas PRIMARY KEY (cnh);


CREATE TABLE pessoas_fisicas
(
    id_cliente NUMERIC(10) NOT NULL,
    cpf        NUMERIC(11),
    rg         NUMERIC(10)
);

ALTER TABLE pessoas_fisicas
    ADD CONSTRAINT pk_pessoas_fisicas PRIMARY KEY (id_cliente);


CREATE TABLE pessoas_juridicas
(
    id_cliente         NUMERIC(10) NOT NULL,
    cnpj               NUMERIC(10),
    inscricao_estadual NUMERIC(10)
);

ALTER TABLE pessoas_juridicas
    ADD CONSTRAINT pk_pessoas_juridicas PRIMARY KEY (id_cliente);


CREATE TABLE protocolos_seguranca
(
    id_protocolo_seguranca NUMERIC(10) NOT NULL,
    descricao              VARCHAR(256)
);

ALTER TABLE protocolos_seguranca
    ADD CONSTRAINT pk_protocolos_seguranca PRIMARY KEY (id_protocolo_seguranca);


CREATE TABLE remessas
(
    id_item         NUMERIC(10) NOT NULL,
    id_entrega      NUMERIC(10) NOT NULL,
    valor_declarado DECIMAL(10)
);

ALTER TABLE remessas
    ADD CONSTRAINT pk_remessas PRIMARY KEY (id_item, id_entrega);


CREATE TABLE seguradoras
(
    numero_seguradora NUMERIC(10) NOT NULL,
    nome              VARCHAR(64) NOT NULL
);

ALTER TABLE seguradoras
    ADD CONSTRAINT pk_seguradoras PRIMARY KEY (numero_seguradora);


CREATE TABLE telefones
(
    id_telefone NUMERIC(10) NOT NULL,
    ddd         NCHAR(2)    NOT NULL,
    numero      NUMERIC(9)  NOT NULL,
    id_cliente  NUMERIC(10) NOT NULL
);

ALTER TABLE telefones
    ADD CONSTRAINT pk_telefones PRIMARY KEY (id_telefone);


CREATE TABLE apolices
(
    id_apolice        NUMERIC(10) NOT NULL,
    numero_seguradora NUMERIC(10) NOT NULL,
    id_cliente        NUMERIC(10) NOT NULL,
    valor_premio      DECIMAL(3),
    valor_franquia    DECIMAL(3)
);

ALTER TABLE apolices
    ADD CONSTRAINT pk_apolices PRIMARY KEY (id_apolice, numero_seguradora, id_cliente);


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
    data                   DATE        NOT NULL
);

ALTER TABLE inspecoes
    ADD CONSTRAINT pk_inspecoes PRIMARY KEY (id_protocolo_seguranca, id_item);


ALTER TABLE distancias
    ADD CONSTRAINT fk_distancias_0 FOREIGN KEY (id_cidade_partida) REFERENCES cidades (id_cidade);
ALTER TABLE distancias
    ADD CONSTRAINT fk_distancias_1 FOREIGN KEY (id_cidade_chegada) REFERENCES cidades (id_cidade);


ALTER TABLE enderecos
    ADD CONSTRAINT fk_enderecos_0 FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente);


ALTER TABLE entregas
    ADD CONSTRAINT fk_entregas_0 FOREIGN KEY (id_cidade_partida) REFERENCES cidades (id_cidade);
ALTER TABLE entregas
    ADD CONSTRAINT fk_entregas_1 FOREIGN KEY (placa) REFERENCES caminhoes (placa);
ALTER TABLE entregas
    ADD CONSTRAINT fk_entregas_2 FOREIGN KEY (id_cidade_chegada) REFERENCES cidades (id_cidade);
ALTER TABLE entregas
    ADD CONSTRAINT fk_entregas_3 FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente);


ALTER TABLE licitacoes
    ADD CONSTRAINT fk_licitacoes_0 FOREIGN KEY (id_item) REFERENCES itens (iditem);


ALTER TABLE pessoas_fisicas
    ADD CONSTRAINT fk_pessoas_fisicas_0 FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente);


ALTER TABLE pessoas_juridicas
    ADD CONSTRAINT fk_pessoas_juridicas_0 FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente);


ALTER TABLE remessas
    ADD CONSTRAINT fk_remessas_0 FOREIGN KEY (id_item) REFERENCES itens (iditem);
ALTER TABLE remessas
    ADD CONSTRAINT fk_remessas_1 FOREIGN KEY (id_entrega) REFERENCES entregas (id_entrega);


ALTER TABLE telefones
    ADD CONSTRAINT fk_telefones_0 FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente);


ALTER TABLE apolices
    ADD CONSTRAINT fk_apolices_0 FOREIGN KEY (numero_seguradora) REFERENCES seguradoras (numero_seguradora);
ALTER TABLE apolices
    ADD CONSTRAINT fk_apolices_1 FOREIGN KEY (id_cliente) REFERENCES pessoas_juridicas (id_cliente);


ALTER TABLE categorizacao
    ADD CONSTRAINT fk_categorizacao_0 FOREIGN KEY (iditem) REFERENCES itens (iditem);
ALTER TABLE categorizacao
    ADD CONSTRAINT fk_categorizacao_1 FOREIGN KEY (id_categoria) REFERENCES categorias_item (id_categoria);


ALTER TABLE conducao
    ADD CONSTRAINT fk_conducao_0 FOREIGN KEY (id_entrega) REFERENCES entregas (id_entrega);
ALTER TABLE conducao
    ADD CONSTRAINT fk_conducao_1 FOREIGN KEY (cnh) REFERENCES motoristas (cnh);


ALTER TABLE inspecoes
    ADD CONSTRAINT fk_inspecoes_0 FOREIGN KEY (id_protocolo_seguranca) REFERENCES protocolos_seguranca (id_protocolo_seguranca);
ALTER TABLE inspecoes
    ADD CONSTRAINT fk_inspecoes_1 FOREIGN KEY (id_item) REFERENCES itens (iditem);


