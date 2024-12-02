-- Table: public.clienti

-- DROP TABLE IF EXISTS public.clienti;

CREATE TABLE IF NOT EXISTS public.clienti
(
    numero_cliente integer NOT NULL DEFAULT nextval('clienti_numero_cliente_seq'::regclass),
    nome character varying(100) COLLATE pg_catalog."default" NOT NULL,
    cognome character varying(100) COLLATE pg_catalog."default" NOT NULL,
    anno_di_nascita date,
    regione_di_residenza character varying(100) COLLATE pg_catalog."default",
    CONSTRAINT clienti_pkey PRIMARY KEY (numero_cliente)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.clienti
    OWNER to postgres;


    -- Table: public.prodotti

    -- DROP TABLE IF EXISTS public.prodotti;

    CREATE TABLE IF NOT EXISTS public.prodotti
    (
        id_prodotto integer NOT NULL DEFAULT nextval('prodotti_id_prodotto_seq'::regclass),
        descrizione character varying(100) COLLATE pg_catalog."default" NOT NULL,
        in_produzione character varying(100) COLLATE pg_catalog."default",
        in_commercio character varying(100) COLLATE pg_catalog."default",
        data_attivazione date,
        data_disattivazione date,
        CONSTRAINT prodotti_pkey PRIMARY KEY (id_prodotto)
    )

    TABLESPACE pg_default;

    ALTER TABLE IF EXISTS public.prodotti
        OWNER to postgres;

        -- Table: public.fornitori

        -- DROP TABLE IF EXISTS public.fornitori;

        CREATE TABLE IF NOT EXISTS public.fornitori
        (
            numero_fornitore integer NOT NULL DEFAULT nextval('fornitori_numero_fornitore_seq'::regclass),
            denominazione character varying(100) COLLATE pg_catalog."default" NOT NULL,
            regione_residenza character varying(100) COLLATE pg_catalog."default",
            CONSTRAINT fornitori_pkey PRIMARY KEY (numero_fornitore)
        )

        TABLESPACE pg_default;

        ALTER TABLE IF EXISTS public.fornitori
            OWNER to postgres;

            -- Table: public.fatture

            -- DROP TABLE IF EXISTS public.fatture;

            CREATE TABLE IF NOT EXISTS public.fatture
            (
                numero_fattura integer NOT NULL DEFAULT nextval('fatture_numero_fattura_seq'::regclass),
                tipologia character varying(100) COLLATE pg_catalog."default" NOT NULL,
                importo double precision NOT NULL,
                iva double precision NOT NULL,
                id_cliente integer NOT NULL,
                data_fattura date,
                numero_fornitore double precision,
                CONSTRAINT fatture_pkey PRIMARY KEY (numero_fattura)
            )

            TABLESPACE pg_default;

            ALTER TABLE IF EXISTS public.fatture
                OWNER to postgres;


    INSERT INTO public.clienti(nome, cognome, anno_di_nascita, regione_di_residenza) VALUES ( 'Alessio', 'Russo', TO_DATE('14-02-1991', 'DD-MM-YYYY'), 'Emilia-Romagna');
    INSERT INTO public.clienti(nome, cognome, anno_di_nascita, regione_di_residenza) VALUES ( 'Annalisa', 'Ferrari', TO_DATE('10-10-1991', 'DD-MM-YYYY'), 'Emilia-Romagna');


   INSERT INTO public.fatture(tipologia, importo, iva, id_cliente, data_fattura, numero_fornitore)VALUES ('fattura ordinaria', 1900, 20, 1, TO_DATE('10-10-2024', 'DD-MM-YYYY'), 2);
   INSERT INTO public.fatture(tipologia, importo, iva, id_cliente, data_fattura, numero_fornitore)VALUES ('fattura ordinaria', 2000, 20, 2, TO_DATE('10-01-2024', 'DD-MM-YYYY'), 3);
   INSERT INTO public.fatture(tipologia, importo, iva, id_cliente, data_fattura, numero_fornitore)VALUES ('fattura ordinaria', 1900, 20, 3, TO_DATE('11-03-2023', 'DD-MM-YYYY'), 1);


   INSERT INTO public.fornitori( denominazione, regione_residenza)VALUES ('Amazon', 'Puglia');
   INSERT INTO public.fornitori( denominazione, regione_residenza)VALUES ('Giuseppe Russo', 'Basilicata');


 INSERT INTO public.prodotti( descrizione, in_produzione, in_commercio, data_attivazione, data_disattivazione)VALUES ( 'IPhone 13', 'Si', 'si', TO_DATE('01-10-2023', 'DD-MM-YYYY'), TO_DATE('31-10-2025', 'DD-MM-YYYY'));
 INSERT INTO public.prodotti( descrizione, in_produzione, in_commercio, data_attivazione, data_disattivazione)VALUES ( 'Samsung A3', 'Si', 'No', TO_DATE('01-10-2022', 'DD-MM-YYYY'), TO_DATE('31-10-2025', 'DD-MM-YYYY'));
 INSERT INTO public.prodotti( descrizione, in_produzione, in_commercio, data_attivazione, data_disattivazione)VALUES ( 'Xiaomi', 'Si', 'si', TO_DATE('01-01-2022', 'DD-MM-YYYY'), TO_DATE('31-10-2025', 'DD-MM-YYYY'));