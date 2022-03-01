-- Table: public.disciplina

DROP TABLE IF EXISTS public.disciplina;

CREATE TABLE IF NOT EXISTS public.disciplina
(
    cod_disciplina integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    cod_disciplina_depende integer NULL,
    nome_disciplina character varying(30) COLLATE pg_catalog."default" NOT NULL,
    cod_departamento integer NOT NULL,
    carga_horaria integer NOT NULL,
    descricao character varying(200) COLLATE pg_catalog."default" NOT NULL,
    num_alunos integer NOT NULL,
    CONSTRAINT disciplina_pkey PRIMARY KEY (cod_disciplina),
    CONSTRAINT fk_cod_departamento FOREIGN KEY (cod_departamento)
        REFERENCES public.departamento (cod_departamento) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,    
    CONSTRAINT fk_cod_disciplina FOREIGN KEY (cod_disciplina_depende)
        REFERENCES public.disciplina (cod_disciplina) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.disciplina
    OWNER to postgres;

COMMENT ON COLUMN public.disciplina.cod_disciplina
    IS 'Código de identificação da disciplina.';

COMMENT ON COLUMN public.disciplina.cod_disciplina_depende
    IS 'Código de identificação da disciplina.';

COMMENT ON COLUMN public.disciplina.nome_disciplina
    IS 'Nome da disciplina.';

COMMENT ON COLUMN public.disciplina.cod_departamento
    IS 'Código do departamento responsável pela disciplina.';

COMMENT ON COLUMN public.disciplina.carga_horaria
    IS 'Carga horária da disciplina.';

COMMENT ON COLUMN public.disciplina.descricao
    IS 'Descrição da disciplina.';

COMMENT ON COLUMN public.disciplina.num_alunos
    IS 'Quantidade de alunos da disciplina';