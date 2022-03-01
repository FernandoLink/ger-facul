-- Table: public.prof_disciplina

DROP TABLE IF EXISTS public.prof_disciplina;

CREATE TABLE IF NOT EXISTS public.prof_disciplina
(
    cod_professor integer NOT NULL,
    cod_disciplina integer NOT NULL,
    CONSTRAINT prof_disciplina_pkey PRIMARY KEY (cod_professor, cod_disciplina),
    CONSTRAINT fk_cod_professor FOREIGN KEY (cod_professor)
        REFERENCES public.professor (cod_professor) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_cod_disciplina FOREIGN KEY (cod_disciplina)
        REFERENCES public.disciplina (cod_disciplina) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.prof_disciplina
    OWNER to postgres;

COMMENT ON COLUMN public.prof_disciplina.cod_professor
    IS 'Código de identificação do professor.';

COMMENT ON COLUMN public.prof_disciplina.cod_disciplina
    IS 'Código de identificação da disciplina.';