CREATE TABLE Caminhao (
 placa INT NOT NULL,
 marca VARCHAR(64) NOT NULL,
 modelo VARCHAR(64) NOT NULL,
 ano_fabricacao INT NOT NULL
);

ALTER TABLE Caminhao ADD CONSTRAINT PK_Caminhao PRIMARY KEY (placa);


CREATE TABLE CategoriaItem (
 id_categoria NUMERIC(10) NOT NULL,
 descricao VARCHAR(256)
);

ALTER TABLE CategoriaItem ADD CONSTRAINT PK_CategoriaItem PRIMARY KEY (id_categoria);


CREATE TABLE Cidade (
 id_cidade NUMERIC(10) NOT NULL,
 nome INT,
 unidade_federativa NCHAR(2)
);

ALTER TABLE Cidade ADD CONSTRAINT PK_Cidade PRIMARY KEY (id_cidade);


CREATE TABLE Cliente (
 id_cliente NUMERIC(10) NOT NULL,
 nome INT,
 endereco INT,
 telefones INT
);

ALTER TABLE Cliente ADD CONSTRAINT PK_Cliente PRIMARY KEY (id_cliente);


CREATE TABLE Distancia (
 id_cidade_partida NUMERIC(10) NOT NULL,
 id_cidade_chegada NUMERIC(10) NOT NULL,
 distancia INT
);

ALTER TABLE Distancia ADD CONSTRAINT PK_Distancia PRIMARY KEY (id_cidade_partida,id_cidade_chegada);


CREATE TABLE Endereco (
 cep NUMERIC(8) NOT NULL,
 rua VARCHAR(64) NOT NULL,
 numero NUMERIC(5) NOT NULL,
 complemento NUMERIC(3),
 bairro VARCHAR(64),
 cidade VARCHAR(64) NOT NULL,
 estado NCHAR(2) NOT NULL
);


CREATE TABLE Entrega (
 id_entrega NUMERIC(10) NOT NULL,
 valor INT,
 data_chegada DATE,
 data_partida DATE,
 id_cidade_partida NUMERIC(10),
 placa VARCHAR(7),
 id_cidade_chegada NUMERIC(10),
 id_cliente NUMERIC(10) NOT NULL
);

ALTER TABLE Entrega ADD CONSTRAINT PK_Entrega PRIMARY KEY (id_entrega);


CREATE TABLE Item (
 idItem NUMERIC(10) NOT NULL,
 descricao VARCHAR(64) NOT NULL,
 peso INT NOT NULL,
 largura INT NOT NULL,
 comprimento INT NOT NULL,
 altura INT NOT NULL
);

ALTER TABLE Item ADD CONSTRAINT PK_Item PRIMARY KEY (idItem);


CREATE TABLE Licitacao (
 indice_licitacao NUMERIC(10) NOT NULL,
 id_item NUMERIC(10) NOT NULL,
 orgao_fiscalizador VARCHAR(64),
 data_licitacao DATE NOT NULL
);

ALTER TABLE Licitacao ADD CONSTRAINT PK_Licitacao PRIMARY KEY (indice_licitacao,id_item);


CREATE TABLE Motorista (
 cnh NUMERIC(11) NOT NULL,
 data_contratacao DATE NOT NULL,
 nome VARCHAR(64) NOT NULL,
 salario DECIMAL(6) NOT NULL
);

ALTER TABLE Motorista ADD CONSTRAINT PK_Motorista PRIMARY KEY (cnh);


CREATE TABLE PessoaFisica (
 id_cliente NUMERIC(10) NOT NULL,
 cpf NUMERIC(11),
 rg NUMERIC(10)
);

ALTER TABLE PessoaFisica ADD CONSTRAINT PK_PessoaFisica PRIMARY KEY (id_cliente);


CREATE TABLE PessoaJuridica (
 id_cliente NUMERIC(10) NOT NULL,
 cnpj NUMERIC(10),
 inscricao_estadual NUMERIC(10)
);

ALTER TABLE PessoaJuridica ADD CONSTRAINT PK_PessoaJuridica PRIMARY KEY (id_cliente);


CREATE TABLE Protocolo_Seguranca (
 id_protocolo_seguranca NUMERIC(10) NOT NULL,
 descricao VARCHAR(256)
);

ALTER TABLE Protocolo_Seguranca ADD CONSTRAINT PK_Protocolo_Seguranca PRIMARY KEY (id_protocolo_seguranca);


CREATE TABLE Remessa (
 id_item NUMERIC(10) NOT NULL,
 id_entrega NUMERIC(10) NOT NULL,
 valor_declarado DECIMAL(10)
);

ALTER TABLE Remessa ADD CONSTRAINT PK_Remessa PRIMARY KEY (id_item,id_entrega);


CREATE TABLE Seguradora (
 numero_seguradora NUMERIC(10) NOT NULL,
 nome VARCHAR(64) NOT NULL
);

ALTER TABLE Seguradora ADD CONSTRAINT PK_Seguradora PRIMARY KEY (numero_seguradora);


