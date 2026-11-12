CREATE TABLE usuario (
    id        INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome      VARCHAR(150) NOT NULL,
    email     VARCHAR(255) NOT NULL UNIQUE,
    senha     VARCHAR(255) NOT NULL,          
    username  VARCHAR(50)  NOT NULL UNIQUE
);

CREATE TABLE cliente (
    id             VARCHAR(20)  PRIMARY KEY,
    nome_fantasia  VARCHAR(150),
    razao_social   VARCHAR(150) NOT NULL,     
    cpf_cnpj       VARCHAR(14)  NOT NULL UNIQUE, 
    tipo           VARCHAR(8)   NOT NULL,
    email          VARCHAR(255),

    CONSTRAINT ck_cliente_tipo
        CHECK (tipo IN ('FISICO', 'JURIDICO')),

    CONSTRAINT ck_cliente_documento CHECK (
        (tipo = 'FISICO'   AND cpf_cnpj ~ '^[0-9]{11}$') OR
        (tipo = 'JURIDICO' AND cpf_cnpj ~ '^[0-9]{14}$')
    )
);

CREATE TABLE produto (
    id              INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    descricao       VARCHAR(255)  NOT NULL,
    departamento    VARCHAR(100),
    codigo_barras   CHAR(13)      UNIQUE,
    preco           NUMERIC(10,2) NOT NULL,

    CONSTRAINT ck_produto_codigo_barras
        CHECK (codigo_barras ~ '^[0-9]{13}$'),
    CONSTRAINT ck_produto_preco
        CHECK (preco >= 0)
);