--GRUPO_N_SGV

/* PARTICIPANTES*/
--RM	      NOME	                                 E-MAIL
--RM92985	Bruno de Oliveira Soares Fonseca	   bruno_chimba@hotmail.com
--RM95764	Gustavo Ribeiro Ferreira	         gustavo.ferreirs@gmail.com
--RM94930	Carollina da Silva França	         carollinafran2@gmail.com
--RM94384	Gabriel Fernandes Silva	               gabriel12258@outlook.com
--RM95793	João Victor Maciel dos Santos	         victormaciel72@hotmail.com

-- Gerado por Oracle SQL Developer Data Modeler 21.4.1.349.1605
--   em:        2022-03-17 20:26:03 BRT
--   site:      Oracle Database 21c
--   tipo:      Oracle Database 21c



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE t_sgv_categoria_prod (
    cd_categoria        NUMBER(3) NOT NULL,
    ds_categoria        VARCHAR2(80) NOT NULL,
    ds_status_categoria VARCHAR2(10) NOT NULL,
    dt_inicio           DATE NOT NULL,
    dt_termino          DATE
)
LOGGING;

COMMENT ON COLUMN t_sgv_categoria_prod.cd_categoria IS
    'Aqui iremos armazenar o código da categoria. Esse código será a chave primaria da tabela e deverá estar cadastrado no padrão InitCap.';

COMMENT ON COLUMN t_sgv_categoria_prod.ds_categoria IS
    'Aqui iremos armazenar a descrição da categoria. Essa informação  deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_categoria_prod.ds_status_categoria IS
    'Aqui iremos armazenar a descrição do status. Essa informação  deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_categoria_prod.dt_inicio IS
    'Aqui iremos armazenar a data inicio. Essa informação  deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_categoria_prod.dt_termino IS
    'Aqui iremos armazenar a data termino. Essa informação  deverá estar cadastrado no padrão InitCap e seu conteúdo não será  obrigatório.';

ALTER TABLE t_sgv_categoria_prod ADD CONSTRAINT t_sgv_categoria_prod_pk PRIMARY KEY ( cd_categoria );

CREATE TABLE t_sgv_categoria_video (
    cd_categoria_video NUMBER(6) NOT NULL,
    ds_categoria_video VARCHAR2(80)
)
LOGGING;

COMMENT ON COLUMN t_sgv_categoria_video.cd_categoria_video IS
    'Aqui iremos armazenar o código da categoria do video. Esse código será a chave primaria da tabela e deverá estar cadastrado no padrão InitCap.';

COMMENT ON COLUMN t_sgv_categoria_video.ds_categoria_video IS
    'Aqui iremos armazenar a descrição da categoria. Essa informação  deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

ALTER TABLE t_sgv_categoria_video ADD CONSTRAINT t_sgv_categoria_video_pk PRIMARY KEY ( cd_categoria_video );

CREATE TABLE t_sgv_chamado (
    nr_chamado             NUMBER(7) NOT NULL,
    cd_produto             NUMBER(6) NOT NULL,
    cd_categoria           NUMBER(3) NOT NULL,
    cd_funcionario         NUMBER(6) NOT NULL,
    ds_chamado             VARCHAR2(15) NOT NULL,
    dt_hr_abertura         DATE NOT NULL,
    dt_hr_atendimento      DATE,
    dt_tma_hora            NUMBER(10),
    ds_ocorrencia          VARCHAR2(4000) NOT NULL,-- Oracle Developer aceita até 4000, RN 10000
    ds_retorno_funcionario VARCHAR2(4000) NOT NULL,-- Oracle Developer aceita até 4000, RN 20000
    ds_status_chamado      VARCHAR2(10) NOT NULL,
    nt_satisfacao          NUMBER(2) NOT NULL,
    cd_cliente             NUMBER(6) NOT NULL
)
LOGGING;

