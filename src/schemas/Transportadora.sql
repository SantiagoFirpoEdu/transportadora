CREATE TABLE CC105613.caminhoes
(
    placa          NCHAR(7)  NOT NULL,
    marca          VARCHAR(64) NOT NULL,
    modelo         VARCHAR(64) NOT NULL,
    ano_fabricacao NUMERIC(4)  NOT NULL
);

ALTER TABLE CC105613.caminhoes
    ADD CONSTRAINT pk_caminhoes PRIMARY KEY (placa);


CREATE TABLE CC105613.categorias_item
(
    id_categoria NUMERIC(10) NOT NULL,
    descricao    VARCHAR(256)
);

ALTER TABLE CC105613.categorias_item
    ADD CONSTRAINT pk_categorias_item PRIMARY KEY (id_categoria);


CREATE TABLE CC105613.cidades
(
    id_cidade          NUMERIC(10) NOT NULL,
    nome               VARCHAR(64) NOT NULL,
    unidade_federativa NCHAR(2)    NOT NULL
);

ALTER TABLE CC105613.cidades
    ADD CONSTRAINT pk_cidades PRIMARY KEY (id_cidade);


CREATE TABLE CC105613.clientes
(
    id_cliente NUMERIC(10) NOT NULL,
    nome       VARCHAR(64) NOT NULL
);

ALTER TABLE CC105613.clientes
    ADD CONSTRAINT pk_clientes PRIMARY KEY (id_cliente);


CREATE TABLE CC105613.distancias
(
    id_cidade_partida NUMERIC(10) NOT NULL,
    id_cidade_chegada NUMERIC(10) NOT NULL,
    distancia         DECIMAL(10) NOT NULL
);

ALTER TABLE CC105613.distancias
    ADD CONSTRAINT pk_distancias PRIMARY KEY (id_cidade_partida, id_cidade_chegada);


CREATE TABLE CC105613.enderecos
(
    id_endereco NUMERIC(10) NOT NULL,
    cep         NUMERIC(8)  NOT NULL,
    rua         VARCHAR(64) NOT NULL,
    numero      NUMERIC(5)  NOT NULL,
    complemento NUMERIC(3),
    bairro      VARCHAR(64),
    cidade      VARCHAR(64) NOT NULL,
    unidade_federativa      NCHAR(2)    NOT NULL,
    id_cliente  NUMERIC(10) NOT NULL
);

ALTER TABLE CC105613.enderecos
    ADD CONSTRAINT pk_enderecos PRIMARY KEY (id_endereco);


CREATE TABLE CC105613.entregas
(
    id_entrega        NUMERIC(10) NOT NULL,
    valor             FLOAT(3) NOT NULL,
    data_chegada      DATE,
    data_saida        DATE,
    id_cidade_partida NUMERIC(10),
    placa             NCHAR(7),
    id_cidade_chegada NUMERIC(10),
    id_cliente        NUMERIC(10) NOT NULL
);

ALTER TABLE CC105613.entregas
    ADD CONSTRAINT pk_entregas PRIMARY KEY (id_entrega);


CREATE TABLE CC105613.itens
(
    id_item      NUMERIC(10) NOT NULL,
    descricao   VARCHAR(64) NOT NULL,
    peso        DECIMAL(3)  NOT NULL,
    largura     DECIMAL(3)  NOT NULL,
    comprimento DECIMAL(3)  NOT NULL,
    altura      DECIMAL(3)  NOT NULL
);

ALTER TABLE CC105613.itens
    ADD CONSTRAINT pk_itens PRIMARY KEY (id_item);


CREATE TABLE CC105613.licitacoes
(
    indice_licitacao   NUMERIC(10) NOT NULL,
    id_item            NUMERIC(10) NOT NULL,
    orgao_fiscalizador VARCHAR(64),
    data_licitacao     DATE        NOT NULL
);

ALTER TABLE CC105613.licitacoes
    ADD CONSTRAINT pk_licitacoes PRIMARY KEY (indice_licitacao, id_item);


