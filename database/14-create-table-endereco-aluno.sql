-- Table: public.endereco_aluno

DROP TABLE IF EXISTS public.endereco_aluno;

CREATE TABLE IF NOT EXISTS public.endereco_aluno
(
    cod_endereco_aluno integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    ra integer NOT NULL,
    cod_tipo_logradouro integer NOT NULL,
    nome_rua character varying(50) COLLATE pg_catalog."default" NOT NULL,
    num_rua integer NOT NULL,
    complemento character varying(20) COLLATE pg_catalog."default" NOT NULL,
    cep character varying(8) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT endereco_aluno_pkey PRIMARY KEY (cod_endereco_aluno, ra),
    CONSTRAINT fk_ra FOREIGN KEY (ra)
        REFERENCES public.aluno (ra) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_cod_tipo_logradouro FOREIGN KEY (cod_tipo_logradouro)
        REFERENCES public.tipo_logradouro (cod_tipo_logradouro) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.endereco_aluno
    OWNER to postgres;

COMMENT ON COLUMN public.endereco_aluno.cod_endereco_aluno
    IS 'Código de identificação do endereço do aluno.';

COMMENT ON COLUMN public.endereco_aluno.ra
    IS 'Código de identificação do aluno.';

COMMENT ON COLUMN public.endereco_aluno.cod_tipo_logradouro
    IS 'Código do tipo de logradouro.';

COMMENT ON COLUMN public.endereco_aluno.nome_rua
    IS 'Nome da rua.';

COMMENT ON COLUMN public.endereco_aluno.num_rua
    IS 'Número do imóvel.';

COMMENT ON COLUMN public.endereco_aluno.complemento
    IS 'Complemento de endereço do aluno.';

COMMENT ON COLUMN public.endereco_aluno.cep
    IS 'CEP da rua.';
