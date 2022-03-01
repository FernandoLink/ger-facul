-- Table: public.turma

DROP TABLE IF EXISTS public.turma;

CREATE TABLE IF NOT EXISTS public.turma
(
    cod_turma integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    cod_curso integer NOT NULL,
    periodo character varying(5) COLLATE pg_catalog."default" NOT NULL,
    num_alunos integer NOT NULL,
    data_inicio date NOT NULL,
    data_fim date NOT NULL,
    CONSTRAINT turma_pkey PRIMARY KEY (cod_turma),
    CONSTRAINT fk_cod_curso FOREIGN KEY (cod_curso)
        REFERENCES public.curso (cod_curso) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.turma
    OWNER to postgres;

COMMENT ON COLUMN public.turma.cod_turma
    IS 'Código de identificação da turma.';

COMMENT ON COLUMN public.turma.cod_curso
    IS 'Código de identificação do curso.';

COMMENT ON COLUMN public.turma.periodo
    IS 'Período da turma (manhã, tarde ou noite).';

COMMENT ON COLUMN public.turma.num_alunos
    IS 'Números de alunos matriculados na turma.';

COMMENT ON COLUMN public.turma.data_inicio
    IS 'Data de início da turma.';

COMMENT ON COLUMN public.turma.data_fim
    IS 'Data de fim da turma.';