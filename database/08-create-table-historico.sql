-- Table: public.historico

DROP TABLE IF EXISTS public.historico;

CREATE TABLE IF NOT EXISTS public.historico
(
    cod_historico integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    ra integer NOT NULL,
    data_inicio date NOT NULL,
    data_fim date NULL,
    CONSTRAINT historico_pkey PRIMARY KEY (cod_historico),
    CONSTRAINT fk_ra FOREIGN KEY (ra)
        REFERENCES public.aluno (ra) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.historico
    OWNER to postgres;

COMMENT ON COLUMN public.historico.cod_historico
    IS 'Código de identificação do histórico.';

COMMENT ON COLUMN public.historico.ra
    IS 'Código de identificação do aluno.';

COMMENT ON COLUMN public.historico.data_inicio
    IS 'Data de início do curso.';

COMMENT ON COLUMN public.historico.data_fim
    IS 'Data em que o aluno finalizou o curso.';