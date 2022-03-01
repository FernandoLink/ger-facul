-- Table: public.aluno_disc

DROP TABLE IF EXISTS public.aluno_disc;

CREATE TABLE IF NOT EXISTS public.aluno_disc
(
    ra integer NOT NULL,
    cod_disciplina integer NOT NULL,
    CONSTRAINT aluno_disc_pkey PRIMARY KEY (ra, cod_disciplina),
    CONSTRAINT fk_ra FOREIGN KEY (ra)
        REFERENCES public.aluno (ra) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_cod_disciplina FOREIGN KEY (cod_disciplina)
        REFERENCES public.disciplina (cod_disciplina) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.aluno_disc
    OWNER to postgres;

COMMENT ON COLUMN public.aluno_disc.ra
    IS 'Código de identificação do aluno.';

COMMENT ON COLUMN public.aluno_disc.cod_disciplina
    IS 'Código de identificação da disciplina.';