/* Lógico_1: */

CREATE TABLE CLIENTE (
    CPF NUMERO(11) PRIMARY KEY,
    E_MAIL TEXTO(30),NUMERO(30),
    CEP número,
    SENHA INTEIRO,
    FK_VENDAS_NF INTEIRO
);

CREATE TABLE PACOTES_VIAGENS (
    QTDE INTEIRO,
    COD_PRODUTO NUMERO(11) PRIMARY KEY,
    NOME_PPRODUTO TEXTO(40),
    FK_VENDAS_NF INTEIRO
);

CREATE TABLE VENDAS (
    NF INTEIRO PRIMARY KEY,
    CPF_CLIENTE CARACTERE(11),
    COD_PRODUTO INTEIRO,
    QUANTIDADE INTEIRO
);

CREATE TABLE ORCAMENTO (
    genero TEXTO,
    telefone número,
    E_MAIL TEXTO, NUMERO PRIMARY KEY,
    NOME TEXTO,
    data_volta número,
    data_ida número,
    destino TEXTO(40)
);
 
ALTER TABLE CLIENTE ADD CONSTRAINT FK_CLIENTE_2
    FOREIGN KEY (FK_VENDAS_NF)
    REFERENCES VENDAS (NF)
    ON DELETE RESTRICT;
 
ALTER TABLE PACOTES_VIAGENS ADD CONSTRAINT FK_PACOTES_VIAGENS_2
    FOREIGN KEY (FK_VENDAS_NF)
    REFERENCES VENDAS (NF)
    ON DELETE RESTRICT;