CREATE TABLE Telefone (
 ddd NCHAR(2) NOT NULL,
 numero NUMERIC(9),
 id_cliente NUMERIC(10) NOT NULL
);


CREATE TABLE Apolice (
 id_apolice NUMERIC(10) NOT NULL,
 numero_seguradora NUMERIC(10) NOT NULL,
 id_cliente NUMERIC(10) NOT NULL,
 valor_premio DECIMAL(3),
 valor_franquia DECIMAL(3)
);

ALTER TABLE Apolice ADD CONSTRAINT PK_Apolice PRIMARY KEY (id_apolice,numero_seguradora,id_cliente);


CREATE TABLE Categorizacao (
 idItem NUMERIC(10) NOT NULL,
 id_categoria NUMERIC(10) NOT NULL
);

ALTER TABLE Categorizacao ADD CONSTRAINT PK_Categorizacao PRIMARY KEY (idItem,id_categoria);


CREATE TABLE Conducao (
 id_entrega NUMERIC(10) NOT NULL,
 cnh NUMERIC(11) NOT NULL
);

ALTER TABLE Conducao ADD CONSTRAINT PK_Conducao PRIMARY KEY (id_entrega,cnh);


CREATE TABLE Inspecoes (
 id_protocolo_seguranca NUMERIC(10) NOT NULL,
 id_item NUMERIC(10) NOT NULL,
 data_ultima_inspecao DATE
);

ALTER TABLE Inspecoes ADD CONSTRAINT PK_Inspecoes PRIMARY KEY (id_protocolo_seguranca,id_item);


ALTER TABLE Distancia ADD CONSTRAINT FK_Distancia_0 FOREIGN KEY (id_cidade_partida) REFERENCES Cidade (id_cidade);
ALTER TABLE Distancia ADD CONSTRAINT FK_Distancia_1 FOREIGN KEY (id_cidade_chegada) REFERENCES Cidade (id_cidade);


ALTER TABLE Entrega ADD CONSTRAINT FK_Entrega_0 FOREIGN KEY (id_cidade_partida) REFERENCES Cidade (id_cidade);
ALTER TABLE Entrega ADD CONSTRAINT FK_Entrega_1 FOREIGN KEY (placa) REFERENCES Caminhao (placa);
ALTER TABLE Entrega ADD CONSTRAINT FK_Entrega_2 FOREIGN KEY (id_cidade_chegada) REFERENCES Cidade (id_cidade);
ALTER TABLE Entrega ADD CONSTRAINT FK_Entrega_3 FOREIGN KEY (id_cliente) REFERENCES Cliente (id_cliente);


ALTER TABLE Licitacao ADD CONSTRAINT FK_Licitacao_0 FOREIGN KEY (id_item) REFERENCES Item (idItem);


ALTER TABLE PessoaFisica ADD CONSTRAINT FK_PessoaFisica_0 FOREIGN KEY (id_cliente) REFERENCES Cliente (id_cliente);


ALTER TABLE PessoaJuridica ADD CONSTRAINT FK_PessoaJuridica_0 FOREIGN KEY (id_cliente) REFERENCES Cliente (id_cliente);


ALTER TABLE Remessa ADD CONSTRAINT FK_Remessa_0 FOREIGN KEY (id_item) REFERENCES Item (idItem);
ALTER TABLE Remessa ADD CONSTRAINT FK_Remessa_1 FOREIGN KEY (id_entrega) REFERENCES Entrega (id_entrega);


ALTER TABLE Telefone ADD CONSTRAINT FK_Telefone_0 FOREIGN KEY (id_cliente) REFERENCES Cliente (id_cliente);


ALTER TABLE Apolice ADD CONSTRAINT FK_Apolice_0 FOREIGN KEY (numero_seguradora) REFERENCES Seguradora (numero_seguradora);
ALTER TABLE Apolice ADD CONSTRAINT FK_Apolice_1 FOREIGN KEY (id_cliente) REFERENCES PessoaJuridica (id_cliente);


ALTER TABLE Categorizacao ADD CONSTRAINT FK_Categorizacao_0 FOREIGN KEY (idItem) REFERENCES Item (idItem);
ALTER TABLE Categorizacao ADD CONSTRAINT FK_Categorizacao_1 FOREIGN KEY (id_categoria) REFERENCES CategoriaItem (id_categoria);


ALTER TABLE Conducao ADD CONSTRAINT FK_Conducao_0 FOREIGN KEY (id_entrega) REFERENCES Entrega (id_entrega);
ALTER TABLE Conducao ADD CONSTRAINT FK_Conducao_1 FOREIGN KEY (cnh) REFERENCES Motorista (cnh);


ALTER TABLE Inspecoes ADD CONSTRAINT FK_Inspecoes_0 FOREIGN KEY (id_protocolo_seguranca) REFERENCES Protocolo_Seguranca (id_protocolo_seguranca);
ALTER TABLE Inspecoes ADD CONSTRAINT FK_Inspecoes_1 FOREIGN KEY (id_item) REFERENCES Item (idItem);


