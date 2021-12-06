CREATE TABLE TELEFONE (
    ID_TELEFONE INTEGER(4) NOT NULL AUTO_INCREMENT,
    NUMERO VARCHAR(9) NOT NULL,
    DDD VARCHAR(2) NOT NULL,
    PRIMARY KEY(ID_TELEFONE),
    UNIQUE KEY ID_TELEFONE(ID_TELEFONE)
)

CREATE TABLE PESSOA (
    ID_PESSOA INTEGER(4) NOT NULL AUTO_INCREMENT,
    NOME VARCHAR(100) NOT NULL,
    PRIMARY KEY(ID_PESSOA),
    FOREIGN KEY (ID_CIDADE) REFERENCES CIDADE(ID_CIDADE),
    UNIQUE KEY ID_PESSOA(ID_PESSOA)
)

CREATE TABLE CIDADE (
    ID_CIDADE INTEGER NOT NULL,
    NOME VARCHAR(58) NOT NULL,
    FOREIGN KEY (ID_ESTADO) REFERENCES ESTADO(ID_ESTADO),
    UNIQUE KEY ID_CIDADE(ID_CIDADE)
)

CREATE TABLE ESTADO (
    ID_ESTADO INTEGER NOT NULL,
    NOME VARCHAR(100) NOT NULL,
    SIGLA VARCHAR(2) NOT NULL,
    UNIQUE KEY ID_ESTADO(ID_ESTADO)

)

