-- Table: public.tipo_telefone

DROP TABLE IF EXISTS public.tipo_telefone;

CREATE TABLE IF NOT EXISTS public.tipo_telefone
(
    cod_tipo_telefone integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    tipo_telefone character varying(8) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT tipo_telefone_pkey PRIMARY KEY (cod_tipo_telefone)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tipo_telefone
    OWNER to postgres;

COMMENT ON COLUMN public.tipo_telefone.cod_tipo_telefone
    IS 'Código de identificação do tipo de telefone.';

COMMENT ON COLUMN public.tipo_telefone.tipo_telefone
    IS 'Nome do tipo de telefone.';