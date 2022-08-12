/* Criando o Banco de Dados */

CREATE DATABASE "TESTE"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1;

CREATE SCHEMA gobuzz
    AUTHORIZATION postgres;


/* Criando a tabela USERS */


CREATE TABLE gobuzz."TB_USERS"
(
    id integer GENERATED ALWAYS AS IDENTITY NOT NULL,
    nome character varying(30) NOT NULL,
    sobrenome character varying(30) NOT NULL,
    login character varying(30) NOT NULL,
    senha character varying(15) NOT NULL,
    email character varying(50) NOT NULL,
    CONSTRAINT pk_id_users PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS gobuzz."TB_USERS"
    OWNER to postgres;

ALTER TABLE IF EXISTS gobuzz."TB_USERS"
    ADD CONSTRAINT uk_id_users UNIQUE (id);


/* Criando a tabela LOGIN_IPS */


CREATE TABLE gobuzz."TB_LOGIN_IPS"
(
    id integer GENERATED ALWAYS AS IDENTITY NOT NULL,
    usuario character varying(30) NOT NULL,
    origem_ip character(1) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    CONSTRAINT pk_id_loginips PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS gobuzz."TB_LOGIN_IPS"
    OWNER to postgres;

ALTER TABLE IF EXISTS gobuzz."TB_LOGIN_IPS"
    ADD CONSTRAINT uk_id_loginips UNIQUE (id);

ALTER TABLE IF EXISTS gobuzz."TB_LOGIN_IPS"
    ADD CONSTRAINT fk_loginips_users FOREIGN KEY (user_id)
    REFERENCES gobuzz."TB_USERS" (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;