COMMENT ON COLUMN t_sgv_chamado.nr_chamado IS
    'Aqui iremos armazenar o número do chamado. Esse número será a chave primaria da tabela e deverá estar cadastrado no padrão InitCap.';

COMMENT ON COLUMN t_sgv_chamado.ds_chamado IS
    'Aqui iremos armazenar a descrição do chamado. Essa informação  deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_chamado.dt_hr_abertura IS
    'Aqui iremos armazenar a hora de abertura do chamado. Essa informação  deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_chamado.dt_hr_atendimento IS
    'Aqui iremos armazenar a hora de atendimento do chamado. Essa informação  deverá estar cadastrado no padrão InitCap e seu conteúdo não será obrigatório.';

COMMENT ON COLUMN t_sgv_chamado.dt_tma_hora IS
    'Aqui iremos armazenar o tempo de atendimento em horas (TMA). Esse nome deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_chamado.ds_ocorrencia IS
    'Aqui iremos armazenar o a descrição da ocorrência. Esse nome deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_chamado.ds_retorno_funcionario IS
    'Aqui iremos armazenar o retorno do funcionário em relação a ocorrência. Esse nome deverá estar cadastrado no padrão InitCap e seu conteúdo não será obrigatório.';

COMMENT ON COLUMN t_sgv_chamado.ds_status_chamado IS
    'Aqui iremos armazenar o a descrição do status. Esse nome deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_chamado.nt_satisfacao IS
    'Aqui iremos armazenar a nota de satisfação. Esse nome deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

ALTER TABLE t_sgv_chamado ADD CONSTRAINT t_sgv_chamado_pk PRIMARY KEY ( nr_chamado,
                                                                        cd_funcionario );

CREATE TABLE t_sgv_cliente (
    cd_cliente  NUMBER(6) NOT NULL,
    nm_cliente  VARCHAR2(80) NOT NULL,
    cd_ddd      NUMBER(3) NOT NULL,
    nr_telefone NUMBER(10) NOT NULL,
    ds_email    VARCHAR2(100) NOT NULL,
    ds_endereco VARCHAR2(200) NOT NULL
)
LOGGING;

COMMENT ON COLUMN t_sgv_cliente.cd_cliente IS
    'Aqui iremos armazenar o código do cliente. Esse código será a chave primaria da tabela e deverá estar cadastrado no padrão InitCap.';

COMMENT ON COLUMN t_sgv_cliente.nm_cliente IS
    'Aqui iremos armazenar o nome do cliente. Esse nome deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_cliente.cd_ddd IS
    'Aqui iremos armazenar código ddd. Esse código deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_cliente.nr_telefone IS
    'Aqui iremos armazenar número do telefone. Esse número deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_cliente.ds_email IS
    'Aqui iremos armazenar o email. Esse email deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_cliente.ds_endereco IS
    'Aqui iremos armazenar o endereçol. Esse endereço  deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

ALTER TABLE t_sgv_cliente ADD CONSTRAINT t_sgv_cliente_pk PRIMARY KEY ( cd_cliente );

CREATE TABLE t_sgv_cliente_pf (
    t_sgv_cliente_cd_cliente NUMBER(6) NOT NULL,
    nr_rg                    NUMBER(10) NOT NULL,
    nr_cpf                   NUMBER(11) NOT NULL,
    ds_sexo                  CHAR(1) NOT NULL,
    dt_nascimento            DATE NOT NULL
)
LOGGING;

COMMENT ON COLUMN t_sgv_cliente_pf.t_sgv_cliente_cd_cliente IS
    'Aqui iremos armazenar o código do cliente. Esse código será a chave primaria da tabela e deverá estar cadastrado no padrão InitCap.';

COMMENT ON COLUMN t_sgv_cliente_pf.nr_rg IS
    'Aqui iremos armazenar número do RG. Esse número deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_cliente_pf.nr_cpf IS
    'Aqui iremos armazenar número do CPF. Esse número deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_cliente_pf.ds_sexo IS
    'Aqui iremos armazenar orientação sexual. Essa informação  deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_cliente_pf.dt_nascimento IS
    'Aqui iremos armazenar a data de nascimento. Essa data  deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