CREATE TABLE CC105613.motoristas
(
    cnh              NUMERIC(11) NOT NULL,
    data_contratacao DATE        NOT NULL,
    nome             VARCHAR(64) NOT NULL,
    salario          DECIMAL(6)  NOT NULL
);

ALTER TABLE CC105613.motoristas
    ADD CONSTRAINT pk_motoristas PRIMARY KEY (cnh);


CREATE TABLE CC105613.pessoas_fisicas
(
    id_cliente NUMERIC(10) NOT NULL,
    cpf        NUMERIC(11),
    rg         NUMERIC(10)
);

ALTER TABLE CC105613.pessoas_fisicas
    ADD CONSTRAINT pk_pessoas_fisicas PRIMARY KEY (id_cliente);


CREATE TABLE CC105613.pessoas_juridicas
(
    id_cliente         NUMERIC(10) NOT NULL,
    cnpj               NUMERIC(11) NOT NULL,
    inscricao_estadual NUMERIC(10) NOT NULL
);

ALTER TABLE CC105613.pessoas_juridicas
    ADD CONSTRAINT pk_pessoas_juridicas PRIMARY KEY (id_cliente);


CREATE TABLE CC105613.protocolos_seguranca
(
    id_protocolo_seguranca NUMERIC(10) NOT NULL,
    descricao              VARCHAR(256) NOT NULL
);

ALTER TABLE CC105613.protocolos_seguranca
    ADD CONSTRAINT pk_protocolos_seguranca PRIMARY KEY (id_protocolo_seguranca);


CREATE TABLE CC105613.remessas
(
    id_item         NUMERIC(10) NOT NULL,
    id_entrega      NUMERIC(10) NOT NULL,
    valor_declarado DECIMAL(10)
);

ALTER TABLE CC105613.remessas
    ADD CONSTRAINT pk_remessas PRIMARY KEY (id_item, id_entrega);


CREATE TABLE CC105613.seguradoras
(
    numero_seguradora NUMERIC(10) NOT NULL,
    nome              VARCHAR(64) NOT NULL
);

ALTER TABLE CC105613.seguradoras
    ADD CONSTRAINT pk_seguradoras PRIMARY KEY (numero_seguradora);


CREATE TABLE CC105613.telefones
(
    id_telefone NUMERIC(10) NOT NULL,
    ddd         NCHAR(2)    NOT NULL,
    numero      NUMERIC(9)  NOT NULL,
    id_cliente  NUMERIC(10) NOT NULL
);

ALTER TABLE CC105613.telefones
    ADD CONSTRAINT pk_telefones PRIMARY KEY (id_telefone);


CREATE TABLE CC105613.apolices
(
    id_apolice        NUMERIC(10) NOT NULL,
    numero_seguradora NUMERIC(10) NOT NULL,
    id_cliente        NUMERIC(10) NOT NULL,
    valor_premio      DECIMAL(15, 3) NOT NULL,
    valor_franquia    DECIMAL(15, 3) NOT NULL
);

ALTER TABLE CC105613.apolices
    ADD CONSTRAINT pk_apolices PRIMARY KEY (id_apolice, numero_seguradora, id_cliente);


CREATE TABLE CC105613.categorizacoes
(
    id_item       NUMERIC(10) NOT NULL,
    id_categoria NUMERIC(10) NOT NULL
);

ALTER TABLE CC105613.categorizacoes
    ADD CONSTRAINT pk_categorizacao PRIMARY KEY (id_item, id_categoria);


CREATE TABLE CC105613.conducoes
(
    id_entrega NUMERIC(10) NOT NULL,
    cnh        NUMERIC(11) NOT NULL
);

ALTER TABLE CC105613.conducoes
    ADD CONSTRAINT pk_conducao PRIMARY KEY (id_entrega, cnh);


