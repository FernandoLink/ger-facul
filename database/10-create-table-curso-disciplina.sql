-- Table: public.curso_disciplina

DROP TABLE IF EXISTS public.curso_disciplina;

CREATE TABLE IF NOT EXISTS public.curso_disciplina
(
    cod_curso integer NOT NULL,
    cod_disciplina integer NOT NULL,
    CONSTRAINT curso_disciplina_pkey PRIMARY KEY (cod_curso, cod_disciplina),
    CONSTRAINT fk_cod_curso FOREIGN KEY (cod_curso)
        REFERENCES public.curso (cod_curso) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_cod_disciplina FOREIGN KEY (cod_disciplina)
        REFERENCES public.disciplina (cod_disciplina) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.curso_disciplina
    OWNER to postgres;

COMMENT ON COLUMN public.curso_disciplina.cod_curso
    IS 'Código de identificação do curso.';

COMMENT ON COLUMN public.curso_disciplina.cod_disciplina
    IS 'Código de identificação da disciplina.';