ALTER TABLE t_sgv_cliente_pf ADD CONSTRAINT t_sgv_cliente_pf_pk PRIMARY KEY ( t_sgv_cliente_cd_cliente );

CREATE TABLE t_sgv_cliente_pj (
    t_sgv_cliente_cd_cliente NUMBER(6) NOT NULL,
    ds_razao_social          VARCHAR2(100) NOT NULL,
    nr_cnpj                  NUMBER(25) NOT NULL,
    nr_insc_estadual         NUMBER(15),
    ds_ramo_atividade        VARCHAR2(100) NOT NULL
)
LOGGING;

COMMENT ON COLUMN t_sgv_cliente_pj.t_sgv_cliente_cd_cliente IS
    'Aqui iremos armazenar o código do cliente. Esse código será a chave primaria da tabela e deverá estar cadastrado no padrão InitCap.';

COMMENT ON COLUMN t_sgv_cliente_pj.ds_razao_social IS
    'Aqui iremos armazenar o nome da razão social . Esse nome deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_cliente_pj.nr_cnpj IS
    'Aqui iremos armazenar número do CNPJ. Esse número deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_cliente_pj.nr_insc_estadual IS
    'Aqui iremos armazenar número da inscrição . Esse número deverá estar cadastrado no padrão InitCap e seu conteúdo não será  obrigatório.';

COMMENT ON COLUMN t_sgv_cliente_pj.ds_ramo_atividade IS
    'Aqui iremos armazenar o ramo de atividade . Essa informação  deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.
';

ALTER TABLE t_sgv_cliente_pj ADD CONSTRAINT t_sgv_cliente_pj_pk PRIMARY KEY ( t_sgv_cliente_cd_cliente );

CREATE TABLE t_sgv_funcionario (
    cd_funcionario NUMBER(6) NOT NULL,
    nm_funcionario VARCHAR2(100) NOT NULL,
    dt_nascimento  DATE NOT NULL,
    cd_ddd         NUMBER(3) NOT NULL,
    nr_telefone    NUMBER(10) NOT NULL,
    ds_email       VARCHAR2(100) NOT NULL,
    ds_cargo       VARCHAR2(60) NOT NULL,
    nm_dpto        NUMBER(2) NOT NULL
)
LOGGING;

COMMENT ON COLUMN t_sgv_funcionario.cd_funcionario IS
    'Aqui iremos armazenar o código do funcionário. Esse código será a chave primaria da tabela e deverá estar cadastrado no padrão InitCap.';

COMMENT ON COLUMN t_sgv_funcionario.nm_funcionario IS
    'Aqui iremos armazenar o nome do funcionário. Esse nome deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_funcionario.dt_nascimento IS
    'Aqui iremos armazenar a data de nascimento do funcionário. Esse nome deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_funcionario.cd_ddd IS
    'Aqui iremos armazenar o código ddd do telefone. Esse nome deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_funcionario.nr_telefone IS
    'Aqui iremos armazenar número do telefone. Esse nome deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_funcionario.ds_email IS
    'Aqui iremos armazenar email do funcionário. Esse nome deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_funcionario.ds_cargo IS
    'Aqui iremos armazenar o cargo funcionário. Esse nome deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_funcionario.nm_dpto IS
    'Aqui iremos armazenar o departamento do  funcionário. Esse nome deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

ALTER TABLE t_sgv_funcionario ADD CONSTRAINT t_sgv_funcionario_pk PRIMARY KEY ( cd_funcionario );

CREATE TABLE t_sgv_produto (
    cd_produto          NUMBER(6) NOT NULL,
    cd_categoria        NUMBER(3) NOT NULL,
    nm_produto          VARCHAR2(80) NOT NULL,
    ds_normal_produto   VARCHAR2(100) NOT NULL,
    ds_completa_produto VARCHAR2(2000) NOT NULL,
    cd_barra_ean        NUMBER(6),
    vl_preço_unit       NUMBER(7, 2) NOT NULL,
    ds_status           VARCHAR2(10) NOT NULL
)
LOGGING;

