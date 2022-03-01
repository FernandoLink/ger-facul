-- Table: public.curso

DROP TABLE IF EXISTS public.curso;

CREATE TABLE IF NOT EXISTS public.curso
(
    cod_curso integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    nome_curso character varying(40) COLLATE pg_catalog."default" NOT NULL,
    cod_departamento integer NOT NULL,
    CONSTRAINT curso_pkey PRIMARY KEY (cod_curso),
    CONSTRAINT fk_cod_departamento FOREIGN KEY (cod_departamento)
        REFERENCES public.departamento (cod_departamento) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.curso
    OWNER to postgres;

COMMENT ON COLUMN public.curso.cod_curso
    IS 'Código de identificação do curso.';
	
COMMENT ON COLUMN public.curso.cod_curso
    IS 'Nome do curso.';	
	
COMMENT ON COLUMN public.curso.cod_curso
    IS 'Código de identificação do departamento.';		