CREATE TABLE CC105613.inspecoes
(
    id_protocolo_seguranca NUMERIC(10) NOT NULL,
    id_item                NUMERIC(10) NOT NULL,
    data                   DATE        NOT NULL
);

ALTER TABLE CC105613.inspecoes
    ADD CONSTRAINT pk_inspecoes PRIMARY KEY (id_protocolo_seguranca, id_item);


ALTER TABLE CC105613.distancias
    ADD CONSTRAINT fk_cidade_inicial FOREIGN KEY (id_cidade_partida) REFERENCES cidades (id_cidade);
ALTER TABLE CC105613.distancias
    ADD CONSTRAINT fk_cidade_final FOREIGN KEY (id_cidade_chegada) REFERENCES cidades (id_cidade);


ALTER TABLE CC105613.enderecos
    ADD CONSTRAINT fk_enderecoes_cliente FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente);


ALTER TABLE CC105613.entregas
    ADD CONSTRAINT fk_entregas_cidade_partida FOREIGN KEY (id_cidade_partida) REFERENCES cidades (id_cidade);
ALTER TABLE CC105613.entregas
    ADD CONSTRAINT fk_entregas_caminhao FOREIGN KEY (placa) REFERENCES caminhoes (placa);
ALTER TABLE CC105613.entregas
    ADD CONSTRAINT fk_entregas_cidade FOREIGN KEY (id_cidade_chegada) REFERENCES cidades (id_cidade);
ALTER TABLE CC105613.entregas
    ADD CONSTRAINT fk_entregas_cliente FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente);


ALTER TABLE CC105613.licitacoes
    ADD CONSTRAINT fk_licitacoes_item FOREIGN KEY (id_item) REFERENCES itens (id_item);


ALTER TABLE CC105613.pessoas_fisicas
    ADD CONSTRAINT fk_pessoas_fisicas_cliente FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente);


ALTER TABLE CC105613.pessoas_juridicas
    ADD CONSTRAINT fk_pessoas_juridicas_cliente FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente);


ALTER TABLE CC105613.remessas
    ADD CONSTRAINT fk_remessas_item FOREIGN KEY (id_item) REFERENCES itens (id_item);
ALTER TABLE CC105613.remessas
    ADD CONSTRAINT fk_remessas_entrega FOREIGN KEY (id_entrega) REFERENCES entregas (id_entrega);


ALTER TABLE CC105613.telefones
    ADD CONSTRAINT fk_telefones_cliente FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente);


ALTER TABLE CC105613.apolices
    ADD CONSTRAINT fk_apolices_seguradora FOREIGN KEY (numero_seguradora) REFERENCES seguradoras (numero_seguradora);
ALTER TABLE CC105613.apolices
    ADD CONSTRAINT fk_apolices_pessoa_juridica FOREIGN KEY (id_cliente) REFERENCES pessoas_juridicas (id_cliente);


ALTER TABLE CC105613.categorizacoes
    ADD CONSTRAINT fk_categorizacao_item FOREIGN KEY (id_item) REFERENCES itens (id_item);
ALTER TABLE CC105613.categorizacoes
    ADD CONSTRAINT fk_categorizacao_categoria FOREIGN KEY (id_categoria) REFERENCES categorias_item (id_categoria);


ALTER TABLE CC105613.conducoes
    ADD CONSTRAINT fk_conducao_entrega FOREIGN KEY (id_entrega) REFERENCES entregas (id_entrega);
ALTER TABLE CC105613.conducoes
    ADD CONSTRAINT fk_conducao_motorista FOREIGN KEY (cnh) REFERENCES motoristas (cnh);


ALTER TABLE CC105613.inspecoes
    ADD CONSTRAINT fk_inspecoes_protocolo FOREIGN KEY (id_protocolo_seguranca) REFERENCES protocolos_seguranca (id_protocolo_seguranca);
ALTER TABLE CC105613.inspecoes
    ADD CONSTRAINT fk_inspecoes_item FOREIGN KEY (id_item) REFERENCES itens (id_item);

COMMIT;