COMMENT ON COLUMN t_sgv_produto.cd_produto IS
    'Aqui iremos armazenar o código do produto. Esse código será a chave primaria da tabela e deverá estar cadastrado no padrão InitCap.';

COMMENT ON COLUMN t_sgv_produto.nm_produto IS
    'Aqui iremos armazenar o nome do produto. Esse nome deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_produto.ds_completa_produto IS
    'Aqui iremos armazenar a descrição completa do produto. Essa informação deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_produto.cd_barra_ean IS
    'Aqui iremos armazenar o código de barra EAN1 . Essa informação deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_produto.vl_preço_unit IS
    'Aqui iremos armazenar o valor do preço unitario . Essa informação deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_produto.ds_status IS
    'Aqui iremos armazenar a descrição do status . Essa informação deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

ALTER TABLE t_sgv_produto ADD CONSTRAINT t_sgv_produto_pk PRIMARY KEY ( cd_produto,
                                                                        cd_categoria );

CREATE TABLE t_sgv_produto_video (
    cd_produto         NUMBER(6) NOT NULL,
    cd_categoria       NUMBER(3) NOT NULL,
    cd_video           NUMBER(6) NOT NULL,
    cd_categoria_video NUMBER(6) NOT NULL,
    cd_cliente         NUMBER(6) NOT NULL
)
LOGGING;

ALTER TABLE t_sgv_produto_video
    ADD CONSTRAINT t_sgv_produto_video_pk PRIMARY KEY ( cd_produto,
                                                        cd_categoria,
                                                        cd_video,
                                                        cd_categoria_video );

CREATE TABLE t_sgv_visualizacao_de_video (
    cd_video            NUMBER(6) NOT NULL,
    cd_cliente          NUMBER(6) NOT NULL,
    cd_categoria_video  NUMBER(6) NOT NULL,
    nm_video            VARCHAR2(100) NOT NULL,
    dt_data_hora_minuto DATE NOT NULL,
    ds_usuario          VARCHAR2(50) NOT NULL,
    ds_status_login     VARCHAR2(10)
)
LOGGING;

COMMENT ON COLUMN t_sgv_visualizacao_de_video.cd_video IS
    'Aqui iremos armazenar o código do video. Esse código será a chave primaria da tabela e deverá estar cadastrado no padrão InitCap.';

COMMENT ON COLUMN t_sgv_visualizacao_de_video.nm_video IS
    'Aqui iremos armazenar nome do video. Essa informação  deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_visualizacao_de_video.dt_data_hora_minuto IS
    'Aqui iremos armazenar a data, hora e minuto. Essa informação  deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_visualizacao_de_video.ds_usuario IS
    'Aqui iremos armazenar o usuário. Essa informação  deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

COMMENT ON COLUMN t_sgv_visualizacao_de_video.ds_status_login IS
    'Aqui iremos armazenar o status login. Essa informação  deverá estar cadastrado no padrão InitCap e seu conteúdo deverá ser obrigatório.';

ALTER TABLE t_sgv_visualizacao_de_video
    ADD CONSTRAINT t_sgv_visualizacao_de_video_pk PRIMARY KEY ( cd_video,
                                                                cd_categoria_video,
                                                                cd_cliente );

ALTER TABLE t_sgv_produto
    ADD CONSTRAINT cd_categoria_fk FOREIGN KEY ( cd_categoria )
        REFERENCES t_sgv_categoria_prod ( cd_categoria )
    NOT DEFERRABLE;

ALTER TABLE t_sgv_visualizacao_de_video
    ADD CONSTRAINT cd_categoria_video_fk FOREIGN KEY ( cd_categoria_video )
        REFERENCES t_sgv_categoria_video ( cd_categoria_video )
    NOT DEFERRABLE;

