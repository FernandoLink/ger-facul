-- Table: public.aluno

DROP TABLE IF EXISTS public.aluno;

CREATE TABLE IF NOT EXISTS public.aluno
(
    ra integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    nome_aluno character varying(20) COLLATE pg_catalog."default" NOT NULL,
    sobrenome_aluno character varying(20) COLLATE pg_catalog."default" NOT NULL,
    cpf character varying(11) COLLATE pg_catalog."default" NOT NULL,
    status_aluno character varying(1) COLLATE pg_catalog."default" NOT NULL,
    cod_turma integer NOT NULL,
    sexo character varying(1) COLLATE pg_catalog."default" NOT NULL,
    cod_curso integer NOT NULL,
    nome_pai character varying(50) COLLATE pg_catalog."default" NOT NULL,
    nome_mae character varying(50) COLLATE pg_catalog."default" NOT NULL,
    email character varying(50) COLLATE pg_catalog."default" NOT NULL,
    whatsapp character varying(20) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT aluno_pkey PRIMARY KEY (ra),
    CONSTRAINT fk_cod_curso FOREIGN KEY (cod_curso)
        REFERENCES public.curso (cod_curso) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_cod_turma FOREIGN KEY (cod_turma)
        REFERENCES public.turma (cod_turma) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.aluno
    OWNER to postgres;

COMMENT ON COLUMN public.aluno.ra
    IS 'Código de identificação do aluno.';

COMMENT ON COLUMN public.aluno.nome_aluno
    IS 'Nome do aluno.';

COMMENT ON COLUMN public.aluno.sobrenome_aluno
    IS 'Sobrenome do aluno.';

COMMENT ON COLUMN public.aluno.cpf
    IS 'CPF do aluno.';

COMMENT ON COLUMN public.aluno.status_aluno
    IS 'Status da matrícula do aluno.';

COMMENT ON COLUMN public.aluno.cod_turma
    IS 'Código de identificação da turma.';

COMMENT ON COLUMN public.aluno.sexo
    IS 'Sexo do aluno.';

COMMENT ON COLUMN public.aluno.cod_curso
    IS 'Código de identificação do curso.';

COMMENT ON COLUMN public.aluno.nome_pai
    IS 'Nome do pai do aluno.';

COMMENT ON COLUMN public.aluno.nome_mae
    IS 'Nome da mãe do aluno.';

COMMENT ON COLUMN public.aluno.email
    IS 'E-mail do aluno.';

COMMENT ON COLUMN public.aluno.whatsapp
    IS 'Whatsapp do aluno.';