-- Table: public.disc_hist

DROP TABLE IF EXISTS public.disc_hist;

CREATE TABLE IF NOT EXISTS public.disc_hist
(
    cod_historico integer NOT NULL,
    cod_disciplina integer NOT NULL,
    nota real NOT NULL,
    frequencia integer NOT NULL,
    CONSTRAINT disc_hist_pkey PRIMARY KEY (cod_historico),
    CONSTRAINT fk_cod_historico FOREIGN KEY (cod_historico)
        REFERENCES public.historico (cod_historico) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_cod_disciplina FOREIGN KEY (cod_disciplina)
        REFERENCES public.disciplina (cod_disciplina) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.disc_hist
    OWNER to postgres;

COMMENT ON COLUMN public.disc_hist.cod_historico
    IS 'Código de identificação do histórico.';

COMMENT ON COLUMN public.disc_hist.cod_disciplina
    IS 'Código de identificação do aluno.';

COMMENT ON COLUMN public.disc_hist.nota
    IS 'Data de início do curso.';

COMMENT ON COLUMN public.disc_hist.frequencia
    IS 'Data em que o aluno finalizou o curso.';