ALTER TABLE t_sgv_chamado
    ADD CONSTRAINT cd_cliente_fk FOREIGN KEY ( cd_cliente )
        REFERENCES t_sgv_cliente ( cd_cliente )
    NOT DEFERRABLE;

ALTER TABLE t_sgv_cliente_pf
    ADD CONSTRAINT cd_cliente_fkv2 FOREIGN KEY ( t_sgv_cliente_cd_cliente )
        REFERENCES t_sgv_cliente ( cd_cliente )
    NOT DEFERRABLE;

ALTER TABLE t_sgv_chamado
    ADD CONSTRAINT cd_funcionario_fk FOREIGN KEY ( cd_funcionario )
        REFERENCES t_sgv_funcionario ( cd_funcionario )
    NOT DEFERRABLE;

ALTER TABLE t_sgv_produto_video
    ADD CONSTRAINT cd_prod_cd_cat_fk FOREIGN KEY ( cd_produto,
                                                   cd_categoria )
        REFERENCES t_sgv_produto ( cd_produto,
                                   cd_categoria )
    NOT DEFERRABLE;

ALTER TABLE t_sgv_chamado
    ADD CONSTRAINT cd_produto_fk FOREIGN KEY ( cd_produto,
                                               cd_categoria )
        REFERENCES t_sgv_produto ( cd_produto,
                                   cd_categoria )
    NOT DEFERRABLE;

ALTER TABLE t_sgv_produto_video
    ADD CONSTRAINT cd_vid_cd_cat_cd_cli_fk FOREIGN KEY ( cd_video,
                                                         cd_categoria_video,
                                                         cd_cliente )
        REFERENCES t_sgv_visualizacao_de_video ( cd_video,
                                                 cd_categoria_video,
                                                 cd_cliente )
    NOT DEFERRABLE;

ALTER TABLE t_sgv_visualizacao_de_video
    ADD CONSTRAINT t_sgv_vis_de_vid_t_sgv_cli_fk FOREIGN KEY ( cd_cliente )
        REFERENCES t_sgv_cliente ( cd_cliente )
    NOT DEFERRABLE;

CREATE OR REPLACE TRIGGER arc_arc_3_t_sgv_cliente_pf BEFORE
    INSERT OR UPDATE OF t_sgv_cliente_cd_cliente ON t_sgv_cliente_pf
    FOR EACH ROW
DECLARE
    d NUMBER(6);
BEGIN
    SELECT
        a.cd_cliente
    INTO d
    FROM
        t_sgv_cliente a
    WHERE
        a.cd_cliente = :new.t_sgv_cliente_cd_cliente;

    IF ( d IS NULL OR d <> cd_cliente ) THEN
        raise_application_error(
                               -20223,
                               'FK cd_cliente_FKv2 in Table T_SGV_CLIENTE_PF violates Arc constraint on Table T_SGV_CLIENTE - discriminator column cd_cliente doesn''t have value cd_cliente'
        );
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/

CREATE OR REPLACE TRIGGER arc_arc_3_t_sgv_cliente_pj BEFORE
    INSERT OR UPDATE OF t_sgv_cliente_cd_cliente ON t_sgv_cliente_pj
    FOR EACH ROW
DECLARE
    d NUMBER(6);
BEGIN
    SELECT
        a.cd_cliente
    INTO d
    FROM
        t_sgv_cliente a
    WHERE
        a.cd_cliente = :new.t_sgv_cliente_cd_cliente;

    IF ( d IS NULL OR d <> cd_cliente ) THEN
        raise_application_error(
                               -20223,
                               'FK cd_cliente_FKv3 in Table T_SGV_CLIENTE_PJ violates Arc constraint on Table T_SGV_CLIENTE - discriminator column cd_cliente doesn''t have value cd_cliente'
        );
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        NULL;
    WHEN OTHERS THEN
        RAISE;
END;
/



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            10
-- CREATE INDEX                             0
-- ALTER TABLE                             19
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           2
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
