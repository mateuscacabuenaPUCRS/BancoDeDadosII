CREATE TABLE carros (
    codigo NUMBER(2) NOT NULL,
    placa CHAR(7) NOT NULL,
    marca VARCHAR(30) NOT NULL,
    modelo VARCHAR(30) NOT NULL,
    ano NUMBER(4) NOT NULL,
    nome_motorista VARCHAR(30) NOT NULL,
    cor VARCHAR(30) NOT NULL,
  CONSTRAINT pk_carros PRIMARY KEY(codigo)
);

CREATE TABLE passageiros (
    cpf NUMBER(11) NOT NULL,
    nome VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL,
    telefone NUMBER(13) NOT NULL,
    bairro VARCHAR(30) NOT NULL,
    meio_pagamento VARCHAR(30) NOT NULL,
  CONSTRAINT pk_passageiros PRIMARY KEY(cpf)
);

CREATE TABLE viagens (
    id NUMBER(2) NOT NULL,
    kms NUMBER(6) NOT NULL,
    valor NUMBER(6) NOT NULL,
    fk_carros_codigo NUMBER(2) NOT NULL,
  CONSTRAINT pk_viagens PRIMARY KEY(id)
);

CREATE TABLE urbanas (
    bairro_partida VARCHAR(30) NOT NULL,
    fk_viagens_id NUMBER(2) NOT NULL,
  CONSTRAINT pk_urbanas PRIMARY KEY(fk_viagens_id)
);

CREATE TABLE interurbanas (
    taxa_adicional NUMBER(6) NOT NULL,
    cidade_destino VARCHAR(30) NOT NULL,
    fk_viagens_id NUMBER(2) NOT NULL,
  CONSTRAINT pk_interurbanas PRIMARY KEY (fk_viagens_id)
);

CREATE TABLE usa (
    fk_passageiros_cpf NUMBER(11) NOT NULL,
    fk_viagens_id NUMBER(2) NOT NULL,
    CONSTRAINT pk_usa PRIMARY KEY(fk_passageiros_cpf, fk_viagens_id)
);
 
ALTER TABLE viagens ADD CONSTRAINT fk_viagens_1
    FOREIGN KEY (fk_carros_codigo) REFERENCES carros (codigo);
 
ALTER TABLE urbanas ADD CONSTRAINT fk_urbanas_1
    FOREIGN KEY (fk_viagens_id) REFERENCES viagens (id);
 
ALTER TABLE interurbanas ADD CONSTRAINT fk_interurbanas_1
    FOREIGN KEY (fk_viagens_id) REFERENCES viagens (id);
 
ALTER TABLE usa ADD CONSTRAINT fk_usa_0
    FOREIGN KEY (fk_passageiros_cpf) REFERENCES passageiros (cpf);
 
ALTER TABLE usa ADD CONSTRAINT fk_usa_1
    FOREIGN KEY (fk_viagens_id) REFERENCES viagens (id);