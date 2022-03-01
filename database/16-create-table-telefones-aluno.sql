-- Table: public.telefones_aluno

DROP TABLE IF EXISTS public.telefones_aluno;

CREATE TABLE IF NOT EXISTS public.telefones_aluno
(
    cod_telefones_aluno integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    ra integer NOT NULL,
    cod_tipo_telefone integer NOT NULL,
    num_telefone character varying(20) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT telefones_aluno_pkey PRIMARY KEY (cod_telefones_aluno),
    CONSTRAINT fk_ra FOREIGN KEY (ra)
        REFERENCES public.aluno (ra) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_cod_tipo_telefone FOREIGN KEY (cod_tipo_telefone)
        REFERENCES public.tipo_telefone (cod_tipo_telefone) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.telefones_aluno
    OWNER to postgres;

COMMENT ON COLUMN public.telefones_aluno.cod_telefones_aluno
    IS 'Código de identificação do telefone do aluno.';

COMMENT ON COLUMN public.telefones_aluno.ra
    IS 'Código de identificação do aluno.';

COMMENT ON COLUMN public.telefones_aluno.cod_tipo_telefone
    IS 'Código do tipo de telefone.';    

COMMENT ON COLUMN public.telefones_aluno.num_telefone
    IS 'Número do telefone.';        