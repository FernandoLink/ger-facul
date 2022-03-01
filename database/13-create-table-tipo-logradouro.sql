-- Table: public.tipo_logradouro

DROP TABLE IF EXISTS public.tipo_logradouro;

CREATE TABLE IF NOT EXISTS public.tipo_logradouro
(
    cod_tipo_logradouro integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    tipo_logradouro character varying(11) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT tipo_logradouro_pkey PRIMARY KEY (cod_tipo_logradouro)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tipo_logradouro
    OWNER to postgres;

COMMENT ON COLUMN public.tipo_logradouro.cod_tipo_logradouro
    IS 'Código de identificação do tipo de logradouro.';

COMMENT ON COLUMN public.tipo_logradouro.tipo_logradouro
    IS 'Nome do tipo de logradouro.';