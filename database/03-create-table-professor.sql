-- Table: public.professor

DROP TABLE IF EXISTS public.professor;

CREATE TABLE IF NOT EXISTS public.professor
(
    cod_professor integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    nome_professor character varying(20) COLLATE pg_catalog."default" NOT NULL,
    sobrenome_professor character varying(50) COLLATE pg_catalog."default" NOT NULL,
    cod_departamento integer NOT NULL,
    status_professor boolean NOT NULL,
    CONSTRAINT professor_pkey PRIMARY KEY (cod_professor),
    CONSTRAINT fk_cod_departamento FOREIGN KEY (cod_departamento)
        REFERENCES public.departamento (cod_departamento) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.professor
    OWNER to postgres;

COMMENT ON COLUMN public.professor.cod_professor
    IS 'Código de identificação do professor.';

COMMENT ON COLUMN public.professor.nome_professor
    IS 'Nome do professor.';

COMMENT ON COLUMN public.professor.sobrenome_professor
    IS 'Sobrenome do professor.';

COMMENT ON COLUMN public.professor.cod_departamento
    IS 'Código de identificação do departamento.';

COMMENT ON COLUMN public.professor.status_professor
    IS 'Status do professor, lecionando ou não.';